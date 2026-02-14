@echo off
setlocal EnableDelayedExpansion
pushd "%CD%"
CD /D "%~dp0"

:: === Настройки пользователя ===
set "company=Msi"
set "date=%date:~-4%%date:~4,2%%date:~7,2%"

:: === Исходные серийники (шаблоны) ===
set "serial14=9Ni7LxdKGLw7Rhy2oE8ILWGZ"
set "serial15=2.Z3"
set "serial16=05/03/2018"

set "serial1=2859530857"
set "serial2=i62FFFE01"
set "serial3=1.1"
set "serial4=5768504"
set "serial10=UU56xYidq"

set "serial5=7400294837"
set "serial6=JhludldeaJMNAsqZOCvtoNmhbwyE6fv6"
set "serial7=4.6"  
set "serial8=qCaIT4MTBNZST2ko7Px"
set "serial9=94009ce1aed7d9"

set "serial11=8675003972"
set "serial12=974630695"
set "serial13=1.3"

:: ===========================================================================
:: === РАНДОМИЗАЦИЯ СЕРИЙНИКОВ (с корректной датой для serial16) =============
:: ===========================================================================

:: Все, кроме serial16
set "serial_list=serial1 serial2 serial3 serial4 serial5 serial6 serial7 serial8 serial9 serial10 serial11 serial12 serial13 serial14 serial15"

for %%s in (%serial_list%) do (
    call :Randomize "%%s"
)

:: === ОБРАБОТКА ДАТЫ ОТДЕЛЬНО (serial16) ===
call :GenerateValidDate
goto :AfterRandomize

:: ------------------------------------------------------------------
:Randomize
set "name=%~1"
call set "val=%%%name%%%"
set "result="

:CharLoop
if not defined val goto :ApplyResult
set "char=!val:~0,1!"
set "val=!val:~1!"

:: Цифра?
for %%d in (0 1 2 3 4 5 6 7 8 9) do if "%%d"=="!char!" (
    set /a rand=!RANDOM! %% 10
    set "result=!result!!rand!"
    goto :CharLoop
)

:: Заглавная?
for %%c in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if "%%c"=="!char!" (
    set /a rand=!RANDOM! %% 26
    set "abc=ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    call set "letter=%%abc:~!rand!,1%%"
    set "result=!result!!letter!"
    goto :CharLoop
)

:: Строчная?
for %%c in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do if "%%c"=="!char!" (
    set /a rand=!RANDOM! %% 26
    set "abc=abcdefghijklmnopqrstuvwxyz"
    call set "letter=%%abc:~!rand!,1%%"
    set "result=!result!!letter!"
    goto :CharLoop
)

:: Спецсимвол
set "result=!result!!char!"
goto :CharLoop

:ApplyResult
set "%name%=%result%"
exit /b
:: ------------------------------------------------------------------

:: ------------------------------------------------------------------
:GenerateValidDate
:: Генерируем день: 01–28
set /a day=!RANDOM! %% 28 + 1
if %day% lss 10 set "day=0%day%"

:: Генерируем месяц: 01–12
set /a month=!RANDOM! %% 12 + 1
if %month% lss 10 set "month=0%month%"

:: Генерируем год: 2006–2024
set /a year=!RANDOM! %% 19 + 2006

set "serial16=%day%/%month%/%year%"
exit /b
:: ------------------------------------------------------------------

:AfterRandomize

:: === Применение рандомизированных серийников через AMIDEWIN ===
AMIDEWINx64.EXE /IVN %serial14%
AMIDEWINx64.EXE /IV %serial15%
AMIDEWINx64.EXE /ID %serial16%

AMIDEWINX64 /SM %serial2%
AMIDEWINx64 /SP %serial10%
AMIDEWINX64 /SV %serial3%
AMIDEWINX64 /SS %serial1%
AMIDEWINX64 /SU AUTO
AMIDEWINX64 /SK %serial4%
AMIDEWINx64 /SF "WARD"

AMIDEWINX64 /BM %serial6%
AMIDEWINx64 /BP %serial8%
AMIDEWINX64 /BV %serial7%
AMIDEWINX64 /BS %serial5%
AMIDEWINx64 /BT %serial9%
AMIDEWINx64 /BLC "Default string"

AMIDEWINx64 /CM "Micro-Star International Co., Ltd."
AMIDEWINx64 /CT "03h"
AMIDEWINx64 /CV %serial13%
AMIDEWINx64 /CS %serial12%
AMIDEWINx64 /CA "Default string"
AMIDEWINx64 /CO "0000 0000h"
AMIDEWINx64 /CSK "Default string"

AMIDEWINx64 /PSN %serial11%
AMIDEWINx64 /PAT "To Be Filled By O.E.M."
AMIDEWINx64 /PPN "To Be Filled By O.E.M."

:: === Завершение ===
net stop winmgmt

echo msgbox "Made by Cod3 Team, Enjoy!" > "%tmp%\tmp.vbs"
wscript "%tmp%\tmp.vbs"
del "%tmp%\tmp.vbs"

popd
exit /b