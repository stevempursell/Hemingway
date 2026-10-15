#!/usr/bin/env bash
# Lock an author-approved draft as chapters/<ch>/approved.md. Refuses to overwrite.
# Usage: tools/approve.sh <chapter-folder> <version-number>    e.g. tools/approve.sh prologue 2
set -euo pipefail
ch="$1"; v="$2"
src="chapters/$ch/draft-v$v.md"; dst="chapters/$ch/approved.md"
[ -f "$src" ] || { echo "ERROR: $src does not exist" >&2; exit 1; }
[ -e "$dst" ] && { echo "ERROR: $dst already exists. Approved text is immutable; see CLAUDE.md §6." >&2; exit 1; }
cp "$src" "$dst"
chmod a-w "$dst" 2>/dev/null || true
printf 'approved_from: draft-v%s.md\napproved_on: %s\n' "$v" "$(date +%Y-%m-%d)" > "chapters/$ch/approved.meta"
echo "Locked $src -> $dst"
tools/wordcount.sh "$src" "$dst"
