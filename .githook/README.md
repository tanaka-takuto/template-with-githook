# Git Hooks

This directory contains the Git hooks used by this repository template.

Active hooks live directly in `.githook/`:

- `commit-msg`
- `pre-commit`
- `pre-push`

The commit message template lives at:

- `commit-message-template`

Optional examples live in `samples/`. They are not active unless copied into `.githook/` and made executable.

Run the setup script from anywhere inside the repository:

```sh
script/setup-githook.sh
```

The setup script configures:

```sh
git config core.hooksPath .githook
git config commit.template .githook/commit-message-template
```
