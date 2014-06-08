/*
*
* houseGarage_Open [player]
*/

private["_name", "_exdata", "_setarr", "_price", "_canbuy", "_car_spawn"];

_exdata = missionNamespace getVariable "house_current_exdata";

if(isNil "_exdata") exitWith
{
	hint "Error: exdata is NULL. Cancelling.";
};

if( (call life_donator) < 1) exitWith { hint "You are not a donor!"; };
if( ! ([_exdata, "donator"] call life_fnc_houseExtractDataVal) ) exitWith { hint "This is not a donor-house!"; };

_name = [_exdata, "name"] call life_fnc_houseExtractDataVal;
_car_spawn = [_exdata, "marker_car_spawn"] call life_fnc_houseExtractDataVal;

hint "Open Garage ...";
sleep 1;


//Call vehicle Garage
[[getPlayerUID player,playerSide,"Air",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Air";
createDialog "Life_impound_menu_free";
disableSerialization;
ctrlSetText[2802,"loading vehicles ..."];
life_garage_sp = _car_spawn;


