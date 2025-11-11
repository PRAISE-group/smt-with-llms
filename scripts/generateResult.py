import os
import csv

def parse_file(filepath):
    category = None
    z3_time = None
    fuzzer_time = None

    # with open(filepath, "r") as f:
    #     lines = f.readlines()
    with open(filepath, "r") as f:
        text = f.read()  # read full content

    # Split based on the marker
    partitions = text.split("Starting script iteration")

    # Get the last part (after the final occurrence)
    last_part = partitions[-1]
    num_splits = len(partitions) - 1

    # Split into lines
    lines = last_part.strip().splitlines()

    # Case 1: contains ",sat"

    # Case 2: contains "Program SAT"
    for i, line in enumerate(lines):
        if "Program SAT" in line:
            category = "SAT"
            if i + 2 < len(lines):
                try:
                    z3_time = float(lines[i+1].split()[3])
                    fuzzer_time = float(lines[i+2].split()[3])
                except Exception:
                    pass
            return category, z3_time, fuzzer_time, num_splits

    # Case 3: contains "Program UNSAT"
    for i, line in enumerate(lines):
        if "Program UNSAT" in line:
            category = "UNSAT"
            if i + 2 < len(lines):
                try:
                    z3_time = float(lines[i+1].split()[3])
                    fuzzer_time = float(lines[i+2].split()[3])
                except Exception:
                    pass
            return category, z3_time, fuzzer_time, num_splits

    # If nothing matched
    return "UNKNOWN", None, None, num_splits


def process_directory(input_dir, output_csv):
    results = []

    for root, _, files in os.walk(input_dir):
        # Filter out non-.json files if needed
        files = [f for f in files if f.endswith(".json")]

        # Sort files numerically based on prefix before underscore
        files.sort(key=lambda f: int(f.split('_')[0]) if f.split('_')[0].isdigit() else float('inf'))

        for fname in files:
            filepath = os.path.join(root, fname)
            category, z3_time, fuzzer_time, num_splits = parse_file(filepath)
            results.append([fname, category, z3_time, fuzzer_time, num_splits])

    # Write to CSV
    with open(output_csv, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["filename", "category", "z3_time", "fuzzer_time", "num_iterations"])
        writer.writerows(results)

    print(f"✅ Statistics written to {output_csv} (sorted numerically by filename prefix)")


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Classify benchmark files and extract timings.")
    parser.add_argument("directory", help="Input directory containing files")
    parser.add_argument("output_csv", help="Output CSV file")
    args = parser.parse_args()

    process_directory(args.directory, args.output_csv)
