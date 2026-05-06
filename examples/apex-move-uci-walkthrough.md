# Apex Move UCI Mark Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 142 | ship |
| stress | move ordering | 123 | watch |
| edge | search width | 210 | ship |
| recovery | endgame risk | 216 | ship |
| stale | position pressure | 125 | watch |

Start with `recovery` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
