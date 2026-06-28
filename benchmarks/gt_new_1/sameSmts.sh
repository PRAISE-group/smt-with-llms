#!/bin/bash

DRY_RUN=0   # set to 1 to test without deleting

# ---- freeze file list ----
mapfile -t all_files < <(find . -maxdepth 1 -name "*.smt2" -printf "%f\n")

# ---- extract prefixes ----
mapfile -t prefixes < <(printf "%s\n" "${all_files[@]}" | cut -c1-4 | sort -u)

echo "[+] Found prefixes:"
printf "%s\n" "${prefixes[@]}"
echo "======================================"

for prefix in "${prefixes[@]}"; do

    echo ""
    echo "======================================"
    echo "[+] Processing group: $prefix"

    # build group list
    group=()
    for f in "${all_files[@]}"; do
        [[ "$f" == $prefix* ]] && group+=("$f")
    done

    if [[ ${#group[@]} -lt 2 ]]; then
        echo "[-] Skipping (not enough files)"
        continue
    fi

    # track alive files using simple file check (NO associative arrays)
    for ((i=0; i<${#group[@]}; i++)); do

        f1="${group[$i]}"

        [[ ! -f "$f1" ]] && continue

        for ((j=i+1; j<${#group[@]}; j++)); do

            f2="${group[$j]}"

            [[ ! -f "$f2" ]] && continue

            diff_out=$(diff "$f1" "$f2" || true)

            echo "$diff_out" | grep -q "assert"
            has_assert=$?

            if [[ $has_assert -ne 0 ]]; then
                echo "[DELETE f1] No 'assert' diff:"
                echo "             $f1 <--> $f2"

                if [[ "$DRY_RUN" -eq 0 ]]; then
                    rm -f "$f1"
                    echo "             -> deleted $f1"
                fi

                break
            fi

        done
    done

done

echo ""
echo "[+] DONE"
