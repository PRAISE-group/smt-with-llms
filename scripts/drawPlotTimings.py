import pandas as pd
import matplotlib.pyplot as plt
import argparse
import numpy as np
# plt.rcParams['text.usetex'] = True

def main():
    parser = argparse.ArgumentParser(description="Compare a common field across two CSV files and plot (x,y) scatter.")
    parser.add_argument("csv1", help="Path to first CSV file")
    parser.add_argument("csv2", help="Path to second CSV file")
    parser.add_argument("field", help="Name of the field/column to compare (must exist in both CSVs)")
    parser.add_argument("--bench", default="benchname", help="Name of the benchmark column (default: benchname)")
    args = parser.parse_args()

    # Read both CSV files
    df1 = pd.read_csv(args.csv1)
    df2 = pd.read_csv(args.csv2)

    # Ensure benchmark column exists
    if args.bench not in df1.columns or args.bench not in df2.columns:
        raise ValueError(f"Benchmark column '{args.bench}' not found in one of the files.")

    # Ensure field exists
    if args.field not in df1.columns or args.field not in df2.columns:
        raise ValueError(f"Field '{args.field}' not found in one of the files.")

    # Merge on benchmark name
    merged = pd.merge(df1[[args.bench, args.field]], df2[[args.bench, args.field]],
                      on=args.bench, suffixes=('_file1', '_file2'))

    if merged.empty:
        raise ValueError("No matching benchmark names found between files.")

    # Plot scatter
    limit=24
    # plt.figure(figsize=(6,6))
    plt.scatter(np.ceil(merged[f"{args.field}_file1"]), np.ceil(merged[f"{args.field}_file2"]), color='blue', alpha=0.7)
    plt.xlabel(r"NLUnsat(default)", fontsize=limit)
    plt.ylabel(r"NLUnsat$(\mathcal{L})$", fontsize=limit)
    plt.xticks(fontsize=limit)
    plt.yticks(fontsize=limit)
    # plt.title(f"Comparison of '{args.field}' between two CSV files")
    plt.grid(True)

    plt.xscale("log")
    plt.yscale("log")
    plt.xlim(left=1)
    plt.ylim(bottom=1)

    # Add diagonal y=x line for reference
    min_val = min(merged[f"{args.field}_file1"].min(), merged[f"{args.field}_file2"].min())
    min_val = 1
    max_val = max(merged[f"{args.field}_file1"].max(), merged[f"{args.field}_file2"].max())
    plt.plot([min_val, max_val], [min_val, max_val], color='red', linestyle='--', label='y = x')
    # plt.legend()

    # plt.tight_layout()
    plt.savefig("plot.pdf", format='pdf', bbox_inches='tight')
    # plt.show()

    # Optional: print correlation for insight
    corr = merged[f"{args.field}_file1"].corr(merged[f"{args.field}_file2"])
    print(f"\nCorrelation between '{args.field}' in both files: {corr:.4f}")

if __name__ == "__main__":
    main()
