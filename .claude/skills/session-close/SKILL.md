---
name: session-close
description: End-of-session save. Make sure all work is in files and committed, record state, outstanding author decisions, and the next planned action. Use before ending any working session, or when the author says he's stopping.
---

# Session Close

1. Confirm every output from this session is saved: drafts, notes, reviews, outlines, feedback. List them with `git status`.
2. Update `STATUS.md`:
   - current chapter and phase;
   - latest approved chapter;
   - every draft version for the current chapter, with actual word counts;
   - **waiting on author** (the exact questions, or "review of vN");
   - **next planned action** (one sentence, executable by a fresh session).
3. Make sure every question asked this session is in `editorial/open-decisions.md`.
4. Append to `logs/session-log.md`: date, what was done, files created or changed, decisions made, and anything left incomplete (**say so plainly**).
5. Commit: `session: close <date>`. Push only if the author has said to.
6. Tell the author in at most 4 lines: what's saved, what's waiting on him, and what happens next.
