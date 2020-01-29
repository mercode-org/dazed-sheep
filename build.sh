#!/bin/sh

set -e

gh_repo="mervoxels-server"
gh_desc="mervoxels-server"

cat <<- EOF
  MerVoxels Server
  $gh_desc
  https://github.com/mercode-org/$gh_repo
  Copyleft 2019-2020 Mercode
  Server software forked from PrismarineJS's dazed-sheep.
EOF

echo updating repository...
git pull origin master
echo installing dependencies...
npm install
echo fixing vulnerabilities...
npm audit fix
echo Done!
