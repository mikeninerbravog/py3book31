#!/bin/bash

git add .
git commit -m 'uploading'
git commit --amend --date="$(date -d "$1 days ago")" --no-edit; GIT_COMMITTER_DATE="$(date -d "$1 days ago")" git commit --amend --no-edit
git push
