# Review Journal

I treated `apex-move-uci-mark` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 142, lane `ship`
- `stress`: `move ordering`, score 123, lane `watch`
- `edge`: `search width`, score 210, lane `ship`
- `recovery`: `endgame risk`, score 216, lane `ship`
- `stale`: `position pressure`, score 125, lane `watch`

## Note

The repository should be understandable without pretending it is larger than it is.
