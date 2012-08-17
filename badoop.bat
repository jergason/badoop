@echo off

if defined TODO (
    set BADOOP=%TODO%
) else (
    set BADOOP=%HOMEDRIVE%%HOMEPATH%\.todo.txt
)

:BADOOP
if "%1" == "" (
    :: Print out the todo file
    if exist "%BADOOP%" (
        type "%BADOOP%"
    )
) else if "%1" == "-h" (
    goto BADOOP_USAGE
) else if "%1" == "-d" (
    goto BADONE
) else (
    :: Add a new todo
    echo   * %* >> "%BADOOP%"
)
exit /B 0

:BADOOP_USAGE
echo badoop
echo   -h: Print this help
echo   -d: Delete any todo items matching remaining arguments
echo   with no flags: add the string passed in to the todo list
echo   with no arguments: print out todo list
exit /B 0

:: Badoop-done. Delete from todo list
:BADONE
:: NOTE: This sometimes prints "The system cannot find the drive specified."
:: Don't know why that is, but it works anyway. It will fail line 41 of the 
:: roundup test because of that.

if exist "%BADOOP%" (
    :: Can't do this inline like sed, so we're using a temp file
    :: findstr complains about the -d but ignores it
    findstr /v /r %* "%BADOOP%" 1> C:\TEMP\badooptemp.txt
    type C:\TEMP\badooptemp.txt > "%BADOOP%"
)
exit /B 0
