---
name: editorial-review
description: Phase C. Independent, critical editorial assessment of a chapter draft against eight criteria, with specific quoted passages and proposed fixes. Use after every draft or revision, before presenting to the author.
---

# Editorial Review (Phase C)

You are now the **editor**, not the writer. Your job is to find what's wrong, not to defend the draft. Reviews that praise the draft and list nothing to fix are useless to the author.

**Independence:** when possible, run the review in a fresh context so the drafting rationale doesn't color it. The author has asked for a separate editorial assessment, so a subagent is appropriate. Pass it only the draft, the approved outline, the beat sheet, `author-voice-profile.md`, `narrative-principles.md`, `editorial-feedback.md`, the continuity ledger, and this skill. Do **not** pass the drafting notes until it has formed its own view. Then reconcile.

**Output:** `chapters/<ch>/editorial-review-vN.md` (N matches the draft version).

## Assess, in this order

For each criterion, give a verdict (Strong / Adequate / Needs work / Failing), then **specific quoted passages** (short quotes plus their location) and a **concrete proposed fix** for each problem.

1. **Character authenticity and dialogue naturalism.** Does each line sound like *this* person, today, knowing only what they know? Flag lines that serve the author's plan rather than the character: thematic statements, foreshadowing chatter, explanations no one would say aloud.
2. **Scene development and pacing.** Real scenes, or an expanded synopsis? Where does it rush? Where does it sag? Is the incidental material alive or filler?
3. **Exposition and premature revelation.** Anything explained that should stay unexplained? Any detail flagged as significant? Any bible knowledge leaking through POV? **Justification creep:** quote every passage that exists to justify a detail (gear, how a character knows something, what an object is for) rather than because the moment needs it. Planned details are permissions, not obligations.
4. **Continuity and canon compliance.** Run `continuity-check`. List every deviation from canon and every new invented detail.
5. **Prose rhythm and readability.** Sentence variety. Paragraph shape. Is it enjoyable line by line? Quote the three weakest sentences and the three strongest.
6. **Scientific and physical plausibility.** Instruments, chemistry, hydrology, caving, bodies in cold water, timing. What would a hydrologist or caver wince at?
7. **Mechanical or AI writing patterns.** Count and quote: reflexive ominous paragraph endings; "not X, but Y" constructions; triplets; "something" vagueness ("something enormous," "something wrong"); stacked adverbs; repeated sentence openings; isolated one-line paragraphs; characters "noticing" for the reader's benefit; similes that explain instead of show. Tally them per 1,000 words.
8. **Completeness against the approved plan and beat sheet.** A table of each required beat → present / partial / missing, with location. Actual word count from `tools/wordcount.sh` versus the target.

## Close with
- **Top 3 problems**, ranked, each with a specific fix.
- **What to protect**: up to 3 things that work and must survive revision. Be specific, not flattering.
- **Does it read like a novel?** One honest paragraph.
- No overall grade. No congratulation.

Commit: `review(<ch>): editorial review vN`.
