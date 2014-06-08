/*


	Sends laundering request to server


	launder [INT money, BOOL usehouse, EXDATA house];



*/

private ["_money", "_usehouse", "_exdata", "_query","_percentage"];

_money = [_this,0,0] call BIS_fnc_param;
_usehouse = [_this,1,false] call BIS_fnc_param;
_exdata = [_this,2,[]] call BIS_fnc_param;

if(side player == west) exitWith
{
	hint "You're a cop!";
};

if(_money <= 0) then
{
	hint "Invalid amount of money.";
};

/////Mode HOUSE or NORMAL?
if(!_usehouse) then
{
	if ([false,"illegalmoney",_money] call life_fnc_handleInv) then
	{
		_percentage = [_money] call life_fnc_launderCalculateMoney;	
		_money = round(_money * _percentage);
		
		//Got money, request database
		_query = format["INSERT INTO money_laundering (player, value, remainingtime) VALUES ('%1', '%2', '%3')", 
			getPlayerUID player,
			_money,
			3];

		//call command
		[ [player, _query], "LAUNDER_fnc_launderMoney" ,false, false] call life_fnc_MP;
		[1,false] call life_fnc_sessionHandle;
		
		hint "Money was delivered. The money washer retains a portion as a reward!";
		sleep 3;
		hint format["It is in about. %1 Been credited to your account minutes", 3 * 5];
	}
	else
	{
		hint "Could not take money out of inventory.";
	};
}
else
{
	hint "TODO!";
};
