---
name: approve-chapter
description: Phase E. Lock an author-approved draft in one of two tiers. Draft tier (E1, "approve for Draft") writes approved-draft.md and opens the chapter's cumulative notes/ folder of deferred notes. Final tier (E2, after the end-of-draft revision) writes immutable approved.md. Also updates the continuity ledger, canon decisions, and feedback record. Use only when the author explicitly approves a specific draft version and the tier is clear.
---

# Approve Chapter (Phase E)

**Precondition:** the author explicitly approved a **specific version** in chat, and the **tier** is clear. "Approve v5 for Draft" is E1. Final approval is E2, only after the end-of-draft revision. If either the version or the tier is unclear, ask with a guided-Q&A card.

## E1: Draft approval (author ruling 2026-10-18, CM12)
1. Run `tools/approve.sh <ch> <N> draft`. It writes `approved-draft.md` and `approved-draft.meta`, refuses to overwrite, and creates `notes/`.
2. Verify: the file exists, `cmp` against `draft-vN.md` is identical, and the word counts match.
3. If the author supplied notes with the approval, copy them **verbatim** into `notes/<date>-<short-name>.md` (check with `cmp`). Add a row to `notes/README.md`. The index may cross-reference existing rulings, but **must not resolve anything**. **Do not act on these notes.** They wait for the end-of-draft revision.
4. Update `editorial/continuity-ledger.md` with everything the approved-draft text establishes (status `approved-draft`).
5. Record the approval in `editorial/canon-decisions.md`, plus any decisions made during the chapter.
6. Use `record-feedback` for any feedback that came with the approval. Notes filed as deferred stay deferred. Only the author's explicit rulings become standing lessons.
7. Close the resolved items in `editorial/open-decisions.md`.
8. Run `tools/assemble.sh draft` to generate a new first-draft manuscript in `manuscript/`.
9. Update `STATUS.md` (latest draft-approved chapter, next chapter, next action `plan-chapter <next>`). Commit and push.

## E2: Final approval (after the end-of-draft revision)
1. Confirm that every item in the chapter's `notes/README.md` is resolved or explicitly waived by the author.
2. Run `tools/approve.sh <ch> <N>` to write `approved.md`. Verify as in E1.
3. Update the ledger (status `approved-text`), canon decisions, and open decisions. Run `tools/assemble.sh` for a final manuscript.
4. Commit and push.

Do **not** start planning the next chapter in the same turn unless the author asks.
