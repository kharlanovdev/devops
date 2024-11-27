#!/bin/bash
dbase="devops"
user="kharlanov"
host="localhost"
port="5432"
DATE=$(date '+%Y-%m-%d')
backup_dir="/home/kharlanov/backup_database/"
backup_sql="$backup_dir/${dbase}_backup_$DATE.sql"

echo "BACKUP dbase 'devops'"
pg_dump -U "$user" -h "$host" -p "$port" -F c -b -v -f "$backup_sql" "$dbase"

find "$backup_dir" -type f -name "*.sql" -mtime +1 -exec rm -f {} \; 

