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
  
  // -------------------
  // * Header des bank *
  // -------------------
  #include "bank2.h"
  #include "bank3.h"
  #include "bank4.h"
  #include "bank5.h"
  #include "bank6.h"
  #include "bank7.h"
  
  // ================================================
  // * Configuration du header de la Master system  *
  // ================================================
  
  /***************************************************************************************
    ---------------
    - Sega Header -
    ---------------
    Le Header Production est le numero du jeu qui figure sur la boite. 
   
    - 4xxx sont les jeux de 32ko
    - 50xx / 55xx (pile) et 250xx/255xx (pile) sont les jeux de 128ko (  Mega Cartridge)
    - 70xx / 75xx (pile) et 270xx/275xx (pile) sont les jeux de 256ko (2 Mega Cartridge)
    - 90xx / 95xx (pile) et 290xx/295xx (pile) sont les jeux de 512ko (4 Mega Cartridge)
    La valeur 5 en en 2/3em positions veux dire qu'il y a une "pile" de sauvegarde.
    
  
    Le Header de production est tous simplement la revision du jeu.
    
    ---------------
    - SDSC Header -
    ---------------
    Le SDSC est une norme d'information pour les émulateurs. Elle n'est pas du tout obligatoire.
    Seul les informations du Sega Header est obligatoire pour faire fontionner un jeu sur une vrais machine.
    
    - SDSC_ON : ON/OFF  OFF pour pas integrer les infos sur la cartouche. (Gain d'une 40en octets)
    - HEADER_NOM : Nom du jeu
    - HEADER_VER_MAJ : Version Majeur du jeu
    - HEADER_VER_MIN : Version Mineur du jeu
    - HEADER_AUTEUR : Nom de l'auteur
    - HEADER_DESCRIPTION : Une petite Description
  
  ********************************************************************************************/
   
  // + ----------- +
  // * Sega Header *
  // + ----------- +  
  #define HEADER_PRODUCTION 5000
  #define HEADER_VERSION 0
  
  // + ----------- +
  // * SDSC Header *
  // + ----------- +
  #define SDSC_ON OFF
  #define HEADER_NOM "Exemple"
  #define HEADER_VER_MAJ 0
  #define HEADER_VER_MIN 0
  #define HEADER_AUTEUR "Monos"
  #define HEADER_DESCRIPTION "bla bla"
   
#endif