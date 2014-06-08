/*

	Sends new wanted to selected person

*/

private["_index","_name","_uid","_reason","_bounty"];

if( (call life_coplevel) < 1) exitWith
{
	hint "You're not a cop!";
};

_index = lbCurSel 2100;

if(_index < 0) exitWith
{
	hint "No person selected!";
};

_name = lbText [2100, _index];
_uid = lbData [2100, _index];

//Load reason
_reason = ctrlText 1400;

if(isNil("_reason") || _reason == "") exitWith
{
	hint "No reason specified!";
};

//Load bounty
_bounty = ctrlText 1401;

if(! ([_bounty] call fnc_isnumber)) exitWith
{
	hint "You have to enter a number.";
};

_bounty = parseNumber _bounty; //requested number
_bounty = round _bounty;

if(_bounty < 1) exitWith
{
	hint "For small amount given!";
};

//Execute
hint format["The player %1 is now due %2 sought.", _name, _reason];

//Send DB
[[_uid,_name,"",[_reason,_bounty]],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;

//Clear everything

ctrlSetText [1401, "0"];
ctrlSetText [1400, ""];

