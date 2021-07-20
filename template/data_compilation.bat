@echo off
echo +++++++++++++++++++++++++
echo * Compilation des datas *
echo +++++++++++++++++++++++++

rem ---------------------------
rem * Configuration du script *
rem ---------------------------
set folder=..\..\tool\folder2c.exe
set sdcc=..\..\sdcc\bin\sdcc
set source=src
echo ---------------------------------
echo * Build data.c from data folder *
echo ---------------------------------
%folder% data data

echo ---------------
echo * compilation *
echo --------------- 

%sdcc% -c -mz80 --std-sdcc99 data.c
pause

echo --------------------------
echo * Deplacement de fichier *
echo --------------------------
copy data.rel rel\data.rel
copy data.h %source%\header\data.h

echo -------------------------
echo * Netoyage des fichiers *
echo -------------------------
del data.c
del data.h

if exist "*.sym" del *.sym
if exist "*.ihx" del *.ihx
if exist "*.lk"  del *.lk
if exist "*.noi" del *.noi
if exist "*.rel" del *.rel
if exist "*.lst" del *.lst
if exist "*.asm" del *.asm
if exist "*.map" del *.map
pause
