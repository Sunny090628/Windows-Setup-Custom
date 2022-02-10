::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGmW+0UiKRYUag2OOXj6Tq1EvqHH/OWLq04IR94WdpzP27iCBu8B7UDYfJUi2GlmmcUPBR5WalyibQBU
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJGmW+0g1Kw9HcCeNOGK0AYkv6/ry//6Unk8cQOE3fobX34i5Ke4X5VL3OKUowm9K1egZHw9Xcy6iYBwgqGJO+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@ECHO off
pushd %~dp0
title Windows 10 21H2 Setup
:INSTALL
cls
echo.                                                   [Install] (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.                                                 WINDOWS 10 21H2 SETUP
echo.                                               -------------------------
echo.      About this installation:
echo.          - Language: ENGLISH (US)
echo.          - Architecture: x86_64/AMD64
echo.          - Windows Version: Windows 10 21H2
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                              ----------------------------
echo.                                                Press I to install......
echo.                                              ----------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Install=I About=A Exit=X

choice /c iax /n %1

IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO ABOUT
IF ERRORLEVEL ==1 GOTO INSTALL1
:INSTALL1
cls
echo.                                                   [Install Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.Welcome to Windows Setup!  This programme will guide you through the installation of Windows 10.
echo.
echo.Press N to continue...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Next=N

choice /c n /n %1

IF ERRORLEVEL ==1 GOTO INSTALL2
:INSTALL2
cls
echo.                                                   [Install Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.Now, Please select the disk number that you want to install windows on.
echo.
echo.
diskpart /s list.txt
echo.
echo.
set /p diskno=Disk Number:
echo.
echo.
echo.
echo.Press N to continue...
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Next=N

choice /c n /n %1

IF ERRORLEVEL ==1 GOTO INSTALL3
:INSTALL3
cls
echo.                                                   [Install Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.THIS WILL ERASE ALL DATA ON YOUR DISK!!!  ARE YOU SURE THAT YOU WANT TO CONTINUE?
echo.
echo.PRESS N TO CONTINUE...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Next=N

choice /c n /n %1

IF ERRORLEVEL ==1 GOTO INSTALL4
:INSTALL4
cls
echo.                                                   [Install Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.Please select the edition of Windows you want to install.
echo.
echo.1.Windows 10 Home
echo.2.Windows 10 Home N
echo.3.Windows 10 Home Single Language
echo.4.Windows 10 Education
echo.5.Windows 10 Education N
echo.6.Windows 10 Pro
echo.7.Windows 10 Pro N
echo.8.Windows 10 Pro Education
echo.9.Windows 10 Pro Education N
echo.10.Windows 10 Pro for Workstations
echo.11.Windows 10 Pro N for Workstations
echo.
set /p edition=Edition number:
echo.
echo.
echo.
echo.Press N to continue...
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Next=N

choice /c n /n %1

IF ERRORLEVEL ==1 GOTO INSTALL5
:INSTALL5
cls
echo.                                                   [Install Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.Please indicate which letter to mount the boot disk to. (A-Z)
set /p bootmount=Disk letter:
echo.
echo.
echo.Please indicate which letter to mount the primary partition to. (A-Z)
set /p primount=Disk letter:
echo.
echo.
echo.
echo.
echo.
echo.
echo.Press N to begin the install process.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Next=N

choice /c n /n %1

IF ERRORLEVEL ==1 GOTO INSTALLING
:INSTALLING
cls
echo.                                                [Installing Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.1.Preparing setup scripts...
echo.sel dis %diskno% > install.txt
echo.clean >> install.txt
echo.conv gpt >> install.txt
echo.sel dis %diskno% >> install.txt
echo.cre par efi size=512 >> install.txt
echo.form fs=fat32 >> install.txt
echo.ass letter %bootmount%: >> install.txt
echo.cre par pri >> install.txt
echo.form quick >> install.txt
echo.ass letter %primount%: >> install.txt
echo.Done.
echo.2.Partitioning Disk...
diskpart /s install.txt
echo.Done.
echo.3.Applying Windows .wim image...
Y:
DISM.exe /Apply-Image /ImageFile:install.wim /Index:%edition% /ApplyDir:%primount%:\
echo.Done.
echo.4.Copying boot files...
bcdboot %primount%:\Windows /s %bootmount%:
echo.Done!
echo.
echo.Press R to restart or X to exit setup and continue usage on Windows PE...
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Restart=R Exit Only=X

choice /c R /n %1

IF ERRORLEVEL ==1 Wpeutil Reboot
IF ERRORLEVEL ==2 exit
:ABOUT
cls
echo.                                                   (Install) [About]
echo.------------------------------------------------------------------------------------------------------------------------
echo.(C) Sunny090628.  All rights reserved.
echo.
echo.This Programme is licensed under the GNU version 3 license.  Check at the Github Repository for the license:
echo.https://github.com/Sunny090628/Windows-Setup-Custom/blob/main/LICENSE
echo.
echo.
echo.Version: 1.0
echo.Arch: x86_64
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Install=I About=A Exit=X

choice /c iax /n %1

IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO ABOUT
IF ERRORLEVEL ==1 GOTO INSTALL
:BLANK
cls
echo.                                                   (Install) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Install=I About=A Exit=X

choice /c iax /n %1

IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO ABOUT
IF ERRORLEVEL ==1 GOTO INSTALL
:INSTALLBLANK
cls
echo.                                                   [Install Windows]
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Next=N

choice /c n /n %1

IF ERRORLEVEL ==1 GOTO