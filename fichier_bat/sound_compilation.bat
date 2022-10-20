@echo off
echo ++++++++++++++++++++++++++++++++++
echo * compilation des sfx et musique *
echo ++++++++++++++++++++++++++++++++++

rem ------------------------------------------------------------
rem vgmpsg ...: Logiciel pour transformer un fichier VGM en PSG
rem psgcomp ..: Logiciel de compression
rem version ..: 20/10/22
rem ------------------------------------------------------------

rem ---------------------------
rem * Configuration du script *
rem ---------------------------
set vgmpsg=..\..\tool\vgm2psg.exe
set psgcomp=..\..\tool\psgcomp.exe
set adrsource=data_vgm
set adrcible=data

for %%i in (%adrsource%\*.vgm) do ( 
echo ==========================
echo %%~nxi
echo ==========================

%vgmpsg% %adrsource%\%%~ni.vgm %adrcible%\%%~ni.psg
%psgcomp% %adrcible%\%%~ni.psg %adrcible%\%%~ni.psg
)

pause
 