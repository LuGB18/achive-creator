@echo off
color a
title ARCHIVER
        set host=TYPE HOST
        set database=TYPE DATABASE
        set port=TYPE PORT
        set user=TYPE USER
        set password=TYPE PASSWORD
if exist config.fsf (
    config.fsf > (
        set /p host
        set /p database
        set /p port
        set /p user
        set /p password
    )
    cls
    echo LOADED!
    pause
    cls
    goto show
) 
else (
    (
        echo %host%=TYPE HOST
        echo %database%=TYPE DATABASE
        echo %port%=TYPE PORT
        echo %user%=TYPE USER
        echo %password%=TYPE PASSWORD
    ) > config.fsf
    cls
    echo CONFIG FILE CREATED!
    pause
    cls
    goto show
)

:show
cls
echo HOST IN CONFIG.FSF:%host%
echo DATABASE IN CONFIG.FSF:%database%
echo PORT IN CONFIG.FSF:%port%
echo USER IN CONFIG.FSF:%user%
echo PASSWORD IN CONFIG.FSF:%password%
pause
cls
exit