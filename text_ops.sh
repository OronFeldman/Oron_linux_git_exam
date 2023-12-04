#! /bin/bash

grep -ci 'function' README.md > output/function-keyword-count.txt

grep -o '^#\s.*' README.md | sed 's/#//' > output/unique-headers.txt



