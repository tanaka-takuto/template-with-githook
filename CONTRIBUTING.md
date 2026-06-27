# Contributing

This repository template uses local Git hooks, Conventional Commits, issue-based branches, and GitHub issue and pull request templates to keep contributions consistent.

## Set Up Local Hooks

Run this once after cloning a repository created from the template:

```sh
script/setup-githook.sh
```

The script configures Git to use `.githook` and the commit message template stored in this repository.

## Commit Messages

Use Conventional Commits:

```text
type(scope): short summary
```

The scope is optional:

```text
feat: add setup script
fix(hooks): handle invalid branch names
docs: update contributing guide
```

Allowed types:

- `build`: build system or dependency changes
- `chore`: maintenance tasks that do not change runtime behavior
- `ci`: CI configuration or scripts
- `docs`: documentation-only changes
- `feat`: new user-facing behavior
- `fix`: bug fixes
- `perf`: performance improvements
- `refactor`: code changes that preserve behavior
- `revert`: reverting a previous change
- `style`: formatting changes that do not affect behavior
- `test`: tests or test utilities

Use `!` before the colon for breaking changes:

```text
feat!: change public API shape
feat(api)!: require explicit configuration
```

## Branch Names

Issue-based work must use this branch format:

```text
issue/#123
```

Quote branch names that contain `#` in shell commands:

```sh
git switch -c 'issue/#123'
git push -u origin 'issue/#123'
```

The local `pre-push` hook allows only these remote branch names:

- `main`
- `develop`
- `issue/#<number>`

Protect `main` and `develop` with GitHub branch protection or rulesets. Local hooks are not a security boundary and can be bypassed.

## Issues

Use the issue form that best matches the request:

- Bug report
- Feature request
- Question

Blank issues are disabled so reports include enough context to act on them.

## Pull Requests

Before opening a pull request:

- Keep the change focused on one problem.
- Use a GitHub closing keyword such as `Closes #123` when the pull request should close an issue.
- Update documentation when behavior or setup changes.
- Run the relevant checks for the area you changed.
- Fill in the pull request template with tests, examples, and reviewer notes.

## Local Hook Samples

Optional hook samples live in `.githook/samples/`. They are not active until copied into `.githook/` and made executable.
