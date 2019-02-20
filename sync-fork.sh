#!/bin/sh
local_path=$1
project=$2
origin_url=$3
upstream_url=$4
if [ ! -d "${local_path}" ]; then
  mkdir "${local_path}"
fi
pushd ${local_path}
if [ ! -d "${project}" ]; then
  git clone ${origin_url}/${project}.git
  pushd ${project}
  git remote add upstream ${upstream_url}/${project}.git
  popd
fi
pushd ${project}
git fetch upstream
git fetch origin
for branch in $(git ls-remote --heads upstream|sed 's#^.*refs/heads/##'); do git push -f origin refs/remotes/upstream/${branch}:refs/heads/${branch} --tags; done
popd
popd