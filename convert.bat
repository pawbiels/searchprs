@echo off
cd /d "%~dp0"
pandoc -o readme.docx -f markdown -t docx readme.md
pause