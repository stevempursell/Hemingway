#!/usr/bin/env bash
# Assemble all approved chapters (prologue, chapter-01..NN) into a NEW versioned manuscript file.
set -euo pipefail
stamp=$(date +%Y%m%d-%H%M%S)
out="manuscript/book1-approved-$stamp.md"
[ -e "$out" ] && { echo "ERROR: $out exists" >&2; exit 1; }
files=()
[ -f chapters/prologue/approved.md ] && files+=(chapters/prologue/approved.md)
for d in $(ls -d chapters/chapter-* 2>/dev/null | sort); do [ -f "$d/approved.md" ] && files+=("$d/approved.md"); done
[ "${#files[@]}" -eq 0 ] && { echo "No approved chapters yet." >&2; exit 1; }
{ echo "# GLUBINA — Book 1: Vodyanoy's Rest"; echo; echo "> Assembled $stamp from approved chapters only."; echo
  for f in "${files[@]}"; do cat "$f"; printf '\n\n'; done; } > "$out"
chmod a-w "$out" 2>/dev/null || true
echo "Wrote $out"; tools/wordcount.sh "${files[@]}"
