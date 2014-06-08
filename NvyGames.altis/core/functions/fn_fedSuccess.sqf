/*
	File: fn_fedSuccess.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ugh coming up with a name for it was stupid but whatever.
	If the robbery was successful on the Federal reserve then punish
	everyone and take some money.

	Support for Bank Insurance is there.
*/
private["_funds"];
_funds = [_this,0,-1,[0]] call BIS_fnc_param;
if(_funds == -1) exitWith {};
if(!life_use_atm) exitWith {};
sleep 45;

if(_funds > life_atmcash) then
{
	hint "Because the State Bank was robbed you've lost a part of your money.\n\nNext time you should buy an insurance accounts!";
	life_atmcash = 0;
}
	else
{
	if(life_has_insurance) then
	{
		hint "The last attack on the State Bank has hit the civilians where it hurts the most, fortunately you have a bank insurance accounts and do not have a lost a penny!\n\nYou should go to an ATM machine to renew the insurance!";
		life_has_insurance = false;
	}
		else
	{
		hint format["Durch den letzten Überfall auf die Staatsbank hast du $%1 verloren, nächstes mal solltest du dir eine Kontenversicherung kaufen!\n\nDiese erhähltst du am Bankautomaten!",[_funds] call life_fnc_numberText];
		life_atmcash = life_atmcash - _funds;
	};
};