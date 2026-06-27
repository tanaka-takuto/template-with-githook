# Git Hook Repository Template

A language-independent Git repository template with local hooks, a commit message template, and GitHub issue and pull request templates.

## Use This Template

1. Create a new repository from this template.
2. Clone the new repository.
3. Run the hook setup script from anywhere inside the repository:

```sh
script/setup-githook.sh
```

The setup script configures:

```sh
git config core.hooksPath .githook
git config commit.template .githook/commit-message-template
```

It also makes the active hook files executable.

## Active Hooks

This template enables these local hooks:

- `commit-msg`: validates the first non-comment line as a Conventional Commit subject.
- `pre-commit`: runs `git diff --cached --check` against staged changes.
- `pre-push`: validates remote branch names before push.

Local hooks are convenience checks. Enforce protected branches, required reviews, and required checks with GitHub branch protection or rulesets as well.

## Commit Messages

Use Conventional Commits:

```text
type(scope): short summary
type: short summary
type!: short summary
type(scope)!: short summary
```

Allowed types:

- `build`
- `chore`
- `ci`
- `docs`
- `feat`
- `fix`
- `perf`
- `refactor`
- `revert`
- `style`
- `test`

The subject must be 100 bytes or fewer. Scope is optional and may contain letters, numbers, `.`, `_`, `/`, or `-`.

The `commit-msg` hook allows Git-generated or workflow-generated subjects that start with:

- `Merge `
- `Revert "`
- `fixup! `
- `squash! `
- `amend! `

## Branch Names

The `pre-push` hook allows only these remote branch names:

```text
main
develop
issue/#123
```

Create issue branches with quotes around the `#`:

```sh
git switch -c 'issue/#123'
git push -u origin 'issue/#123'
```

Tag pushes and branch deletion pushes are not checked by the branch-name rule.

## Sample Hooks

Additional hook examples live in `.githook/samples/`. They are not active by default.

To enable a sample hook, copy it into `.githook/` and make the copied hook executable:

```sh
cp .githook/samples/post-merge .githook/post-merge
chmod +x .githook/post-merge
```

See `.githook/samples/README.md` for the sample list.

## GitHub Templates

This template includes:

- `.github/pull_request_template.md`
- `.github/ISSUE_TEMPLATE/bug_report.yml`
- `.github/ISSUE_TEMPLATE/feature_request.yml`
- `.github/ISSUE_TEMPLATE/question.yml`
- `.github/ISSUE_TEMPLATE/config.yml`

Blank issues are disabled so reporters choose one of the structured issue forms.
