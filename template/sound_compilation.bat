@echo off
echo ++++++++++++++++++++++++++++++++++
echo * compilation des sfx et musique *
echo ++++++++++++++++++++++++++++++++++

rem ---------------------------
rem * Configuration du script *
rem ---------------------------
set vgmpsg=..\..\tool\vgm2psg.exe
set psgcomp=..\..\tool\psgcomp.exe

%vgmpsg% media\music\title_screen_1.vgm data\title_screen_music.psg
%psgcomp% data\title_screen_music.psg data\title_screen_music_comp.psg

pause 