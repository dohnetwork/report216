#!/bin/sh
HOST='172.16.1.5'
USER='root'
PASSWD='admin5'
FILE='check'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd /chok
lcd /report
get $FILE   check5
bye

