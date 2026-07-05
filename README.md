# Claude Skills

Claude Skills is a small collection of skill prompts, reference prompts, and
manual test cases for adversarial analysis, planning, decision support, and
browser automation.

This repository is a skill/reference package. It is not an application, package
manager, or model provider.

## What This Is

Use this repository when you need reusable prompt instructions for:

- adversarial decision analysis,
- plan-mode thinking lenses,
- technical planning with first-principles checks,
- browser-use command routing on a Windows host,
- comparing skill behavior against manual test cases.

## What This Is Not

- It is not a general Claude configuration directory.
- It does not install itself automatically.
- It does not contain a runtime for running agents.
- It is not the same package as `prompt` or `prompt-forge`.
- The `browser-ops` skill is not for ordinary web search; it is for explicit
  browser-control requests.

## Status

Reference and skill-pack repository. The adversarial analysis skills have a
manual comparison test suite under `tests/`. There is no automated CI runner in
this checkout.

Some files preserve Windows-specific paths and browser-use wrapper commands.
Those paths are intentional examples for that target host, not macOS commands.

## Skill Table

| Path | Entry Type | Use For | Notes |
| --- | --- | --- | --- |
| `decision-SKILL.md` | skill file | Explicit adversarial and analytical decision stress tests | Use when the user asks to analyze, pressure-test, or evaluate a decision with real uncertainty. |
| `adversarial-engine.md` | reference prompt | Full visible multi-round adversarial engine | Useful as the long-form source for decision-pipeline design. |
| `adversarial-thinking/SKILL.md` | skill file | Plan-mode thinking lens | Designed to silently inform planning rather than print every step. |
| `adversarial-thinking/adversarial-analytical-pipeline.md` | reference prompt | Single-pass structured adversarial pipeline | Useful for Chinese structured contradiction analysis. |
| `browser-ops/SKILL.md` | skill file | Explicit browser-use operations | Windows-oriented wrapper and command patterns. |
| `browser-ops/references/command-patterns.md` | reference | Browser-use command examples | Read before changing browser automation behavior. |
| `tests/` | manual test suite | Skill comparison and validation | Contains TC1-TC5 cases and recorded results. |

## Usage

Clone the repository:

```bash
git clone https://github.com/jupiternaut/Claude-skills.git
cd Claude-skills
```

Read the relevant skill file before copying or installing it into an agent
skill directory:

```bash
sed -n '1,160p' decision-SKILL.md
sed -n '1,160p' adversarial-thinking/SKILL.md
sed -n '1,160p' browser-ops/SKILL.md
```

When installing manually, keep each skill's referenced files with it. For
example, `browser-ops/SKILL.md` expects its `scripts/` and `references/`
children to remain adjacent.

## Validation

There is no executable test command. Use the manual test suite:

```bash
sed -n '1,220p' tests/README.md
sed -n '1,220p' tests/results/SUMMARY.md
```

Recommended manual flow:

```text
1. Choose one test case from tests/TC*.md.
2. Load the target skill prompt.
3. Run the test input in the target model or agent.
4. Compare the output against the checklist and recorded results.
5. Update the corresponding tests/results file if you are maintaining the pack.
```

## Local Path And Encoding Warnings

`browser-ops` contains Windows PowerShell examples and a wrapper path under
`C:\Users\gengr\...`. Do not run those commands on macOS without adapting the
path and host environment.

Some historical trigger text in that file may display as mojibake in UTF-8
viewers. Treat the explicit English routing rules as the source of truth unless
you are repairing Windows encoding behavior.

## Related Docs

- [Manual test suite](tests/README.md)
- [Comparison summary](tests/results/SUMMARY.md)
- [Browser command patterns](browser-ops/references/command-patterns.md)
- [Reference output example](references/output-example.md)

## Maintainer

jupiternaut / Geng Ruofan
