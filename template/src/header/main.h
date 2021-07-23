// **************
// *** main.h ***
// **************

#ifndef MAIN_H 
	#define MAIN_H 

  // ================
  // * Define utile *
  // ================
  #define ON    1
  #define OFF   2
  #define TRUE  1
  #define FALSE 0

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
  #include "scene_title_screen.h"
  #include "scene_init.h"
 
  // --------------------
  // * Fichier de Class *
  // --------------------
  #include "class_manager.h"
  
  // ----------------
  // * Fichier data *
  // ----------------
  #include "data.h"
 
  // ================================================
  // * Configuration du header de la Master system  *
  // ================================================
  
  // + ----------- +
  // * Sega Header *
  // + ----------- +
  
  #define HEADER_PRODUCTION 0
  #define HEADER_VERSION 0
  
  // + ----------- +
  // * SDSC Header *
  // + ----------- +
  #define SDSC_ON ON
  #define HEADER_NOM "TEMPLATE"
  #define HEADER_VER_MAJ 0
  #define HEADER_VER_MIN 0
  #define HEADER_AUTEUR "Monos"
  #define HEADER_DESCRIPTION "bla bla"
   
#endif