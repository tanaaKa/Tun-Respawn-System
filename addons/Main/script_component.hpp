#define COMPONENT Main
#define PREFIX Tun

#define MAJOR 1
#define MINOR 7
#define PATCHLVL 5
#define BUILD 20042023

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 2.06

#define DEBUG_MODE_FULL

#include "\z\ace\addons\main\script_macros.hpp"

// Default versioning level
#define DEFAULT_VERSIONING_LEVEL 2

//AAR update macro
#define AAR_UPDATE(OBJ,VARNAME,VALUE) if ( !isnil "afi_aar2" ) then { [OBJ, VARNAME, VALUE] call afi_aar2_fnc_addcustomdata; };