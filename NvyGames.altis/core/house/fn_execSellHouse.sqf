/*
*
* After tired buying a house
*
*/

private ["_house_name", "_house_data", "_house_args", "_datawritten", "_price"];

_house_name = _this select 0; //Select argument
_house_args = _this select 1;
_return = _this select 2;

/*_return = call compile format["%1", _return]; //compile data

//TODO
_datawritten = (((_return select 0) select 0) select 0) == "1";*/

_datawritten = _return;

_price = _house_args select 0; //for refund

if(_datawritten) then
{
	hint "Haus wurde erfolgreich verkauft.";
	[[0,format["%1 hat sein Haus verkauft.", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

}
else
{
	hint "Haus konnte nicht verkauft werden.";
	
	sleep 2;
	
	hint "Geld wird zurückgezogen.";
	
	life_atmcash = life_atmcash - _price;
	sleep 10;
	[1,false] call life_fnc_sessionHandle; //update money
};

//hint (((_return select 0) select 0) select 0);


