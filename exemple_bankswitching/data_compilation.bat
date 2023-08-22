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
set destination=data_bank

%folder% -h
pause

echo ---------------------------------
echo * Build data.c from data folder *
echo ---------------------------------
%folder% data_bk2 bank2
%folder% data_bk3 bank3
%folder% data_bk4 bank4
%folder% data_bk5 bank5
%folder% data_bk6 bank6
%folder% data_bk7 bank7

echo ---------------
echo * compilation *
echo --------------- 

%sdcc% -c -mz80 --constseg BANK2 bank2.c  
%sdcc% -c -mz80 --constseg BANK3 bank3.c
%sdcc% -c -mz80 --constseg BANK4 bank4.c
%sdcc% -c -mz80 --constseg BANK5 bank5.c 
%sdcc% -c -mz80 --constseg BANK6 bank6.c
%sdcc% -c -mz80 --constseg BANK7 bank7.c
pause

echo --------------------------
echo * Deplacement de fichier *
echo --------------------------
copy bank2.rel %destination%\bank2.rel
copy bank2.h %source%\header\bank2.h

copy bank3.rel %destination%\bank3.rel
copy bank3.h %source%\header\bank3.h

copy bank4.rel %destination%\bank4.rel
copy bank4.h %source%\header\bank4.h

copy bank5.rel %destination%\bank5.rel
copy bank5.h %source%\header\bank5.h

copy bank6.rel %destination%\bank6.rel
copy bank6.h %source%\header\bank6.h

copy bank7.rel %destination%\bank7.rel
copy bank7.h %source%\header\bank7.h

echo -------------------------
echo * Netoyage des fichiers *
echo -------------------------
del *.c
del *.h

if exist "*.sym" del *.sym
if exist "*.ihx" del *.ihx
if exist "*.lk"  del *.lk
if exist "*.noi" del *.noi
if exist "*.rel" del *.rel
if exist "*.lst" del *.lst
if exist "*.asm" del *.asm
if exist "*.map" del *.map
pause
