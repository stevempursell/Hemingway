#!/usr/bin/env bash
# Prose word count for manuscript files. Excludes markdown headings, horizontal rules, and blockquote notes.
# Usage: tools/wordcount.sh FILE [FILE...]
set -euo pipefail
total=0
for f in "$@"; do
  [ -f "$f" ] || { echo "MISSING: $f" >&2; exit 1; }
  n=$(grep -v -E '^\s*(#|>|---\s*$|\*\*\*\s*$)' "$f" | wc -w | tr -d ' ')
  printf '%7d  %s\n' "$n" "$f"
  total=$((total + n))
done
[ "$#" -gt 1 ] && printf '%7d  TOTAL\n' "$total"
exit 0
