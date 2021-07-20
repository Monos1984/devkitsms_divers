// **************
// *** main.h ***
// **************

#ifndef MAIN_H 
	#define MAIN_H 

	// =============================
	// * Fichier include du projet *
	// =============================

	// + ------------------ +
	// * Librairie générale *
	// + ------------------ +
	#include <SMSlib.h> // Master System
	
	// + ----------------------------- +
	// * Fichier includes du programme *
	// + ----------------------------- +
  
  // --------------------
  // * Fichier de scene *
  // --------------------
  #include "scene_manager.h"
  #include "scene_title_screen.h"
  #include "scene_init.h"
 
  // --------------------
  // * Fichier de Class *
  // --------------------
  
  // ----------------
  // * Fichier data *
  // ----------------
  #include "data.h"
 
  // ================================================
  // * Configuration du header de la Master system  *
  // ================================================
  #define HEADER_VER_MAJ 0
  #define HEADER_VER_MIN 0
  #define HEADER_AUTEUR "Monos"
  #define HEADER_NOM "TEMPLATE"
  #define HEADER_DESCRIPTION "bla bla"
   
#endif