/*


	Unpack a repairkit
	Gives back kit if no MAININV place

*/

hint "Repair kit is unpacked ...";
sleep 2;

if(player canAdd "ToolKit") then
{
	//Add item
	["ToolKit",true,false,true,false] call life_fnc_handleItem;

	//Hotfix in for cop gear
	if(playerSide == west) then
	{
		[] call life_fnc_saveGear;
	};
	
	hint "Successfully unpacked.";
}
else
{

	[true,"vrepairkit",1] call life_fnc_handleInv;
	
	hint "Repairkit could not be unpacked.";
	sleep 3;
	hint "You again get the item.";
};