// ****************************************************
// * Nom du jeu ....... :                             *
// * Programmeur ...... :                             *
// * Date ............. :                             *
// ****************************************************

// ==============
// |   main.c   |
// ==============

// ===================
// * Fichier include *
// ===================
#include "header/main.h"

// ==================================================================
// * En tête de la rom pour que cela soit lisible sur Master System *
// ==================================================================

// + ------------ +
// * Header Value *
// + ------------ +
SMS_EMBED_SEGA_ROM_HEADER(0, 0);

// + ---- +
// * SDSC *
// + ---- +
SMS_EMBED_SDSC_HEADER_AUTO_DATE(HEADER_VER_MAJ,HEADER_VER_MIN,HEADER_AUTEUR,HEADER_NOM,HEADER_DESCRIPTION);

// ======================================
// * Declaration des variables globales *
// ======================================


// =================
// * Fonction main *
// =================
void main()
{
  // + ------------------------- +
  // * Declaration des variables *
  // + ------------------------- +
  
  // + ------------------------ +
  // * Initiation de la console *
  // + ------------------------ +  
  set_scene(SCENE_INIT);
  
  // + ------------------- +
  // * Boucle du programme *
  // + ------------------- +
	while(1)
	{        
    // + ------------------- +
    // * Gestion du Workflow *
    // + ------------------- +
    switch(get_scene())
    {
      // + ----------------- +
      // * Initiation du jeu *
      // + ----------------- +
      case SCENE_INIT:
        scene_init();
      break;
      
      // + ------------------ +
      // * Ecran Titre du jeu *
      // + ------------------ +
      case SCENE_TITLE_SCREEN:
        scene_title_screen();
      break;
        
    } // End switch
        
	} // End While   	
} // End main