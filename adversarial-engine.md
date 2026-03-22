# adversarial-engine

## Skill Metadata

```yaml
name: adversarial-engine
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
```

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

## Workflow Overview

```
User Input: topic / decision / project / strategy
                    │
                    ▼
          ┌── Pre-check: Completeness ──┐
          │  Ambiguous scope? → clarify  │
          │  Clear enough? → proceed     │
          └──────────┬──────────────────┘
                     │
    ╔════════════════╧════════════════════╗
    ║  STAGE 1: ADVERSARIAL DIALECTIC     ║
    ║                                     ║
    ║  Round 1: Definition Layer          ║
    ║  Red → Blue → Reflection            ║
    ║  Output: the real question          ║
    ║       + exposed hidden premise #1   ║
    ║              │                      ║
    ║  Round 2: Mechanism Layer           ║
    ║  Red → Blue → Reflection            ║
    ║  Output: key variables + thresholds ║
    ║       + exposed hidden premise #2   ║
    ║              │                      ║
    ║  Round 3: Decision Layer            ║
    ║  Red → Blue → Reflection            ║
    ║  Output: conditional conclusions    ║
    ╚════════════════╤════════════════════╝
                     │
          ┌──── Cognitive Reset ────┐
          │  Stage 2 receives ONLY: │
          │  • Key variables        │
          │  • Conditional findings │
          │  • Open questions       │
          │  NOT raw Red/Blue text  │
          └──────────┬─────────────┘
                     │
    ╔════════════════╧════════════════════╗
    ║  STAGE 2: FIRST-PRINCIPLES ENGINE   ║
    ║                                     ║
    ║  For each key variable/finding:     ║
    ║  2.1 Decompose into sub-claims      ║
    ║  2.2 Tag evidence type + strength   ║
    ║  2.3 Extract decision variables     ║
    ║  2.4 Branch scenarios               ║
    ║  2.5 Visualize (Mermaid/LaTeX)      ║
    ╚════════════════╤════════════════════╝
                     │
                     ▼
              Final Verdict
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
- **Output**: Classified disagreements + conditional conclusion skeleton.

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

Structure:

```
## Core Discovery
[1-2 paragraphs. The structural insight that emerged from three
 rounds of adversarial pressure + first-principles decomposition.
 This should surprise even someone who read all the rounds.]

## Conditional Conclusions
Scenario A: When [condition set A] holds
→ [Specific recommendation + reasoning]

Scenario B: When [condition set B] holds
→ [Different recommendation + reasoning]

(Scenario C if needed)

## What We Know vs. What We Don't
- Highest certainty: [claims supported by 🟢 evidence]
- Highest uncertainty: [where 🔴 evidence dominates;
  decision-maker must exercise judgment]

## Verification Priorities (ranked by ROI)
1. [Most impactful question to answer] → [Method to answer it]
2. [Second most impactful] → [Method]
3. ...

## If You Decide to Proceed
[Not "should you", but "if you do, here's the highest-leverage
 path to maximize upside while limiting downside"]
```

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
