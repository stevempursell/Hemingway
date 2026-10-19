---
name: session-start
description: Run at the beginning of every working session on the novel, before any planning, drafting, or review. Restores state from files and reports where things stand.
---

# Session Start

1. Read, in order: `STATUS.md`, `editorial/open-decisions.md`, `editorial/canon-decisions.md`, `editorial/editorial-feedback.md`, and the last entry of `logs/session-log.md`.
2. Run `git status` and `git log --oneline -10`. If the working tree has uncommitted changes you didn't make this session, **stop and report them**. Don't commit, discard, or build on them until the author says what they are.
3. For the chapter named in STATUS as current, list its folder and confirm every file STATUS mentions exists. If anything STATUS claims is missing, say so plainly.
4. If the session will involve drafting or review, also read `editorial/author-voice-profile.md`, `editorial/narrative-principles.md`, `editorial/series-causal-model.md`, and `editorial/continuity-ledger.md`. **Don't act on any chapter's `notes/` folder** during the first-draft pass. Those notes are deferred to the end-of-draft revision (CM12).
5. Report to the author in at most 6 lines: current chapter and phase, what is waiting on him, the next planned action, and any discrepancy found in steps 2–3.

Do not start a new phase until the author has seen this report. If STATUS says something is "awaiting author," it still is until he answers.
