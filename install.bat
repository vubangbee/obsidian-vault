@echo off
REM install.bat - kiem tra nhanh template (Windows, khong can quyen admin)
setlocal
cd /d "%~dp0"

echo [1/2] File van hanh (ten ASCII):
for %%F in (AGENTS.md Home.md index.md log.md README.md) do (
  if exist "%%F" (echo   OK: %%F) else (echo   THIEU: %%F)
)

echo [2/2] Thu muc (mo Explorer doi chieu neu can):
echo   00 Inbox / 08 Quyet dinh / 09 Playbooks / 11 Creative /
echo   12 Insight khach hang / 14 Nguoi / 16 Hoc tap / 17 Ca nhan /
echo   Templates / 10 Kien thuc / Bases
if exist "Templates" (echo   OK: Templates\) else (echo   THIEU: Templates\)
if exist "Bases" (echo   OK: Bases\) else (echo   THIEU: Bases\)
if exist "Bases\*.base" (echo   OK: Bases\*.base) else (echo   THIEU: Bases\*.base)

echo.
echo Khong push secret: .obsidian\plugins\*\data.json, .obsidian\workspace.json
echo Xong. Mo Obsidian -^> Open vault -^> chon folder nay.
