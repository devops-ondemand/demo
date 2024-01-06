#!/usr/bin/env bash
[ "${BASH_VERSINFO:-0}" -ge 4 ] || { echo "Upgrade your bash to at least version 4"; exit 1; }

set -euo pipefail

# Reset the repo
rm -fr .git
git init .
git add -A
git commit -m "Initial commit"
git remote add origin git@github.com:devops-ondemand/demo.git
git push -u --force origin main

