#!/bin/sh
HOST='203.152.1.1'
USER='root'
PASSWD='root'
FILE='check'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd /chok
lcd /report
get $FILE   check203
bye

