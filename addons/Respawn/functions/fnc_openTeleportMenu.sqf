﻿/*
 * Author: [Tuntematon]
 * [Description]
 *
 * Arguments:
 * 0: Target <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [OBJ] call Tun_Respawn_fnc_openTeleportMenu
 */
#include "script_component.hpp"
params ["_target"];
createDialog "TP_Dialog";

[] call FUNC(marker_update);

private _listIDC = 300001;

GVAR(tpMenuOpenedFrom) = _target;
{
	private _obj = _x;
	private _teleportConditioText = format ["_target = '%1' call BIS_fnc_objectFromNetId; %2", _target call BIS_fnc_netId, _obj getVariable [QGVAR(teleportConditio), "true"]];
	private _teleportConditio = call compile (_teleportConditioText);
	private _teleportName = _obj getVariable [QGVAR(teleportName), "TP"];
	private _targetObj = _obj getVariable [QGVAR(teleportObject), objNull];
	private _notSame = ( _target != _targetObj && _target != _obj );

	if ( _notSame && _teleportConditio) then {
		private _objNetId = _obj call BIS_fnc_netId; 
		private _index = lbAdd [_listIDC, _teleportName];
		lbSetData [_listIDC, _index, _objNetId];
	};
} forEach GVAR(teleportPoints);