#!/bin/sh

set -eu

repo_root=$(git rev-parse --show-toplevel 2>/dev/null) || {
  echo "setup-githook: not inside a Git repository" >&2
  exit 1
}

cd "$repo_root"

required_files='
.githook/commit-msg
.githook/pre-commit
.githook/pre-push
.githook/commit-message-template
'

missing=0

for file in $required_files; do
  if [ ! -f "$file" ]; then
    echo "setup-githook: missing required file: $file" >&2
    missing=1
  fi
done

if [ "$missing" -ne 0 ]; then
  exit 1
fi

chmod +x .githook/commit-msg .githook/pre-commit .githook/pre-push

git config core.hooksPath .githook
git config commit.template .githook/commit-message-template

echo "Configured core.hooksPath=.githook"
echo "Configured commit.template=.githook/commit-message-template"
