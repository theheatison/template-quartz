@echo off
echo Starting sync...
cd /d D:\Projects\template-quartz
git add .
git commit -m "update notes"
git push
echo Sync completed!
timeout 5