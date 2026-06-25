from itertools import count
import os
import csv
import sys
import re 

def extract_times_from_file(filepath):
    total_time = None
    z3_time = None
    fuzzer_time = None
    LLM_time = 0
    status = "UNKNOWN"
    first_LLM_time = 0

    

    with open(filepath, "r") as f:
        text = f.read()  # read full content

    # Split based on the marker
    parts = text.split("Starting script iteration")

    # Get the last part (after the final occurrence)
    last_part = parts[-1]
    num_splits = len(parts) - 1
    # print(last_part)
    # exit()
    # Split into lines
    lines = last_part.strip().splitlines()
    counter = 0

    for line in lines:
        line = line.strip()
        # print(line)
        match = re.search(r"Ending LLM run, took ([0-9]*\.?[0-9]+)s", line)

        if match:
            time_taken = float(match.group(1))
            LLM_time+=time_taken
            # if counter < 5:
            #     first_LLM_time+=time_taken
            # counter+=1
        elif line.startswith("Total Execution time except LLM"):
            try:
                total_time = float(line[31:].split()[0].strip())
                # print(line)
            except:
                pass
        elif line.startswith("Z3 Execution time"):
            try:
                z3_time = float(line[17:].split()[0].strip())
                # print(line)
            except:
                pass
        elif line.startswith("fuzzer Execution time"):
            try:
                fuzzer_time = float(line[21:].split()[0].strip())
                # print(line)
            except:
                pass
        elif "Program UNSAT" in line:
            status = "UNSAT"
    # exit()
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
    if total_time+first_LLM_time>600:
        total_time = 600
    else:
        total_time = total_time+first_LLM_time
    # print(counter)

    return (os.path.basename(filepath), total_time, z3_time, fuzzer_time, LLM_time, status)


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
        writer.writerow(["File", "Total Time", "Z3 Time", "Fuzzer Time", "LLM Time", "Status"])
        writer.writerows(results)

    # Aggregate statistics
    total_exec_sum = sum(r[1] for r in results)
    avg_total_time = total_exec_sum / len(results) if results else 0

    avg_z3_time = sum(r[2] for r in results) / len(results) if results else 0
    avg_fuzzer_time = sum(r[3] for r in results) / len(results) if results else 0
    avg_llm_time = sum(r[4] for r in results) / len(results) if results else 0

    unsat_files = [r for r in results if r[5] == "UNSAT"]
    avg_unsat_total_time = sum(r[1] for r in unsat_files) / len(unsat_files) if unsat_files else 0

    avg_unsat_fuzzer_time = sum(r[3] for r in unsat_files) / len(unsat_files) if unsat_files else 0
    avg_unsat_z3_time = sum(r[2] for r in unsat_files) / len(unsat_files) if unsat_files else 0
    avg_unsat_llm_time = sum(r[4] for r in unsat_files) / len(unsat_files) if unsat_files else 0

    # Print summary
    print(f"Processed {len(results)} files.")
    print(f"Sum of total execution time: {total_exec_sum:.4f} seconds")
    print(f"Average total execution time per file: {avg_total_time:.4f} seconds")
    print(f"Average Z3 time per file: {avg_z3_time:.4f} seconds")
    print(f"Average Fuzzer time per file: {avg_fuzzer_time:.4f} seconds")
    print(f"Average LLM time per file: {avg_llm_time:.4f} seconds")
    print(f"Average total execution time (UNSAT files only): {avg_unsat_total_time:.4f} seconds")
    print(f"Average z3 execution time (UNSAT files only): {avg_unsat_z3_time:.4f} seconds")
    print(f"Average fuzzer execution time (UNSAT files only): {avg_unsat_fuzzer_time:.4f} seconds")
    print(f"Average LLM time (UNSAT files only): {avg_unsat_llm_time:.4f} seconds")
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
