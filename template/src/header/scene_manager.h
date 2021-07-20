// ***********************
// *** Scene_Manager.h ***
// ***********************

#ifndef  SCENE_MANAGER_H
  #define SCENE_MANAGER_H
  
  // ==========================
  // * Macro et Configuration *
  // ==========================
  #define SCENE_INIT   0
  #define SCENE_TITLE_SCREEN 10

  // ==========================================
  // * Signatures des fonctions et procedures *
  // ==========================================
  void set_scene(unsigned char id_scene); // Modifie la variable g_scene. 
  unsigned char get_scene();              // Lis le contenue de la variable g_scene.

#endif