@echo off

rem ==============================================
rem * Configuration du fichier bat pour gros jeu *
rem ==============================================

rem ----------------------
rem - Nom du fichier sms -
rem ----------------------
set nom=bankswitching

rem ------------------------------
rem - Nom du repertoir de sortie -
rem ------------------------------
set sortie=bin

rem -----------------------------------
rem - Nom du repertoir du code source -
rem -----------------------------------
set adrsource=src

rem -------------------
rem - Lien de ihx2sms -
rem -------------------
set adrihx2sms=..\..\tool\
set adr_tool=..\..\tool\
rem ------------------
rem - Lien de la lib -
rem ------------------
set adrsdk=..\..\devkitsms\

rem -------------------------------------------
rem - Lien du dossier bin du compilateur SDCC -
rem -------------------------------------------
set adrsdcc=..\..\sdcc\bin\

rem =============================================================
rem * Test si le repertoir de sortie existe sinon il est genere *
rem =============================================================
:suite
if not exist %sortie% goto :newrep

echo ----------------------------------------------
echo -- Projet %nom%
echo ----------------------------------------------
echo ---------------------
echo -- Version de SDCC --
echo ---------------------
%adrsdcc%sdcc -v 

rem ==============================
rem * Compilation des fichiers C *
rem ==============================
echo -----------------------------
echo - Compilation des fichier c -
echo -----------------------------

for %%i in (%adrsource%\*.*) do ( 
echo %%~ni

%adrsdcc%sdcc -c -mz80 --std-c17 --peep-file peep-rules.txt -I%adrsdk%include %adrsource%/%%~nxi
 )

pause
rem =================================
rem ** linkage des fichiers objets **
rem =================================
echo -----------------------------------
echo - linkage des fichiers rel et lib -
echo ----------------------------------
%adrsdcc%sdcc -o sms.ihx -mz80  --std-c17 --no-std-crt0 --data-loc 0xC000 -Wl-b_BANK2=0x8000 -Wl-b_BANK3=0x8000 -Wl-b_BANK4=0x8000 -Wl-b_BANK5=0x8000 -Wl-b_BANK6=0x8000 -Wl-b_BANK7=0x8000 %adrsdk%lib/crt0_sms.rel %adrsdk%lib/SMSlib.lib %adrsdk%lib/PSGlib_MB.rel *.rel data_bank/*.rel

rem =====================
rem ** Creation de bin **
rem =====================

echo ---------------------------
echo - Creation du fichier sms -
echo ---------------------------
echo -
echo ---------------
echo --- ihx2sms ---
echo ---------------
%adrihx2sms%ihx2sms -pp sms.ihx %sortie%/%nom%.sms


echo.
if exist "%sortie%/%nom%.sms" echo --- Le fichier %nom%.sms vient d'etre genere dans le repertoir %sortie% ---
echo.

pause

echo ---------------
echo -- netoyages --
echo ---------------
if exist "*.sym" del *.sym
if exist "*.ihx" del *.ihx
if exist "*.lk"  del *.lk
if exist "*.noi" del *.noi
if exist "*.rel" del *.rel
if exist "*.lst" del *.lst
if exist "*.asm" del *.asm
if exist "*.map" del *.map


pause
exit

rem ===================================
rem ** Creation du dossier de sortie **
rem ===================================
:newrep
mkdir %sortie%
goto :suite