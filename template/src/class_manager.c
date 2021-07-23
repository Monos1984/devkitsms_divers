// ****************************************************
// *                 class_manager.c                  *
// ****************************************************

// ===================
// * Fichier include *
// ===================
#include "header/class_manager.h"

// ======================================
// * Déclaration des variables globales *
// ======================================
static unsigned char scene;

// =======================
// * Set_Scene(id_scene) *
// =======================
void set_scene(unsigned char id_scene)
{
  scene = id_scene;
}

// =================
// ** Get_Scene() **
// =================
unsigned char get_scene()
{
  return (scene);
}