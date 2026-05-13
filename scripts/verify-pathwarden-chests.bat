@echo off
:: verify-pathwarden-chests.bat
:: Check whether Lesser Coalesced Mana (WCID 800000) is present in all 4 Pathwarden chests
:: Usage: set ACE_MYSQL_USER and ACE_MYSQL_PASSWORD env vars, then run this batch

setlocal EnableDelayedExpansion

if "%ACE_MYSQL_USER%"=="" (
    echo ERROR: Set ACE_MYSQL_USER environment variable.
    exit /b 1
)
if "%ACE_MYSQL_PASSWORD%"=="" (
    echo ERROR: Set ACE_MYSQL_PASSWORD environment variable.
    exit /b 1
)

set MYSQL="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
if not exist %MYSQL% (
    echo ERROR: mysql.exe not found at %MYSQL%. Set MYSQL_EXE env var to override.
    exit /b 1
)

echo =========================================
echo Checking Pathwarden chests for WCID 800000
echo Databases: void-test_world and ace_world
echo =========================================
echo.

for %%D in (void-test_world ace_world) do (
    echo --- Database: %%D ---
    %MYSQL% -u%A ACE_MYSQL_USER% -p%A ACE_MYSQL_PASSWORD% -e "SELECT object_Id AS ChestId, CASE object_Id WHEN 33609 THEN 'Aluvian' WHEN 33610 THEN 'Gharundim' WHEN 33611 THEN 'Sho' WHEN 33612 THEN 'Viamontian' END AS ChestName, weenie_Class_Id, stack_Size, init_Create, max_Create FROM weenie_properties_generator WHERE object_Id IN (33609,33610,33611,33612) AND weenie_Class_Id = 800000;" %%D
    if !ERRORLEVEL! NEQ 0 (
        echo   [ERROR] Could not query %%D
    ) else (
        echo   [Done querying %%D]
    )
    echo.
)

echo =========================================
echo If you see 4 rows per database (Aluvian, Gharundim, Sho, Viamontian), the SQL is applied.
echo If any chest is missing, run:  bash scripts/deploy-void-test.sh
echo =========================================
