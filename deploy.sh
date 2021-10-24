#!/bin/bash

git branch -d gh-pages
git checkout --orphan gh-pages
cd www/src/
hugo --ignoreCache --enableGitInfo --minify --theme book
cd -
mv www/src/public $PWD/public
rm -rf www/
mv public/* ./
touch .nojekyll
git add .
git commit -m "[deploy] pages"
git push -u origin gh-pages -f
git checkout master

hugo --ignoreCache --enableGitInfo --minify --theme book