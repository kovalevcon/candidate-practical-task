#!/bin/bash

cd ~
mkdir task4
touch "file.php" "file.js"
chown -R 1000:1000 task4
chmod -R 750 task4
touch "file.ini"
mv ./file.ini ./task4
ls -la ./task4/*.ini
find ./task4/*.php
rm -rf ./task4
mysql -h localhost -u root -p1 candidate
\! mysqldump -u root -p1 candidate > database_dump.sql
ssh -p 23 user@remote
git clone https://user@remote/var/www/html/repo/project.git ./project1
git checkout -b "future-1"
git commit -m "future-1.1"
git checkout master
git checkout future-1 && git merge master