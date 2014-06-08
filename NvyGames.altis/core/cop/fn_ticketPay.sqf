/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil { life_ticket_cop }) exitWith {};
if(life_cash < life_ticket_val) exitWith
{
	/*if(life_atmcash < life_ticket_val) exitWith 
	{
		hint "Du hast nicht genug Geld (Bankkonto oder Geldbeutel) dabei, um den Strafzettel zu bezahlen.";
		[[1,format["%1 konnte den Strafzettel nicht bezahlen, da der Spieler nicht genug Geld hat.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};*/
	
	if(life_atmcash < life_ticket_val) then
	{
		hint format["You have paid the ticket ($%1) and had to overdraw your account!",[life_ticket_val] call life_fnc_numberText];
	}
	else
	{
		hint format["You have paid the($%1) ticket.",[life_ticket_val] call life_fnc_numberText];
	};
	
	
	life_atmcash = life_atmcash - life_ticket_val;
	life_ticket_paid = true;
	[[0,format["%1 has paid the ticket ($%2) ticket.",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	closeDialog 0;
};

life_cash = life_cash - life_ticket_val;
life_ticket_paid = true;

[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
[[0,format["%1 has paid the ($%2) ticket.",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;


//HACKFIX ##57
//[[[life_ticket_val],{life_atmcash = life_atmcash + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;
[[player, life_ticket_val],"life_fnc_ticketPayed",life_ticket_cop,false] spawn life_fnc_MP;


[[1,format["%1 has paid for the ticket.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
