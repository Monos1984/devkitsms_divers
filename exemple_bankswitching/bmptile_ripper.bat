@echo off
echo +++++++++++++++++++++++++++++++++++++++++++++++++++
echo *     Transformation graphique avec bmp2 tile     *
echo +++++++++++++++++++++++++++++++++++++++++++++++++++
rem =================
rem * Configuration *
rem =================
set bmp2tile=..\..\tool\bmp2tile05\BMP2TILE.exe

rem ======================================================
rem Palette de l'image :
rem ------------------------------------------------------
rem media\xxx.bmp -palsms -savepalette data\xxx.bin -exit
rem ======================================================

rem ==============================================================================
rem Decoupage de l'image en tileset. Compression psgcompr
rem ------------------------------------------------------------------------------
rem media\xxx.bmp -removedupes -nomirror -savetiles data\xxx.psgcompr  -exit
rem ==============================================================================

rem ===========================================================================
rem Encodage de la tilemap. Compression stmcompr
rem ---------------------------------------------------------------------------
rem  media\xxx.bmp -removedupes -mirror -savetilemap data\xxx.stmcompr  -exit
rem ===========================================================================


echo ============================
echo * Tileset Game             *
echo ============================
set file_name=tileset_games
set destination=data_bk2

%bmp2tile% media\%file_name%.bmp -palsms -savepalette %destination%\%file_name%_pal.bin 
%bmp2tile% media\%file_name%.bmp -noremovedupes -nomirror -savetiles %destination%\%file_name%_tile.psgcompr 


echo ============================
echo * Sprites_game             *
echo ============================
set file_name=sprites_games
set destination=data_bk2

%bmp2tile% media\%file_name%.bmp -palsms -savepalette %destination%\%file_name%_pal.bin 
%bmp2tile% media\%file_name%.bmp -noremovedupes -nomirror -savetiles %destination%\%file_name%_tile.psgcompr 

 

pause


data_compilation.bat



