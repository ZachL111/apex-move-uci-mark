# apex-move-uci-mark

`apex-move-uci-mark` is a Elixir project in chess and game engines. Its focus is to build an Elixir toolkit that studies uci behavior through round-trip fixtures, with lossless normalization checks and local-only command execution.

## Purpose

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Apex Move UCI Mark Review Notes

The first comparison I would make is `endgame risk` against `move ordering` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/apex-move-uci-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `endgame risk` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Elixir code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The check exercises the source code and the review fixture. `recovery` is the high score at 216; `stress` is the low score at 123.

## Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
