---
name: revise-chapter
description: Revise a chapter draft in response to author feedback (or an agreed editorial-review fix list). Edits the current draft in place for anything short of a major rewrite; a major rewrite gets a new draft number. Never touches superseded versions. Use whenever the author requests revisions to a chapter draft.
---

# Revise Chapter

1. Run `record-feedback` first, so his notes are saved verbatim and classified before you act on them.
2. For anything beyond a one-line fix, write a short revision plan (`chapters/<ch>/revision-plan-<date>.md`): each note → what changes and where. Separate *his* notes from *your* review's suggestions. Apply review suggestions only if he endorsed them or they're clearly mechanical fixes. If a note is ambiguous, ask. Don't guess.
3. **Author lines:** lines he gives can be used (CLAUDE.md §3), under the same editorial judgment as anything else. Choose among alternatives, never stack them, and check what each character knows. Only material he calls an illustration, and the beat-sheet sample lines, stay out.
4. Don't over-apply. Fix what he flagged, plus clear instances of the same problem. Don't rewrite passages he didn't question, and don't flatten what works.
5. **Decide the scale.** *Major rewrite* (scenes restructured or substantially rewritten): copy to `draft-v(N+1).md` and revise there. *Anything smaller:* edit the current `draft-vN.md` (and its scene files) in place. Make one commit per fix (`fix(<ch>): <what>`) and add a dated line to `draft-vN-notes.md` under "In-place edits". Never edit a superseded draft.
5a. **Orphan check.** For every passage you cut or moved, list what it introduced (people, objects, facts, jokes). Find each one's first mention in the new version, and make sure that mention works as an introduction. **Default fix: cut** any callback that now comes before its setup or points at nothing. Add setup only for a required beat, and only the minimum (author, 2026-10-16: "avoid adding lines to justify hanging leftovers").
6. For a new version, write `draft-v(N+1)-notes.md` (what changed, what deliberately didn't, word count before and after). For in-place edits, update the current notes file, including the new word count.
7. Verify (file exists, word count, last lines read back). Then run `editorial-review`: a full review for a new version, a short delta review for in-place edits.
8. Commit: `revise(<ch>): v(N+1) …` for a new version, or `fix(<ch>): <what>` for each in-place edit. Then push.
