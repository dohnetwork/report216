#!/bin/sh
HOST='172.16.1.2'
USER='root'
PASSWD='admin2'
FILE='check'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd /chok
lcd /report
get $FILE   check2
bye

