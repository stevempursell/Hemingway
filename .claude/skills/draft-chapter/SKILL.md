---
name: draft-chapter
description: Phase B. Write the full chapter prose from an author-approved plan, saving a new versioned draft file. Use only after the author has explicitly approved chapters/<ch>/outline.md.
---

# Draft Chapter (Phase B)

**Precondition:** the author approved the plan in chat. Confirm that `outline.md` (or the latest outline) records the approval and any amendments he made. If it doesn't, ask him before drafting.

## Before writing
1. Re-read: the approved outline; `editorial/author-voice-profile.md`; `editorial/narrative-principles.md`; `editorial/editorial-feedback.md`; `editorial/continuity-ledger.md`; and the bible sections for every character on the page.
2. For each scene, privately re-answer the restraint questions: what each character knows, what concerns them, how they relate, what would occupy them, what they'd naturally talk about.

## Writing
- Write **scenes**: let events unfold through action, dialogue, observation, physical detail, and interior thought. Don't write a beat, acknowledge it, and move on.
- Leave room for ordinary life: routine tasks, digressions, jokes that land or don't, misunderstandings, silences.
- POV discipline: third-person limited. Only what the POV character perceives, knows, or plausibly infers. No narrator glimpses of the future.
- Vary sentence and paragraph length by what the moment needs. Check every paragraph ending: is it a reflexive ominous or philosophical button? If so, end on something concrete instead, or just stop.
- No one-line paragraphs used as faked intensity. Use them only when the beat actually needs the isolation.
- Never paste author example lines. See CLAUDE.md §3.

## Mechanics
- Find the next free version number: `ls chapters/<ch>/`. Never overwrite an existing `draft-vN.md`.
- For a chapter over about 3,500 words, draft in scene files: `chapters/<ch>/scenes/vN-s01.md`, `vN-s02.md`, and so on. Save each **as soon as it's written**. Then assemble with `cat` into `draft-vN.md`.
- The draft file holds **only the manuscript text** (chapter heading plus prose). Put all metadata in `draft-vN-notes.md`: date, outline version used, actual word count per scene and total, invented details introduced, deviations from the plan and why, and known weaknesses.
- **Verify before announcing:** the file exists; `tools/wordcount.sh chapters/<ch>/draft-vN.md` returns a count; read the last 15 lines back and confirm the chapter ends where the plan says. If it doesn't, the draft is **incomplete**. Say so, and say where it stops.
- Commit: `draft(<ch>): vN, <wordcount> words`.

Then go straight to `editorial-review`. Phase B isn't finished until the review exists.
