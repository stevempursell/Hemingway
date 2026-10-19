#!/usr/bin/env bash
# Lock an author-approved draft. Refuses to overwrite.
#   Draft tier (first full draft of the book):  tools/approve.sh <ch> <N> draft  -> chapters/<ch>/approved-draft.md
#   Final tier (after end-of-draft revision):    tools/approve.sh <ch> <N>        -> chapters/<ch>/approved.md
set -euo pipefail
ch="$1"; v="$2"; tier="${3:-final}"
src="chapters/$ch/draft-v$v.md"
case "$tier" in
  draft) dst="chapters/$ch/approved-draft.md"; meta="chapters/$ch/approved-draft.meta" ;;
  final) dst="chapters/$ch/approved.md";       meta="chapters/$ch/approved.meta" ;;
  *) echo "ERROR: tier must be 'draft' or omitted (final)" >&2; exit 1 ;;
esac
[ -f "$src" ] || { echo "ERROR: $src does not exist" >&2; exit 1; }
[ -e "$dst" ] && { echo "ERROR: $dst already exists. Approved text is immutable; see CLAUDE.md §6." >&2; exit 1; }
cp "$src" "$dst"
chmod a-w "$dst" 2>/dev/null || true
printf 'tier: %s\napproved_from: draft-v%s.md\napproved_on: %s\n' "$tier" "$v" "$(date +%Y-%m-%d)" > "$meta"
mkdir -p "chapters/$ch/notes"
echo "Locked ($tier) $src -> $dst"
tools/wordcount.sh "$src" "$dst"
