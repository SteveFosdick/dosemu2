@echo off
rem generic autoexec.bat for DOSEMU + any DOS
rem must be edited in most circumstances
path c:\dos;c:\windows\command;e:\dosemu
set TEMP=c:\tmp
sound /e
prompt $P$G
unix -s DOSDRIVE_EXTRA
if "%DOSDRIVE_EXTRA%" == "" goto nodrived
lredir -n \\linux\fs%DOSDRIVE_EXTRA%
:nodrived
rem uncomment to load another bitmap font
rem mode con codepage prepare=((850) c:\dos\ega.cpi)
rem mode con codepage select 850
rem chcp 850
lredir -nC \\linux\fs/media/cdrom
system -s DOSEMU_VERSION
echo "Welcome to dosemu2 %DOSEMU_VERSION%!"
system -ep
