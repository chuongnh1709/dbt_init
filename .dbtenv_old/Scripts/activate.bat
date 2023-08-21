@echo off

rem This file is UTF-8 encoded, so we need to update the current code page while executing it
for /f "tokens=2 delims=:." %%a in ('"%SystemRoot%\System32\chcp.com"') do (
    set _OLD_CODEPAGE=%%a
)
if defined _OLD_CODEPAGE (
    "%SystemRoot%\System32\chcp.com" 65001 > nul
)

set VIRTUAL_ENV=C:\Users\chuong.nguyenh2\Documents\learn_dbt\.dbtenv

if not defined PROMPT set PROMPT=$P$G

if defined _OLD_VIRTUAL_PROMPT set PROMPT=%_OLD_VIRTUAL_PROMPT%
if defined _OLD_VIRTUAL_PYTHONHOME set PYTHONHOME=%_OLD_VIRTUAL_PYTHONHOME%

set _OLD_VIRTUAL_PROMPT=%PROMPT%
set PROMPT=(.dbtenv) %PROMPT%

if defined PYTHONHOME set _OLD_VIRTUAL_PYTHONHOME=%PYTHONHOME%
set PYTHONHOME=

if defined _OLD_VIRTUAL_PATH set PATH=%_OLD_VIRTUAL_PATH%
if not defined _OLD_VIRTUAL_PATH set _OLD_VIRTUAL_PATH=%PATH%

set PATH=%VIRTUAL_ENV%\Scripts;%PATH%
set VIRTUAL_ENV_PROMPT=(.dbtenv) 

set ORA_PYTHON_DRIVER_TYPE=thin
set DBT_PROFILES_DIR=C:\Users\chuong.nguyenh2\Documents\learn_dbt
set DBT_ORACLE_USER=appdeploy
set DBT_ORACLE_PASSWORD=VN00D5HD
set DBT_ORACLE_HOST=DBVN00D5HD.CZ.INFRA
set DBT_ORACLE_SERVICE=VN00D5HD.CZ.INFRA
set DBT_ORACLE_DATABASE=VN00D5HD
set DBT_ORACLE_SCHEMA=ldm_fin

:END
if defined _OLD_CODEPAGE (
    "%SystemRoot%\System32\chcp.com" %_OLD_CODEPAGE% > nul
    set _OLD_CODEPAGE=
)
