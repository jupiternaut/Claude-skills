---
name: decision
description: >
  Multi-round adversarial dialectic + first-principles analytical engine.
  A two-stage cognitive pipeline: Stage 1 uses Red/Blue/Reflection rounds
  to expose hidden assumptions in any decision, topic, or project;
  Stage 2 feeds the distilled contradictions into a rigorous analytical
  engine for decomposition, variable extraction, and scenario branching.
  Trigger when: user asks to "analyze", "stress-test", "evaluate", or
  "pressure-test" a decision, strategy, technology choice, business plan,
  or any complex topic with genuine uncertainty. Also trigger for
  "what are the risks of X", "should we do X", "is X viable",
  "devil's advocate on X", or "对抗分析", "压力测试", "红蓝对抗".
  Do NOT trigger for simple factual queries, casual chat, or tasks
  where the answer is well-established and uncontested.
  Distinguish from requirement-refiner: that skill completes vague
  requirements; this skill stress-tests decisions that seem complete
  but may harbor unexamined assumptions.
---

# Adversarial → Analytical Engine

## Core Philosophy

> **Multi-agent adversarial reasoning is not performative role-play.
> It is a thinking tool.**
>
> Each round's Reflection Layer forces the previous round's conclusions
> to expose their hidden premises. That newly exposed premise becomes
> the next round's adversarial input. Three rounds of this recursive
> process produce insights that no single perspective can derive alone.

> **The Reflection Layer is the engine, not the personas.**
> Red and Blue are fuel — they generate raw argumentation material.
> But the actual cognitive work happens in the Reflection Layer,
> which does one and only one thing: find the unexamined assumption
> that both sides share but neither has tested.

> **Stage 2 is not a repeat of Stage 1.**
> Stage 1 is divergent — it expands the space of considerations.
> Stage 2 is convergent — it takes the distilled key variables and
> subjects them to first-principles decomposition, seeking verifiable
> ground truth. The two stages have different cognitive modes and
> must not bleed into each other.

---

## Output Protocol: Full Process Visibility

> **The user must see the entire reasoning chain, not just the conclusion.**
>
> Trust comes from watching the argument unfold — seeing Red build its case,
> seeing Blue tear it apart from independent premises, and seeing the
> Reflection Layer find the hidden premise that neither side examined.
> If the user only sees the Final Verdict, they have no basis to evaluate
> whether the analysis was rigorous or whether the model took shortcuts.
>
> A conclusion without its derivation is an assertion. An assertion from
> an LLM is worthless. The derivation IS the product.

**Mandatory display rules:**

1. **Every Red Team argument must be shown in full** — the argument itself,
   the explicit assumption it rests on, and the reasoning connecting them.
   Not bullet-point summaries. The user needs to see the logic chain to
   judge whether the assumption is realistic.
2. **Every Blue Team argument must be shown in full** — the argument,
   the failure trigger, and the causal mechanism explaining WHY that
   trigger causes failure. "It might fail" is not an argument.
   "When X happens, Y breaks because Z" is.
3. **Every Reflection Layer must be shown in full** — this is the most
   important part to display. The Reflection Layer's value is in its
   specific identification of the hidden premise. Show the reasoning:
   what did Red assume? What did Blue assume? What do they BOTH assume
   that neither tested? What is the redefined question?
4. **The handoff between rounds must be explicit.** After each Reflection
   Layer, state clearly: "The hidden premise exposed above becomes
   Round N+1's input: [premise]." The user must be able to trace
   the logical chain from Round 1 → 2 → 3.
5. **Stage 2 decomposition must show its work.** Every evidence strength
   tag (🟢🟡🔴) must be justified in one sentence. Every scenario branch
   must show the causal chain from trigger to outcome, not just the
   trigger and outcome.
6. **Never collapse rounds.** Do not write "After three rounds of analysis,
   the key finding is…" — that hides the process. Each round is
   displayed separately with its full Red → Blue → Reflection structure.

See the worked example appended at the end of this file.

Why full visibility matters: the user's ability to challenge, correct,
and refine the analysis depends entirely on seeing HOW each conclusion
was reached. An opaque pipeline that outputs confident conclusions is
worse than no analysis at all — it creates false confidence instead of
real understanding.

---

## Workflow Overview

```
User Input → Pre-check → STAGE 1 (3 rounds) → Cognitive Reset → STAGE 2 → Verdict

STAGE 1: Round 1 (Definition) → Round 2 (Mechanism) → Round 3 (Decision)
  Each round: Red → Blue → Reflection Layer
  Reflection output → next round's input (ONLY pathway between rounds)

COGNITIVE RESET: Stage 2 receives ONLY key variables + conditional findings
  NOT raw Red/Blue argumentation text

STAGE 2: Decompose → Tag evidence → Extract variables → Branch scenarios → Visualize
```

**Critical constraint**: Information flows between rounds ONLY through
the Reflection Layer. Red and Blue do not reference each other or
previous rounds directly. They receive the Reflection Layer's distilled
"exposed hidden premise" as their new starting point.

---

## Pre-check

Before entering the pipeline, assess whether adversarial analysis
adds value. Not every question benefits from this framework.

```
User input
│
├─ Well-established fact / simple query
│  → Answer directly. Do not run pipeline.
│    (e.g., "What is the CAP theorem?")
│
├─ Clear decision with genuine uncertainty
│  → Run full pipeline.
│    (e.g., "Should we migrate to microservices?")
│
├─ Vague topic, unclear what to stress-test
│  → Ask one clarifying question: "What specific
│    decision or claim do you want me to pressure-test?"
│
└─ Topic is complex but user only wants quick take
   → Offer: "I can do a quick assessment or a full
     adversarial analysis. Which do you prefer?"
```

---

# ═══════════════════════════════════════════
# STAGE 1: ADVERSARIAL DIALECTIC (3 Rounds)
# ═══════════════════════════════════════════

## Round 1: Definition Layer

> **Goal**: Demolish the surface-level question and find
> the real question hiding underneath.

### Red Team (Advocate)

- **Stance**: Build the strongest possible case FOR the proposition.
- **Thinking directive**:
  - Find the best-case scenario, the exponential upside, the hidden opportunity.
  - Assume competent execution, favorable timing, supportive environment.
  - Identify the enabling conditions that make success possible.
- **Output rule**: Each argument must carry one **explicit assumption**
  (e.g., "This works IF market growth exceeds 15% annually").
  The assumption is the argument's load-bearing column — remove it and
  the argument collapses. Making it explicit is the whole point.

### Blue Team (Adversary)

- **Stance**: Build the strongest possible case AGAINST the proposition.
- **Thinking directive**:
  - Find fatal flaws, hidden costs, perverse incentives, black swans.
  - Assume Murphy's Law. What breaks first? What cascades?
  - Identify specific failure modes, not vague "risks."
- **Isolation rule**: Do NOT use bridging language ("on the other hand",
  "while Red has a point"). In Blue's world, Red does not exist.
  Blue derives conclusions from its own first principles.
- **Output rule**: Each argument must carry one **failure trigger**
  (e.g., "This fails WHEN regulatory approval takes >18 months").

### Reflection Layer (Round 1)

- **You are not a judge. You do not pick a winner.**
- **Your one job**: Find the hidden premise that BOTH Red and Blue share
  but neither has examined. This is usually more interesting than
  either side's arguments.
- **Checklist**:
  1. Are Red and Blue actually debating the same question, or are they
     talking past each other about different scenarios?
  2. What evaluation criteria are they implicitly using?
     (Red may be optimizing for growth; Blue for survival.)
  3. Is there a structural assumption — about the market, the technology,
     the institution — that both sides take for granted?
  4. What would an Engineer say? (Physics, resource limits, institutional
     constraints, information asymmetry — hard reality that neither
     optimists nor pessimists can wish away.)
- **Output**:
  - The **redefined question** (more precise than the user's original).
  - 1-2 **exposed hidden premises** that become Round 2's input.

---

## Round 2: Mechanism Layer

> **Input**: The hidden premises exposed by Round 1's Reflection Layer.
> **Goal**: Stress-test those premises. Find the key variables
> that determine which side of the argument holds.

### Red Team (Robustness Argument)

- **Stance**: Even if the hidden premises from Round 1 don't fully hold,
  the proposition remains viable. Argue for resilience and fallback paths.
- **Thinking directive**:
  - Find graceful degradation: if the ideal path breaks, what's Plan B?
  - Quantify: is the failure mode a 100% loss or a 30% setback?
  - Find threshold effects working in your favor (network effects,
    learning curves, economies of scale).

### Blue Team (Fragility Argument)

- **Stance**: Once the hidden premises crack, the proposition doesn't
  degrade gradually — it collapses. Argue for brittleness and cascading failure.
- **Thinking directive**:
  - Find cliff effects: where does performance drop non-linearly?
  - Find cascade chains: one broken link → systemic failure.
  - Find irreversibility: at what point can you no longer course-correct?

### Reflection Layer (Round 2)

- **Extract key variables**: From the Red/Blue clash, distill 1-3 variables
  that determine which side is right.
- **Output format** (for each variable):

  ```
  Key Variable: [name]
  Red claims: [viable when variable is in range X]
  Blue claims: [collapses when variable crosses threshold Y]
  Dispute type: Factual / Assumption / Values
  Verification method: [how to determine the actual value]
  ```

- **Extra task**: Is there a third path that neither Red nor Blue sees?
  Not "both are right" (that's a cop-out), but a genuinely different
  framing that dissolves the apparent contradiction.
- **Output**: Key variables + 1-2 newly exposed hidden premises for Round 3.

---

## Round 3: Decision Layer

> **Input**: Key variables and hidden premises from Round 2's Reflection.
> **Goal**: Convert analysis into actionable, conditional recommendations.

### Red Team (Commit Argument)

- **Stance**: The expected value of acting exceeds the expected value of waiting.
  Argue for commitment, investment, and path-taking.
- **Thinking directive**:
  - ROI analysis: resource investment vs. capability gained.
  - Opportunity cost: what do you lose by NOT acting?
  - Timing: is there a first-mover advantage or a closing window?
  - Risk mitigation: what can you do to reduce downside while preserving upside?

### Blue Team (Alternatives Argument)

- **Stance**: The same resources deployed differently yield better
  risk-adjusted returns. Argue for alternative paths or strategic patience.
- **Thinking directive**:
  - Identify concrete alternatives, not just "don't do it."
  - Compare: same resources → alternative path → what outcome?
  - Reversibility: which path preserves more future options?

### Reflection Layer (Round 3)

- **Synthesize across all three rounds**:
  1. Which disagreements are resolvable by gathering more data?
  2. Which are fundamentally value judgments the decision-maker must own?
  3. What is the decision-maker's implicit framework? (Risk-seeking?
     Survival-first? Growth-optimizing? Optionality-maximizing?)
- **Critical rule for value judgments**: If a disagreement is a value conflict,
  do NOT produce a reconciling conclusion ("balance both", "both matter", etc.).
  That is a refusal to analyze, not an analysis.
  The correct output format:
  > "This is a values conflict between [X] and [Y]. Data cannot resolve it.
  > If [X] is the priority → [path A and its trade-offs].
  > If [Y] is the priority → [path B and its trade-offs].
  > The decision-maker must choose."
- **Output**: Classified disagreements (data-resolvable vs. value judgments) + conditional conclusion skeleton.

---

# ═══════════════════════════════════════════
# COGNITIVE RESET BARRIER
# ═══════════════════════════════════════════

> ⚠️ **From this point forward, you are a dispassionate analytical engine.**
> The raw Red/Blue argumentation from Stage 1 is invisible to you.
> Your sole inputs are:
>
> - The key variables extracted by Reflection Layers
> - The conditional conclusions from Round 3
> - The open questions that remain unresolved
>
> Your task: subject each to first-principles decomposition.

---

# ═══════════════════════════════════════════
# STAGE 2: FIRST-PRINCIPLES ANALYTICAL ENGINE
# ═══════════════════════════════════════════

> **Cognitive rule**: No un-derived conclusions.
> Every judgment must trace back to axioms, empirical data,
> or domain-specific first principles.
>
> Domain-adaptive first principles:
>
> - Technology → physical laws, computational complexity,
>   information-theoretic bounds
> - Business → market mechanics, incentive structures,
>   resource constraints, competitive dynamics
> - Policy → institutional dynamics, game theory,
>   information asymmetry, collective action problems
> - Engineering → thermodynamics, material science,
>   manufacturing constraints, reliability theory
>
> Identify which domain(s) the topic spans. Apply the appropriate
> axiom set. If it spans multiple domains, analyze each separately,
> then synthesize at the interfaces.

## For each key variable / conditional finding from Stage 1:

### 2.1 Decomposition

- Break into independently verifiable sub-propositions.
- Tag each with **evidence type**:
  Formal proof / Empirical data / Historical analogy / Expert consensus / Speculation
- Tag **evidence strength**:
  - 🟢 Strong (reproducible, quantifiable, multiple sources)
  - 🟡 Moderate (precedent exists, conditions differ)
  - 🔴 Weak (analogy only, single source, or pure speculation)

### 2.2 Key Variable Analysis

For each variable identified in Stage 1:

- **Current best estimate** (with confidence interval if possible)
- **Sensitivity**: how much does the conclusion change per unit change
  in this variable? (High sensitivity = this is where to focus effort.)
- **Observability**: can you measure this variable directly,
  or must you infer it from proxies? (Low observability = higher risk.)
- **Controllability**: can the decision-maker influence this variable,
  or is it exogenous? (Uncontrollable = must build resilience, not optimize.)

### 2.3 Scenario Branching

- Based on key variable ranges, derive 2-3 branching scenarios.
- Each scenario must specify:
  - **Trigger condition**: "When X exceeds/falls below Y"
  - **Evolution path**: the causal chain from trigger to outcome
  - **End state**: what the world looks like
  - **Decision implication**: what you should do differently in this scenario
- **Banned**: vague qualifiers ("might", "perhaps", "possibly").
  Use conditional statements: "When X > Y, Z follows because [mechanism]."

### 2.4 Visualization

Use the appropriate tool for the content:

- **Causal chains / decision trees** → Mermaid flowchart
- **Variable relationships / sensitivity** → Table
- **Formal relationships** → LaTeX
- **Timeline / phasing** → Mermaid Gantt or sequence diagram
- **Complex data analysis** → Code (Python) if execution environment available

Visualization is not decoration. It encodes structural relationships
that prose obscures. Use it when structure IS the insight.

---

# ═══════════════════════════════════════════
# FINAL VERDICT
# ═══════════════════════════════════════════

The Final Verdict is NOT a summary of what was said above.
It is the **emergent insight** — the conclusion that no single
round or stage could have produced alone.

Required sections: Core Discovery (the structural surprise), Conditional
Conclusions (scenario-specific recommendations), What We Know vs Don't
(🟢/🟡/🔴 tagged), Verification Priorities (ranked by ROI), and
If You Decide to Proceed (highest-leverage path).
See the worked example appended at the end of this file for the complete Final Verdict format.

---

## Rhythm and Termination Rules

- **Standard run**: 3 rounds + Stage 2 + Verdict.
- **Early termination**: If Round 1 Reflection discovers a hard,
  unambiguous blocker (physical impossibility, legal prohibition,
  mathematical proof of infeasibility), terminate with explanation.
  Running more rounds on a dead proposition wastes cognitive budget.
- **Extended run**: If Round 3 Reflection identifies a critical
  premise that requires a 4th round, flag it explicitly:
  "A 4th round is warranted because [specific unresolved premise].
  Shall I continue?" — then proceed only if user confirms.
- **Complexity scaling**: For simpler topics, rounds can be shorter.
  The quality bar is maintained by the Reflection Layer's rigor,
  not by the length of Red/Blue arguments.

---

## Honesty Protocol

- **No fabricated data.** If a claim needs quantitative support
  and you don't have the number, say so. "This depends on X,
  which I don't have data for" is more useful than a made-up number.
- **Evidence strength tags are mandatory.** Every 🟢🟡🔴 tag is a
  commitment — it forces you to evaluate your own confidence
  before passing a claim to the user.
- **Reflection ≠ compromise.** "Both sides have valid points" is
  banned. The Reflection Layer must find the hidden premise,
  not split the difference.
- **Stage 2 cannot rescue Stage 1.** If Stage 1 produced low-quality
  adversarial rounds (e.g., Red and Blue were arguing the same side),
  Stage 2 inherits that weakness. Flag it: "Stage 1 did not produce
  strong opposition on [dimension], so this analysis has a blind spot."
- **User data > web data > model knowledge.** If the user provides
  domain-specific data (screenshots, reports, numbers), treat it as
  ground truth. Web search is second priority. Model's parametric
  knowledge is last resort and should be flagged as such.

---

## Anti-patterns

1. **Single-round masquerading as three.** If Red and Blue each say
   one paragraph, Reflection summarizes, and you move to Stage 2 —
   that's not adversarial analysis, that's a pro/con list with
   extra steps. The value is in Round 2 and 3's PROGRESSIVE DEEPENING,
   where each Reflection forces a new layer of assumptions to surface.
2. **Red and Blue cross-referencing.** "Red makes a good point but…"
   means Blue is not arguing independently. Blue must derive from its
   own premises, not react to Red's arguments.
3. **Reflection as peacemaker.** "Both sides raise valid concerns" is
   a cop-out. Reflection's job is to find the SHARED UNEXAMINED PREMISE,
   not to validate everyone. If you can't find one, that itself is a
   finding worth stating.
4. **Stage 2 repeating Stage 1.** If Stage 2 is just re-stating
   Red and Blue's arguments in more formal language, it's failing.
   Stage 2 must DECOMPOSE — break claims into independently testable
   sub-propositions and evaluate evidence for each.
5. **Fabricating precision.** "This will improve efficiency by ~35%"
   without a derivation path is worse than "This will improve efficiency
   by an amount that depends on [variable], which we cannot estimate
   without [data source]."
6. **Running the pipeline on non-controversial topics.**
   "What is photosynthesis" does not need adversarial analysis.
   The pre-check exists to prevent this. Use the pipeline only when
   there is genuine uncertainty, competing values, or hidden complexity.
7. **False neutrality on value conflicts.** When a disagreement is fundamentally
   about competing values (efficiency vs. quality, growth vs. stability,
   speed vs. safety), do not produce a "balance both" conclusion.
   Name what each side is optimizing for. Present the conditional
   recommendation for each value priority. "Both are important" is
   not a conclusion — it is a placeholder for a conclusion the model
   refused to construct.

---

## Skill Interactions

- **requirement-refiner**: Upstream. If user's input is vague,
  requirement-refiner completes it first; then this skill stress-tests
  the completed requirement.
- **cs-systems-architect**: Lateral. If Stage 2 decomposition involves
  hardware, OS, compiler, or AI/ML mechanisms, invoke cs-systems-architect's
  analytical framework for that specific sub-problem.
- **task-planner**: Downstream. If the Final Verdict includes an
  action plan, task-planner can decompose it into an executable DAG.
- **docx/pptx skills**: Downstream. For formatting the analysis into
  a deliverable document or presentation.

---

## Language

- Match user's language. Chinese input → Chinese analysis.
- Technical terms may remain in English where natural (e.g., ROI,
  first-principles, black swan) — this is normal in bilingual
  technical discourse.
- In Reflection Layers, maintain analytical precision over
  conversational warmth. The Reflection Layer's value comes from
  its ruthless clarity, not from hedging.

---

# Worked Example

# Output Example: Full Pipeline with Complete Process Visibility

This reference demonstrates the COMPLETE output format.
Note: every Red argument, Blue argument, and Reflection analysis
is shown in full. Nothing is collapsed or summarized.

---

## Topic: "Should a 50-person tech company adopt AI-pair-programming (Copilot/Cursor) as mandatory tooling for all engineers?"

━━━ STAGE 1: ADVERSARIAL DIALECTIC ━━━

── Round 1: Definition Layer ──

🔴 **Red Team (Advocate)**:

**Argument 1**: AI-pair-programming compresses the code-write-test cycle from
hours to minutes for boilerplate and integration work. In a 50-person
engineering org, roughly 40-60% of daily coding work is non-novel — API glue,
CRUD endpoints, test scaffolding, config files. AI tools reduce this to
near-zero marginal time cost, freeing engineers to focus on architecture
and design decisions where human judgment dominates.
← **Assumption**: The 40-60% figure holds for THIS company's specific codebase
and problem domain. If the team primarily works on novel algorithm design or
safety-critical systems, the boilerplate ratio may be much lower.

**Argument 2**: Recruitment leverage. Offering AI-native tooling as standard
signals to senior candidates that the company invests in developer experience.
In the current hiring market, developer tooling quality is a top-3 factor
in offer acceptance rates among experienced engineers.
← **Assumption**: The target talent pool values AI tooling positively.
Some experienced engineers actively resist AI-generated code due to
trust and craft concerns — for this cohort, mandatory adoption is a
negative signal, not a positive one.

**Argument 3**: Institutional knowledge transfer accelerates. Junior engineers
paired with AI tools that have been trained on or configured with company-
internal patterns can onboard 2-3x faster, because the tool effectively
encodes senior engineers' patterns into an always-available assistant.
← **Assumption**: The AI tools are actually configured with company-specific
context (RAG over internal codebase, custom rules). Out-of-the-box Copilot
with zero customization does not carry institutional knowledge.

🔵 **Blue Team (Adversary)**:

**Argument 1**: Mandatory tooling creates a homogenization trap. When every
engineer uses the same AI completion engine, the codebase converges toward
the AI's modal output distribution — statistically average solutions that
satisfy type-checks and tests but miss domain-specific performance constraints,
security edge cases, and architectural coherence. You get code that "looks
right" but accumulates invisible technical debt.
← **Trigger**: This failure materializes when code review standards are
simultaneously relaxed ("the AI wrote it, it passes tests, ship it").
The combination of AI-generated code + weakened review creates a debt
accumulation rate that exceeds the team's ability to service it within
12-18 months.

**Argument 2**: Skill atrophy in junior engineers. If juniors learn to code
by accepting AI suggestions rather than writing from scratch, they never
build the deep mental models of language semantics, memory management,
and system behavior that come from struggling with code. After 2-3 years,
you have engineers who can prompt but cannot debug — and debugging is where
the actual value is when production breaks at 3 AM.
← **Trigger**: This failure becomes visible the first time a production
incident requires tracing through AI-generated code that the on-call
engineer accepted but never truly understood. Mean-time-to-resolution
spikes because the engineer is reverse-engineering their own codebase.

**Argument 3**: Security surface expansion. AI tools transmit code context
to external APIs. For a company handling customer data, PII, or proprietary
algorithms, mandatory AI tooling means mandatory data exfiltration to a
third-party model provider. Compliance teams at enterprise customers will
flag this during security audits.
← **Trigger**: Fails the moment an enterprise customer's security audit
asks "does any third party have access to code that processes our data?"
and the answer is "yes, our AI coding tool's API sees it."

🪞 **Reflection Layer (Round 1)**:

Red and Blue are arguing past each other because they're debating different
populations within the same company.

Red's arguments (boilerplate reduction, onboarding acceleration) apply
primarily to **integration-heavy, CRUD-heavy workstreams** where code
is a commodity and speed is the bottleneck.

Blue's arguments (skill atrophy, homogenization, security) apply primarily
to **core-system, performance-critical, and security-sensitive workstreams**
where code quality and deep understanding are the bottleneck.

**The hidden premise both sides share but neither has tested**:
They're both treating the 50-person engineering team as a monolith.
But a 50-person team almost certainly has at least 3-4 distinct work types
with fundamentally different boilerplate-to-novel ratios, security exposure
levels, and skill-development needs.

**Redefined question**: Not "should we mandate AI tooling for everyone?"
but **"which specific engineering workflows gain value from AI pair-programming,
and which are degraded by it?"** — a segmentation problem, not a binary
adoption decision.

→ **Exposed premise for Round 2**: The team is not a monolith. The value
and risk of AI tooling varies by workflow type, and the right answer is
almost certainly differentiated adoption, not uniform mandate.

---

── Round 2: Mechanism Layer ──

🔴 **Red Team (Robustness)**:

Even accepting that the team isn't a monolith, differentiated adoption is
operationally impractical at a 50-person company. The overhead of maintaining
two tool configurations, two code review standards, and two onboarding
tracks for "AI-assisted" vs "AI-free" workstreams exceeds the benefit.

The robust path is: adopt universally, but invest in guardrails. Specifically:
(a) AI-generated code gets STRICTER review, not looser — because the reviewer's
job shifts from "does the logic work?" to "does this solution fit our
architecture and performance constraints?"; (b) juniors are required to
explain every AI suggestion they accept, creating a forcing function for
understanding; (c) security-sensitive repos get a local/self-hosted model
or have AI tooling disabled at the repo level, which is a 1-line config
change, not a cultural split.

This approach captures 80% of Red's upside while addressing Blue's core
concerns through process design rather than blanket exclusion.

🔵 **Blue Team (Fragility)**:

Red's "guardrails" solution sounds elegant but contains a fatal
assumption: that code review quality can be maintained or increased
at the same time that AI dramatically increases code throughput.

Here's the cliff effect: AI tools 3-5x the volume of code produced per
engineer per day. Review bandwidth does not scale — it's bottlenecked by
senior engineers' available hours and cognitive load. The predictable
result is that review quality degrades exactly in proportion to the
throughput increase. You don't get "stricter review of AI code" — you
get the same review hours spread across 3-5x more code, which means
each PR gets 1/3 to 1/5 the scrutiny.

This isn't a gradient. The relationship between review thoroughness and
defect escape rate is non-linear — below a threshold of review depth,
defect escape rate jumps sharply. AI tooling pushes you past that threshold
not through malice but through throughput pressure.

The "juniors explain every suggestion" rule will last approximately
2 sprints before deadline pressure causes it to be quietly abandoned.
Process rules that fight against throughput incentives always lose.

🪞 **Reflection Layer (Round 2)**:

**Key Variable 1: Review bandwidth elasticity**

- Red claims: Review process can absorb higher throughput through
  process redesign (shift from logic-check to architecture-check).
- Blue claims: Review bandwidth is fundamentally time-constrained;
  more code = thinner review = cliff-edge quality degradation.
- Dispute type: **Factual** — measurable. Track current PR count,
  review time per PR, and defect escape rate. Then model what happens
  at 3-5x throughput.
- Verification: Pull last 3 months of git/review data. Calculate
  review-hours-per-KLOC. Model the ratio at projected AI throughput.

**Key Variable 2: Process rule durability under throughput pressure**

- Red claims: "Explain every AI suggestion" can be institutionalized
  as a standard practice.
- Blue claims: Process rules that oppose throughput incentives decay
  within weeks under deadline pressure.
- Dispute type: **Assumption-based** — depends on company culture.
  Some orgs (aviation, medical device) maintain process discipline
  under pressure. Most startup-culture orgs do not.
- Verification: Look at the company's track record with past process
  mandates. Did the "always write unit tests" rule stick? Did the
  "mandatory design doc before coding" rule survive?

**Third path neither side considered**:
Neither Red nor Blue has considered that AI tooling might be most valuable
NOT as a code-generation tool but as a **code-review augmentation tool**.
Instead of AI writing code that humans review (Red's model) or AI
writing code that overwhelms review (Blue's fear), the highest-leverage
deployment might be AI assisting reviewers — flagging architectural
inconsistencies, security patterns, and deviations from internal
conventions. This preserves human authorship (addressing skill atrophy)
while using AI to scale the bottleneck (review bandwidth) rather than
the non-bottleneck (code writing speed).

→ **Exposed premise for Round 3**: Both sides assumed AI's role is
code generation. The review-augmentation deployment model addresses
both sides' concerns but requires a fundamentally different tooling
investment and vendor evaluation.

---

── Round 3: Decision Layer ──

🔴 **Red Team (Commit)**:

Three deployment models are now on the table:
(A) Universal code-generation adoption with guardrails (original proposal).
(B) Segmented adoption by workflow type.
(C) Review-augmentation-first deployment.

The ROI case for acting now rather than waiting:
AI tooling is a learning-curve investment. The team that starts now
builds internal expertise, custom configurations, and workflow adaptations
that compound over 12-18 months. The team that waits starts from zero
when competitive pressure eventually forces adoption. The opportunity cost
of delay is not the tool's direct productivity gain — it's the lost
compounding of institutional adaptation.

Option C (review augmentation) is strategically attractive but has a
practical problem: the tooling ecosystem for AI-assisted code review is
less mature than AI code generation. Copilot, Cursor, and similar tools
are optimized for generation. Review-focused tools exist but are earlier-stage.
Waiting for the review-augmentation ecosystem to mature means potentially
waiting 12-24 months.

Recommended path: Start with Option A (generation) for non-sensitive
workstreams NOW to begin the learning curve. Simultaneously pilot Option C
(review augmentation) in 1-2 teams. Evaluate after one quarter. This
captures the compounding benefit of early adoption while testing the
review-augmentation hypothesis.

🔵 **Blue Team (Alternatives)**:

Red's "start now, learn fast" argument is the classic sunk-cost trap setup.
Once the team is 6 months into AI-generation adoption, switching to
review-augmentation becomes psychologically and organizationally impossible
— you've already trained habits, built workflows, and made the generation
model part of the identity ("we're an AI-native team").

The alternative path: Invest the same budget into (1) hiring one additional
senior reviewer to alleviate the review bottleneck directly, and (2)
piloting review-augmentation tooling in parallel. This costs roughly the
same as organization-wide Copilot licenses + onboarding time, but addresses
the actual bottleneck (review bandwidth) rather than accelerating the
non-bottleneck (code writing speed).

The deeper question: is the urgency real? "Competitive pressure" to adopt
AI tooling is currently driven by marketing narratives, not by demonstrated
productivity data at the team level. The methodologically rigorous studies
show gains concentrated in junior engineers doing boilerplate tasks —
exactly the population where Blue has identified the strongest skill
atrophy risk. Waiting 6 months for better data and better review-focused
tooling has lower downside than premature commitment.

🪞 **Reflection Layer (Round 3)**:

**Resolvable by data (don't need to argue, need to measure)**:

1. What is this team's actual boilerplate-to-novel code ratio? → Git analysis
2. What is the current review bottleneck severity? → Measure PR queue time
3. Has this company historically maintained process discipline? → Track record

**Fundamentally value judgments (decision-maker must own)**:

1. Risk appetite: "learn fast, accept some debt" vs. "move carefully,
   preserve quality." No data resolves this — it's a strategic posture choice.
2. Talent signal priority: Does the company WANT to attract engineers who
   value AI-native workflows, or engineers who value craft and deep understanding?
   These are partially overlapping but distinct populations.

━━━ ⚠️ COGNITIVE RESET — Analysis below based solely on key variables above ━━━

━━━ STAGE 2: FIRST-PRINCIPLES ENGINE ━━━

## Key Variable 1: Review Bandwidth Elasticity

**Decomposition**:

- Sub-claim A: AI tools increase code output by 3-5x per engineer.
  → Evidence type: Empirical (GitHub/Microsoft studies on Copilot)
  → Strength: 🟡 — studies exist but measure completion acceptance rate,
  not net production throughput including debugging time. The 3-5x figure
  is likely an upper bound; real-world net throughput increase is probably
  1.5-2.5x after accounting for debugging AI-generated errors.
- Sub-claim B: Code review quality degrades non-linearly with PR volume.
  → Evidence type: Empirical (Microsoft Research on review effectiveness)
  → Strength: 🟢 — well-established finding that review effectiveness
  drops sharply above ~400 lines per review session and when reviewer
  has >5 pending reviews.
- Sub-claim C: Review can be restructured from logic-checking to
  architecture-checking to maintain quality at higher throughput.
  → Evidence type: Historical analogy (Google's readability review model)
  → Strength: 🟡 — Google's model works but requires dedicated
  readability reviewers, which a 50-person team may not have bandwidth for.

**Variable Profile**:

| Attribute       | Assessment                                                                    |
|-----------------|-------------------------------------------------------------------------------|
| Sensitivity     | HIGH — if review can't absorb throughput, generation strategy is net-negative |
| Observability   | HIGH — PR metrics, review times, defect rates all directly measurable         |
| Controllability | MEDIUM — can add reviewers or tooling, but cognitive cost per review is fixed  |

**Scenario Branching**:

Scenario α: When net throughput increase ≤2x AND team adds review tooling
→ Review bandwidth stretches to accommodate.
→ Net outcome: engineers gain 20-30% effective time for design work.
→ Decision: Proceed with generation adoption + review tooling investment.

Scenario β: When net throughput increase >2x AND review process unchanged
→ Review quality crosses cliff threshold within 2-3 months.
→ Defect escape rate increases → production incidents → trust erosion.
→ Decision: Do NOT adopt generation without simultaneously solving review.

---

## Key Variable 2: Process Rule Durability

**Decomposition**:

- Sub-claim: "Explain every AI suggestion" rule persists under deadline pressure.
  → Evidence type: Historical analogy (organizational behavior research)
  → Strength: 🟢 — consistent finding across industries that process rules
  opposing productivity incentives decay unless automated enforcement exists.

**Variable Profile**:

| Attribute       | Assessment                                                       |
|-----------------|------------------------------------------------------------------|
| Sensitivity     | HIGH — if rule decays, skill atrophy becomes dominant concern    |
| Observability   | MEDIUM — compliance can be tracked, genuine understanding cannot |
| Controllability | MEDIUM — can automate logging but cannot force comprehension     |

**Scenario Branching**:

Scenario α: When explanation rule is automated (tied to PR approval workflow)
→ Compliance maintained. Junior learning partially preserved.
→ Trade-off: adds friction that offsets ~30% of throughput gains.

Scenario β: When explanation rule is social norm only
→ Decays within 4-8 weeks under sprint pressure.
→ Debugging capability gap emerges at 12-18 month mark.

━━━ FINAL VERDICT ━━━

## Core Discovery

Three rounds of adversarial pressure revealed that the original question
("should we mandate AI-pair-programming?") contains a misidentified
bottleneck. The company's constraint is not code-writing speed — it's
review bandwidth and junior skill development. AI code generation
accelerates the non-bottleneck while putting additional pressure on the
actual bottleneck. This is the classic Goldratt trap: optimizing a
non-constraint degrades system throughput by overloading the constraint.

The emergent insight — which no single round produced alone — is that
the highest-leverage AI investment for this team is probably
**review augmentation, not code generation**. This emerged from Round 2's
Reflection Layer identifying a third path, was stress-tested through
Round 3's commitment-vs-alternatives debate, and validated by Stage 2's
finding that review bandwidth has the highest sensitivity and the steepest
non-linear degradation curve.

## Conditional Conclusions

Scenario A: When boilerplate ratio >50% AND review queue time <4 hours
→ Code generation adoption is safe. Review system has slack.
→ Proceed with phased rollout + monitoring.

Scenario B: When boilerplate ratio <50% OR review queue time >8 hours
→ Code generation will degrade quality.
→ Invest in review tooling and process first; re-evaluate in 6 months.

## What We Know vs. What We Don't

- Highest certainty: Review quality degrades non-linearly with volume (🟢).
  Process rules opposing throughput decay without automation (🟢).
- Highest uncertainty: This team's specific boilerplate ratio (🔴 — no data).
  Net real-world throughput multiplier after debug overhead (🟡).

## Verification Priorities (ranked by ROI)

1. **Git data analysis** → boilerplate-to-novel ratio + current review load
   → determines which scenario applies. **Do this first.**
2. **Team survey** → AI tooling attitudes → recruitment signal direction.
3. **Review-augmentation pilot** → 1 team, 4 weeks → measure review throughput
   and defect escape rate delta.

## If You Decide to Proceed

Do not adopt generation-first across the board. Start with a constrained pilot:
one team, non-security-sensitive workstream, 6-week trial with explicit metrics
(throughput, review queue time, defect escape rate, self-reported understanding).
Simultaneously evaluate review-augmentation tools. Decision checkpoint at week 6
with hard data, not vibes.
