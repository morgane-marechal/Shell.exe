#!/bin/bash
newdate=$(date +%Y-%m-%d-%H:%M)
newdate2=$(date +%Y-%m-%d-%H-%M)
touch number_connection-$newdate

(last | grep morgane | wc -l) > number_connection-$newdate | tar --force-local -c -f number_connection-$newdate.tar number_connection-$newdate

mkdir -p  Backup

mv number_connection-$newdate.tar Backup/  
rm number_connection*
