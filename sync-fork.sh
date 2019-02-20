#!/bin/sh
project=$1
if [ ! -d "$project" ]; then
  git clone https://github.com/tianj-zh/$project.git
  pushd $project
  git remote add upstream https://github.com/qt/$project.git
  popd
fi
pushd $project
git fetch upstream
git fetch origin
for branch in $(git ls-remote --heads upstream|sed 's#^.*refs/heads/##'); do git push -f origin refs/remotes/upstream/$branch:refs/heads/$branch --tags; done
popd