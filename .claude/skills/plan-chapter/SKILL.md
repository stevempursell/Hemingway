---
name: plan-chapter
description: Phase A. Prepare a chapter plan (beats, POV, scenes, character knowledge states, pacing, word budget, open questions) for author approval before any prose is written. Use when starting any chapter or prologue.
---

# Plan Chapter (Phase A)

**Output:** `chapters/<ch>/outline.md`. If an outline already exists, write `outline-v2.md` (and so on). Never overwrite.
**Gate:** stop after presenting the plan. **No prose until the author approves it.**

## Read first
- The chapter's beats: `source/beat-sheets/` (and the bible §III and §VI rows for this chapter).
- Every bible section on the characters, places, and terms that appear.
- `editorial/continuity-ledger.md` (what previous approved chapters established).
- `editorial/canon-decisions.md`, `editorial/open-decisions.md`, `editorial/editorial-feedback.md`.
- `editorial/author-voice-profile.md`.

## The plan contains

1. **Header.** Chapter, title, POV, timeline position (date or season, time since previous chapter), status: `AWAITING AUTHOR APPROVAL`.
2. **Required beats.** Every event the beat sheet requires, quoted or closely paraphrased, each with its source file. Mark which are *must-happen events* and which are *tone or purpose guidance*.
3. **Character knowledge and concerns.** One block per character in the chapter: what they know right now, what they don't know (especially what the reader will later learn), what's on their mind today that has nothing to do with the plot, and how they relate to everyone else present. This is the narrative-restraint check. Do it honestly.
4. **What this chapter should *not* reveal or explain.** Bible facts that must stay offstage or unspoken here.
5. **Proposed scenes.** For each scene: location, time, who's present, what happens, the dramatic question, the texture (incidental activity, humor, friction), how it hands off to the next scene, and a **word budget**. Say how invented incidental material serves character or atmosphere. Don't add plot.
6. **Pacing.** Where the chapter accelerates and where it breathes. Total word target, with the reasoning: does each beat carry enough dramatic material for its share?
7. **Invented details proposed.** Named minor people, places, or objects you plan to introduce. These need the author's OK before they become canon.
8. **Plausibility notes.** Science, physical, or procedural points that need care, and how you plan to handle them.
9. **Open questions for the author.** Numbered and specific, each with a recommended default. Copy each into `editorial/open-decisions.md`. **Ask them through guided Q&A** (AskUserQuestion, up to 4 per card, recommended option first), not as a prose list. Record his answers in the outline and the decision files as they come in. Make the last card the plan-approval question.

## Rules
- Plan dramatized scenes, not a beat checklist.
- Don't plan foreshadowing that relies on characters noticing or discussing the significance of things.
- If the source material is too thin to plan responsibly, say what's missing. Don't fill the gap with invented canon.
- Update `STATUS.md` (phase: A, awaiting approval) and commit: `plan(<ch>): outline vN for author approval`.
