#!/usr/bin/env bash
# Assemble approved chapters into a NEW versioned manuscript file.
#   tools/assemble.sh draft  -> uses approved-draft.md (first draft of the book)
#   tools/assemble.sh        -> uses approved.md (final)
set -euo pipefail
tier="${1:-final}"
case "$tier" in draft) name=approved-draft.md; label="draft-approved" ;; final) name=approved.md; label="final-approved" ;; *) echo "ERROR: tier" >&2; exit 1 ;; esac
stamp=$(date +%Y%m%d-%H%M%S)
out="manuscript/book1-$label-$stamp.md"
[ -e "$out" ] && { echo "ERROR: $out exists" >&2; exit 1; }
files=()
[ -f "chapters/prologue/$name" ] && files+=("chapters/prologue/$name")
for d in $(ls -d chapters/chapter-* 2>/dev/null | sort); do [ -f "$d/$name" ] && files+=("$d/$name"); done
[ "${#files[@]}" -eq 0 ] && { echo "No $label chapters yet." >&2; exit 1; }
{ echo "# GLUBINA — Book 1: Vodyanoy's Rest"; echo; echo "> Assembled $stamp from $label chapters only."; echo
  for f in "${files[@]}"; do cat "$f"; printf '\n\n'; done; } > "$out"
chmod a-w "$out" 2>/dev/null || true
echo "Wrote $out"; tools/wordcount.sh "${files[@]}"
