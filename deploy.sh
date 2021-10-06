#! usr/bin/env sh

set -e

npm run backend
npm run build

cd dist

git add .
git commit -m "New Deploy"
git push -f git@github.com:Klashiin/todolist.git main:gh-pages

cd-
