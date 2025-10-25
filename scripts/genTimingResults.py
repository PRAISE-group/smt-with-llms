import os
import csv
import sys

def extract_times_from_file(filepath):
    total_time = None
    z3_time = None
    fuzzer_time = None
    status = "UNKNOWN"

    with open(filepath, 'r', errors='ignore') as f:
        for line in f:
            line = line.strip()
            if line.startswith("Total Time:"):
                try:
                    total_time = float(line.split(":")[1].strip())
                except:
                    pass
            elif line.startswith("Z3 Execution time"):
                try:
                    z3_time = float(line.split()[-1])
                except:
                    pass
            elif line.startswith("fuzzer Execution time"):
                try:
                    fuzzer_time = float(line.split()[-1])
                except:
                    pass
            elif "Program UNSAT" in line:
                status = "UNSAT"

    # Apply defaults if missing
    if total_time is None and z3_time is None and fuzzer_time is None:
        total_time = 600.0
        z3_time = 600.0
        fuzzer_time = 0.0
    else:
        if total_time is None:
            total_time = 0.0
        if z3_time is None:
            z3_time = 0.0
        if fuzzer_time is None:
            fuzzer_time = 0.0

    return (os.path.basename(filepath), total_time, z3_time, fuzzer_time, status)


def main(directory):
    output_file = "execution_times.csv"
    results = []

    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)
        if os.path.isfile(filepath):
            data = extract_times_from_file(filepath)
            results.append(data)

    # Write CSV
    with open(output_file, "w", newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["File", "Total Time", "Z3 Time", "Fuzzer Time", "Status"])
        writer.writerows(results)

    # Aggregate statistics
    total_exec_sum = sum(r[1] for r in results)
    avg_total_time = total_exec_sum / len(results) if results else 0

    avg_z3_time = sum(r[2] for r in results) / len(results) if results else 0
    avg_fuzzer_time = sum(r[3] for r in results) / len(results) if results else 0

    unsat_files = [r for r in results if r[4] == "UNSAT"]
    avg_unsat_total_time = sum(r[1] for r in unsat_files) / len(unsat_files) if unsat_files else 0

    avg_unsat_fuzzer_time = sum(r[3] for r in unsat_files) / len(unsat_files) if unsat_files else 0
    avg_unsat_z3_time = sum(r[2] for r in unsat_files) / len(unsat_files) if unsat_files else 0

    # Print summary
    print(f"Processed {len(results)} files.")
    print(f"Sum of total execution time: {total_exec_sum:.4f} seconds")
    print(f"Average total execution time per file: {avg_total_time:.4f} seconds")
    print(f"Average Z3 time per file: {avg_z3_time:.4f} seconds")
    print(f"Average Fuzzer time per file: {avg_fuzzer_time:.4f} seconds")
    print(f"Average total execution time (UNSAT files only): {avg_unsat_total_time:.4f} seconds")
    print(f"Average z3 execution time (UNSAT files only): {avg_unsat_z3_time:.4f} seconds")
    print(f"Average fuzzer execution time (UNSAT files only): {avg_unsat_fuzzer_time:.4f} seconds")
    print(f"CSV written to: {output_file}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python extract_times.py <directory>")
        sys.exit(1)

    directory = sys.argv[1]
    if not os.path.isdir(directory):
        print(f"Error: '{directory}' is not a valid directory.")
        sys.exit(1)

    main(directory)
