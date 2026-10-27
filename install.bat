@echo off
REM install.bat - kiem tra nhanh template Obsidian-Style (Windows, khong can quyen admin)
setlocal
cd /d "%~dp0"

echo [1/2] File van hanh (ten ASCII):
for %%F in (AGENTS.md Home.md index.md log.md README.md) do (
  if exist "%%F" (echo   OK: %%F) else (echo   THIEU: %%F)
)

echo [2/2] Thu muc Obsidian-Style:
echo   Daily / Dev Logs / Tasks / Projects / People / Boards /
echo   Knowledge / Learning / Ideas / Content / Goals / Health /
echo   Finances / Jobs / Businesses / Mentions / Reviews / Templates / _trash
for %%D in (Daily Tasks Projects People Knowledge Learning Ideas Content Goals Reviews Templates _trash) do (
  if exist "%%D" (echo   OK: %%D\) else (echo   THIEU: %%D\)
)
if exist "references\vault-schema.md" (echo   OK: references\vault-schema.md) else (echo   THIEU: references\vault-schema.md)

echo.
echo Khong push secret: .obsidian\plugins\*\data.json, .obsidian\workspace.json
echo Xong. Mo Obsidian -^> Open vault -^> chon folder nay.
