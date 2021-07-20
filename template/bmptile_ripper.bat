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

echo ---------
echo palette :
echo ---------
%bmp2tile% media\tileset\tileset.bmp -palsms -savepalette data\tileset_palette.bin -exit

echo --------
echo patern :
echo --------
%bmp2tile% media\tileset\tileset.bmp -removedupes -nomirror -savetiles data\tileset.psgcompr -exit
 
pause





