#! /bin/bash

grep -wci 'function' README.md > output/function-keyword-count.txt

grep -o '^#\s.*' README.md | sed 's/#//' > output/unique-headers.txt

grep -o '[0-9]*' README.md | sort -n > output/sorted-numbers.txt

awk '/# FEATURES/,/# GETTING/' README.md | sed 's/# FEATURES//' | sed 's/# GETTING//' | sed 's/STARTED//' > output/features-summary.txt

grep -iw 'Calculator' README.md | sort -r -b -f > output/calculator-lines.txt

cat ~/Oron_linux_git_exam/output/function-keyword-count.txt
cat ~/Oron_linux_git_exam/output/unique-headers.txt
cat ~/Oron_linux_git_exam/output/sorted-numbers.txt
cat ~/Oron_linux_git_exam/output/features-summary.txt
cat ~/Oron_linux_git_exam/output/calculator-lines.txt



