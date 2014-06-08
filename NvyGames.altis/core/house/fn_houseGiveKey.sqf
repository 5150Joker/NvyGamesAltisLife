/*

	Gives selected player key

*/
private["_index", "_uid","_name", "_setarr", "_exdata", "_existing", "_tparr", "_housename"];

if( isNull (findDisplay 38700)) exitWith {};
if(life_action_inUse) exitWith {};

_exdata = missionNamespace getVariable "house_current_exdata";

if(isNil "_exdata") exitWith
{
	hint "Error: exdata is NULL. Cancelling.";
};

_housename = [_exdata, "name"] call life_fnc_houseExtractDataVal;

//////////////////////


life_action_inUse = true;


_index = lbCurSel 2100;

if(_index == -1) exitWith {life_action_inUse = false; hint "None Selected."; };

_uid = lbData [2100, _index];
_name = lbText [2100,_index];

if(isNil "_uid") exitWith { life_action_inUse = false; hint "Invalid id."; };

//Check uid
_existing = false;
{
	//ARR schema: [UID,NAME]
	
	if((_x select 0) ==_uid) exitWith
	{
		_existing = true;
	};
}
foreach ([_exdata, "trustedpersons"] call life_fnc_houseExtractDataVal);

//Check for owner
if(([_exdata, "owner"] call life_fnc_houseExtractDataVal) == _uid) then
{
	_existing = true;
};

if(_existing) exitWith { hint "Player already has a key!"; life_action_inUse = false; };

//Modify array
_tparr = [_exdata, "trustedpersons"] call life_fnc_houseExtractDataVal;
_tparr set [count _tparr, [_uid, _name ] ];

//Call database
hint "Question to database ...";

//call command
[ [player ,_housename, _tparr, _name] , "HOUSE_fnc_DBgiveKey" ,false, false] call life_fnc_MP;