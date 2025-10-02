import os
import csv

def parse_file(filepath):
    category = None
    z3_time = None
    fuzzer_time = None

    with open(filepath, "r") as f:
        lines = f.readlines()

    # Case 1: contains ",sat"
    for line in lines:
        if ",sat" in line:
            category = "SAT"
            parts = line.strip().split(",")
            if len(parts) >= 2:
                try:
                    z3_time = float(parts[1])  # assuming second field is time
                except ValueError:
                    z3_time = None
            fuzzer_time = 0.0  # if not explicitly given
            return category, z3_time, fuzzer_time

    # Case 2: contains "Program SAT"
    for i, line in enumerate(lines):
        if "Program SAT" in line:
            category = "SAT"
            if i + 2 < len(lines):
                try:
                    z3_time = float(lines[i+1].split()[-1])
                    fuzzer_time = float(lines[i+2].split()[-1])
                except Exception:
                    pass
            return category, z3_time, fuzzer_time

    # Case 3: contains "Program UNSAT"
    for i, line in enumerate(lines):
        if "Program UNSAT" in line:
            category = "UNSAT"
            if i + 2 < len(lines):
                try:
                    z3_time = float(lines[i+1].split()[-1])
                    fuzzer_time = float(lines[i+2].split()[-1])
                except Exception:
                    pass
            return category, z3_time, fuzzer_time

    # If nothing matched
    return "UNKNOWN", None, None


def process_directory(input_dir, output_csv):
    results = []

    for root, _, files in os.walk(input_dir):
        for fname in files:
            filepath = os.path.join(root, fname)
            category, z3_time, fuzzer_time = parse_file(filepath)
            results.append([fname, category, z3_time, fuzzer_time])

    # Write to CSV
    with open(output_csv, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["filename", "category", "z3_time", "fuzzer_time"])
        writer.writerows(results)

    print(f"Statistics written to {output_csv}")


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Classify benchmark files and extract timings.")
    parser.add_argument("directory", help="Input directory containing files")
    parser.add_argument("output_csv", help="Output CSV file")
    args = parser.parse_args()

    process_directory(args.directory, args.output_csv)
