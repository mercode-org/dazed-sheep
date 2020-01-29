cat <<- EOF

  MerVoxels Server

  $gh_desc
  https://github.com/mercode-org/$gh_repo

  Copyleft 2019-2020 Mercode
  Server software forked from PrismarineJS's dazed-sheep.

EOF

echo starting server...
node app.js |& tee -a ~/dazed-sheep/output.log
