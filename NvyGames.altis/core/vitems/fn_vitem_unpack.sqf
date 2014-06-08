/*

	Unpacks a vitem with shortname
	
	VOID unpack [SHORTNAME]

*/

private["_shortname", "_classname","_canadd","_itemInfo"];

_shortname = _this select 0;
_classname = "";

//Unholster ##112
if(life_n_holstered) then
{
	[false] call life_fnc_holsterWeapons;
};


if(life_action_inUse) exitWith {};

if( !([_shortname] call life_fnc_vitem_isVItem)) exitWith
{
	hint "Item is not a virtual item!";
};

//find classname
{
	if( (_x select 0) == _shortname ) exitWith
	{
		_classname = _x select 1;
	};
}
foreach life_vitems_shrtToClass;

if(_classname == "") exitWith
{
	hint "Item is not an auspackbares item!";
};

life_action_inUse = true;

//exec
player say3D "unpack";
hint "Item is unpacked ...";
sleep 2;

life_action_inUse = false;

_canadd = true;
//Same check like in weaponShopBuySell
////////////////////////////////////////////

_itemInfo = [_classname] call life_fnc_fetchCfgDetails;

if((_itemInfo select 6) != "CfgVehicles") then
{
	if((_itemInfo select 4) in [4096,131072]) then
	{
		if(!(player canAdd _classname)) then {_canadd = false;};
	};
};


////////////////////////////////////////////



if(_canadd) then
{
	if(!([false,_shortname,1] call life_fnc_handleInv)) exitWith
	{			
		hint "Could Item not take!";
	};

	//Add item
	[_classname,true,false,true,false] call life_fnc_handleItem;

	//Hotfix in for cop gear
	if(playerSide == west) then
	{
		[] call life_fnc_saveGear;
	}
	else
	{
		[] call life_fnc_civSaveGear;
	};
	
	[1,false] call life_fnc_sessionHandle;
	[] call life_fnc_p_updateMenu;
	hint "Unpacked Successfully.";
	
	//Update clothing ##86
	[] spawn life_fnc_updateClothing;
}
else
{
	hint "Item could not be unpacked. No place!";	
};

