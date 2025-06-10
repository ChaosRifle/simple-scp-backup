#!/bin/bash
#latest, archive (datestamped folders), and teamspeak structure(entire TS backup)
USERNAME="replaceme"
IP="replaceme"

DATESTAMP="$(date +%y\\%m\\%d-%H:%M:%S)"
mkdir ~/teamspeak-backup/archive/$DATESTAMP

scp -i ~/.ssh/backup-teamspeak $USERNAME@$IP:/home/teamspeak/teamspeak/licensekey.dat ~/teamspeak-backup/archive/$DATESTAMP
scp -i ~/.ssh/backup-teamspeak $USERNAME@$IP:/home/teamspeak/teamspeak/query_ip_blacklist.txt ~/teamspeak-backup/archive/$DATESTAMP
scp -i ~/.ssh/backup-teamspeak $USERNAME@$IP:/home/teamspeak/teamspeak/query_ip_whitelist.txt ~/teamspeak-backup/archive/$DATESTAMP
scp -i ~/.ssh/backup-teamspeak $USERNAME@$IP:/home/teamspeak/teamspeak/ts3server.sqlitedb ~/teamspeak-backup/archive/$DATESTAMP
scp -i ~/.ssh/backup-teamspeak $USERNAME@$IP:/home/teamspeak/teamspeak/ts3server.sqlitedb-shm ~/teamspeak-backup/archive/$DATESTAMP
scp -i ~/.ssh/backup-teamspeak $USERNAME@$IP:/home/teamspeak/teamspeak/ts3server.sqlitedb-wal ~/teamspeak-backup/archive/$DATESTAMP

#rm -rf ~/teamspeak-backup/latest/*
#cp ~/teamspeak-backup/archive/$DATESTAMP ~/teamspeak-backup/latest/
