---
name: approve-chapter
description: Phase E. Lock an author-approved draft as immutable approved.md, update the continuity ledger, canon decisions, and feedback record, and prepare for the next chapter. Use only when the author explicitly says a specific draft version is approved.
---

# Approve Chapter (Phase E)

**Precondition:** the author explicitly approved a **specific version** in chat ("approve prologue v3"). If he didn't name the version, ask which one.

1. Run `tools/approve.sh <ch> <N>`. It copies `draft-vN.md` to `approved.md`, refuses if `approved.md` already exists, and makes the file read-only. Don't create `approved.md` any other way.
2. Verify: `approved.md` exists, and its word count matches `draft-vN.md`.
3. Update `editorial/continuity-ledger.md`: everything the chapter establishes that later chapters must respect. Who knows what, physical states, named inventions, timeline position, objects in play. Promote any `proposed` inventions that appear in the approved text to `canon`.
4. Update `editorial/canon-decisions.md` with every decision the author made during this chapter, dated, with its source.
5. Update `editorial/editorial-feedback.md` via `record-feedback`, and mark which lessons were confirmed.
6. Close the resolved items in `editorial/open-decisions.md`.
7. Run `tools/assemble.sh` to generate a new versioned manuscript in `manuscript/`.
8. Update `STATUS.md`: latest approved chapter, next chapter, next action (`plan-chapter <next>`).
9. Commit: `approve(<ch>): v<N> locked as approved`.

Do **not** start planning the next chapter in the same turn unless he asks.
