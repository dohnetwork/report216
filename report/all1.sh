#!/bin/sh
HOST='172.16.1.1'
USER='root'
PASSWD='admin1'
FILE='check'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd /image
lcd /report
get $FILE   check1
bye

fpt -n 172.16.1.2   <<END_SCRIPT
quote USER root
quote PASS admin2
cd /chok
lcd /line/report
get check check2
bye

