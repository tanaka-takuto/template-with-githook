# Sample Hooks

These hooks are examples only. They are not active while they stay in `.githook/samples/`.

Enable a sample by copying it into `.githook/` and making the copied file executable:

```sh
cp .githook/samples/post-merge .githook/post-merge
chmod +x .githook/post-merge
```

Available samples:

- `prepare-commit-msg`: appends `Closes #123` for `issue/#123` branches during normal template-based commits.
- `pre-rebase`: prevents rebasing while currently on `main` or `develop`.
- `post-merge`: warns when hook configuration no longer points to this template.
- `post-checkout`: warns when hook configuration no longer points to this template.
- `post-commit`: prints the current branch and new short commit hash.
- `pre-merge-commit`: runs `git diff --cached --check` before a merge commit.
- `post-rewrite`: reports how many commits were rewritten by amend or rebase.
- `applypatch-msg`: reuses `.githook/commit-msg` for `git am` commit messages.
- `pre-applypatch`: runs `git diff --cached --check` before a patch commit.
- `post-applypatch`: prints the short commit hash created by `git am`.
- `sendemail-validate`: placeholder for repository-specific `git send-email` validation.
