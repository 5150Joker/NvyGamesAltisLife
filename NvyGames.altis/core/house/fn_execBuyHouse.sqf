/*
*
* After tired buying a house
*
*/

private ["_house_name", "_return", "_house_args", "_datawritten", "_price"];

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
	hint "House was purchased successfully.";
	[[0,format["%1 has bought a house.", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

}
else
{
	hint "House could not be bought.";
	
	sleep 2;
	
	hint "Money will be refunded.";
	
	life_atmcash = life_atmcash + _price;
	sleep 10;
	[1,false] call life_fnc_sessionHandle; //update money
};



