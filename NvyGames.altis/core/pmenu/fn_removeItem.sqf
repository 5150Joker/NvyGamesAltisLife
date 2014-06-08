/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "You have nothing selected to remove.";};
if(!([_value] call fnc_isnumber)) exitWith {hint "You've given no current number."};
if(parseNumber(_value) <= 0) exitWith {hint "You must have a current number which you want to remove."};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["This is an illegal item, because police officers are in the vicinity can not destroy the item.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["You can remove any items while you're in the vehicle.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Specified number could not be destroyed, maybe you do not have this number?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["You have successfully %1 %2 is removed from your inventory.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;