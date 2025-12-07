#!/bin/bash
set -e

BRANCH="sms-parser-integration"

git checkout -b $BRANCH || git checkout $BRANCH

git apply 01_parser.diff
git apply 02_handlers_patch.diff
git apply 03_index_patch.diff
git apply 04_smsService_app.diff

git add .
git commit -m "Add SMS parser, handler updates, Cloud Functions updates, and SMS service patch"
git push --set-upstream origin $BRANCH

echo "Done!"
