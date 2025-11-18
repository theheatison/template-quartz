@echo off
echo 🚀 开始同步笔记到网站...
cd /d D:\Projects\template-quartz
git add .
git commit -m "更新笔记: %date% %time%"
git push origin main
echo.
echo ✅ 同步完成！网站更新中...
echo 🌐 网站地址：https://theheatison.github.io/template-quartz/
timeout 5