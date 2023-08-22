// ****************************************************
// *       Exemple Simple Bank Switching.c            *
// ****************************************************
// * Nom du jeu ....... : Exemple                     *
// * Programmeur ...... : Jean Monos                  *
// * Date ............. : 22/08/2023                  *
// ****************************************************

// ===================
// * Fichier include *
// ===================
#include "header/main.h"

// ==================================================================
// * En tête de la rom pour que cela soit lisible sur Master System *
// ==================================================================

// + ----------- +
// * Sega Header *
// + ----------- +
SMS_EMBED_SEGA_ROM_HEADER(HEADER_PRODUCTION,HEADER_VERSION);

// + ----------- +
// * SDSC Header *
// + ----------- +
#if SDSC_ON == ON
  SMS_EMBED_SDSC_HEADER_AUTO_DATE(HEADER_VER_MAJ,HEADER_VER_MIN,HEADER_AUTEUR,HEADER_NOM,HEADER_DESCRIPTION);
#endif

// =================
// * Fonction main *
// =================
void main(void)
{
  unsigned int i;
  
  SMS_mapROMBank(2);
  
  SMS_displayOff();
  SMS_loadPSGaidencompressedTiles(logo_screen_psgcompr, 0);
  SMS_loadBGPalette(logo_screen_palette_bin);
  SMS_loadSTMcompressedTileMap(0,0,(unsigned int *)logo_screen_tilemap_stmcompr); 
  SMS_displayOn();
  SMS_mapROMBank(3);
  
  
  for(i=0;i<120;i++)
  {
    SMS_waitForVBlank ();
  }
  SMS_displayOff();
  SMS_loadPSGaidencompressedTiles(screen_intro_psgcompr, 0);
  SMS_loadBGPalette(screen_intro_palette_bin);
  SMS_loadSTMcompressedTileMap(0,0,(unsigned int *)screen_intro_tilemap_stmcompr); 
  SMS_displayOn();
  // ============================
  // * Boucle du programme test *
  // ============================
	while(1)
	{        
    SMS_waitForVBlank ();
        
	} // End While   	
  
} // End fonction