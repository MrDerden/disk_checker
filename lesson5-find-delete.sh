#!/usr/bin/env bash

# if [[ $# -lt 1 ]]; then
#     echo "usage path/to/catalog"
# fi

# dir="$1"
# #cd "$dir"
# echo "dir is: $dir"

find . -type f -name "*.log" -mtime +3

## Zadanie 5 — Find + sprzątanie

# **Cel:** `find`, praca z plikami, bezpieczeństwo.

# Napisz `cleanup.sh`, który:

# - szuka w katalogu (argument) plików `.log`
# - starszych niż 7 dni
# - wypisuje je (tylko lista)

# **Bonus (dopiero jak działa!):**

# - dodaj flagę `-delete`, która je usuwa.