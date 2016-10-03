#!/bin/bash
set -exu -o pipefail

if [[ `cat /var/log/clamav/freshclam.log|grep daily.cld | tail -n5| egrep 'is up to date'` =~ 'up to date' ]]
then
  echo 'OK: Freshclam Current'
  exit 0
else
  echo 'Error: Freshclam needs updating'
  exit 1
fi
