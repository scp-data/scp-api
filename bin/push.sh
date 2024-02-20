#!/usr/bin/env bash
set -e

git config --local user.name "$GIT_USER"
git config --local user.email "$GIT_EMAIL"

git add -A

if [[ ! -z $(git status -s) ]]; then
  git commit -m "SCP Automatic Crawl"
  git push
else
  echo "No updates to push."
  exit 0
fi
