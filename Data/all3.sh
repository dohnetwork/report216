#!/bin/sh
HOST='172.16.1.3'
USER='root'
PASSWD='admin3'
FILE='check'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd /chok
lcd /report
get $FILE   check3
bye

