import os
import csv
import re
import sys

def analyze_file(filepath):
    """
    Analyze a single file for:
    - Number of distinct lines between 'Lemmas used' and '[time] Calling Z3 check()'
    - Count of 'Cex found: <text>'
    - Count of 'Lemma verified'
    - If 'Program UNSAT' exists: find last occurrence of 'UnsatCore: [...]' and count entries
    """
    distinct_lines_set = set()
    cex_count = 0
    lemma_verified_count = 0
    unsat_core_count = 0

    # with open(filepath, 'r', errors='ignore') as f:
    #     lines = f.readlines()
    with open(filepath, "r") as f:
        text = f.read()  # read full content

    # Split based on the marker
    parts = text.split("Starting script iteration")

    # Get the last part (after the final occurrence)
    last_part = parts[-1]
    num_splits = len(parts) - 1

    # Split into lines
    lines = last_part.strip().splitlines()

    in_block = False
    block_lines = []

    for i, line in enumerate(lines):
        line = line.strip()

        # Detect block between 'Lemmas used' and next 'Calling Z3 check()'
        if "Lemmas used" in line:
            in_block = True
            block_lines = []
            continue

        if in_block:
            if re.search(r"\[\d{2}:\d{2}:\d{2}\] Calling Z3 check\(\)", line):
                # End of block
                for l in block_lines:
                    if "No lemmas found for iteration" not in l:
                        distinct_lines_set.add(l)
                in_block = False
            else:
                if line:
                    block_lines.append(line)

        # Count 'Cex found: <text>'
        if "Cex found:" in line:
            cex_count += 1

        # Count 'Lemma verified'
        if "Lemma verified" in line:
            lemma_verified_count += 1

    # Handle UNSAT related info
    if any("Program UNSAT" in l for l in lines):
        # Find last occurrence of 'UnsatCore: [...]'
        unsat_lines = [l.strip() for l in lines if l.strip().startswith("UnsatCore:")]
        if unsat_lines:
            last_unsat = unsat_lines[-1]
            # Extract entries inside brackets
            match = re.search(r"\[(.*?)\]", last_unsat)
            if match:
                entries = match.group(1)
                if entries.strip():
                    unsat_core_count = len([e.strip() for e in entries.split(",")])
                else:
                    unsat_core_count = 0
    with open("Lemmas.txt", "a+") as f:
        f.write(f"\n\n\n\n{filepath}\n")
        for item in distinct_lines_set:
            if "No lemmas found for iteration" not in item:
                f.write(f"{item}\n")
    return {
        "File": os.path.basename(filepath),
        "Distinct Lines": len(distinct_lines_set),
        "Cex Count": cex_count,
        "Lemma Verified Count": lemma_verified_count,
        "UnsatCore Count": unsat_core_count
    }


def main(directory):
    output_file = "lemma_analysis.csv"
    results = []

    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)
        if os.path.isfile(filepath):
            result = analyze_file(filepath)
            results.append(result)

    # Write CSV
    with open(output_file, "w", newline='') as csvfile:
        fieldnames = ["File", "Distinct Lines", "Cex Count", "Lemma Verified Count", "UnsatCore Count"]
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for r in results:
            writer.writerow(r)

        # Write totals
        totals = {
            "File": "TOTAL",
            "Distinct Lines": sum(r["Distinct Lines"] for r in results),
            "Cex Count": sum(r["Cex Count"] for r in results),
            "Lemma Verified Count": sum(r["Lemma Verified Count"] for r in results),
            "UnsatCore Count": sum(r["UnsatCore Count"] for r in results)
        }
        writer.writerow(totals)

    print(f"Processed {len(results)} files.")
    print(f"CSV written to: {output_file}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python analyze_lemmas.py <directory>")
        sys.exit(1)

    directory = sys.argv[1]
    if not os.path.isdir(directory):
        print(f"Error: '{directory}' is not a valid directory.")
        sys.exit(1)

    main(directory)
