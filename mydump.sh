#!/bin/bash

# Programmer: Kurt L Vanderwater
# Written:    10-4-11
# Purpose:
#     Manage backups of the mysql databases
#
# Params:
#   $1 - The database name

mkdir -p /var/aegir/backup/mysqldumps/current
pushd /var/aegir/backup/mysqldumps/current

echo "Processing Database $1"
mysqldump --skip-extended-insert $1 | gzip > ${1}.sql.gz
ls -l ${1}.sql.gz

popd
