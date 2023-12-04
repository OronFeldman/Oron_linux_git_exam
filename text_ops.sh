#! /bin/bash

grep -ci 'function' README.md > output/function-keyword-count.txt

grep -o '^#\s.*' README.md | sed 's/#//' > output/unique-headers.txt

grep -o '[0-9]*' README.md | sort -n > output/sorted-numbers.txt

awk '/# FEATURES/,/# GETTING/' README.md | sed 's/# FEATURES//' | sed 's/# GETTING//' | sed 's/STARTED//' > output/features-summary.txt

grep -iw 'Calculator' README.md | sort -r -b -f > output/calculator-lines.txt



