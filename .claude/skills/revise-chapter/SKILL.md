---
name: revise-chapter
description: Produce a new draft version in response to author feedback (or an agreed editorial-review fix list), without touching earlier versions. Use whenever the author requests revisions to a chapter draft.
---

# Revise Chapter

1. Run `record-feedback` first, so his notes are saved verbatim and classified before you act on them.
2. Write a short revision plan in `chapters/<ch>/revision-plan-v(N+1).md`: each note → what changes and where. Separate *his* notes from *your* review's suggestions. Apply review suggestions only if he endorsed them or they're clearly mechanical fixes. If a note is ambiguous, ask. Don't guess.
3. **Examples are principles.** If his feedback includes sample lines or scenarios, absorb the principle and write original prose. Use his words verbatim only if he explicitly says to.
4. Don't over-apply. Fix what he flagged, plus clear instances of the same problem. Don't rewrite passages he didn't question, and don't flatten what works.
5. Copy the previous draft to `draft-v(N+1).md` and revise there. **Never edit `draft-vN.md`.**
6. Write `draft-v(N+1)-notes.md`: what changed, what deliberately didn't, word count before and after.
7. Verify (file exists, word count, last lines read back). Then run `editorial-review` on the new version.
8. Commit: `revise(<ch>): v(N+1) per author notes <date>`.
