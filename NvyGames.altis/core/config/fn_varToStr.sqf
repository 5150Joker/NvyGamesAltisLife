/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var", "_ret"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Oil Unprocessed"};
	case "life_inv_oilp": {"Oil Processed"};
	case "life_inv_heroinu": {"Heroin Unprocessed"};
	case "life_inv_heroinp": {"Heroin Processed"};
	case "life_inv_cannabis": {"Cannibis"};
	case "life_inv_marijuana": {"Weed"};
	case "life_inv_apple": {"Apple"};
	case "life_inv_rabbit": {"Rabbit"};
	case "life_inv_salema": {"Salema"};
	case "life_inv_ornate": {"Ornate"};
	case "life_inv_mackerel": {"Mackerel"};
	case "life_inv_tuna": {"Tuna"};
	case "life_inv_mullet": {"Mullet"};
	case "life_inv_catshark": {"Cat Shark"};
	case "life_inv_turtle": {"Turtle"};
	case "life_inv_fishingpoles": {"Fishing Pole"};
	case "life_inv_water": {"Water"};
	case "life_inv_coffee": {"Coffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Empty Fuel Can"};
	case "life_inv_fuelF": {"Full Fuel Can"};
	case "life_inv_pickaxe": {"Pickaxe"};
	case "life_inv_copperore": {"Copper Ore"};
	case "life_inv_ironore": {"Iron Ore"};
	case "life_inv_ironr": {"Iron Ingot"};
	case "life_inv_copperr": {"copper ingot"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salt"};
	case "life_inv_saltr": {"NaCl (Pure Salt)"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Rough Diamond"};
	case "life_inv_diamondr": {"Smooth Diamond"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"LockPick"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Coca Leaves"};
	case "life_inv_cokep": {"Cocaine"};
	case "life_inv_spikeStrip": {"Spike Strip"};
	case "life_inv_rock": {"Rock"};
	case "life_inv_cement": {"Cement"};
	case "life_inv_goldbar": {"Gold Bar"};
	case "life_inv_silver" : {"Silver Ore"}; //##10 ##11 ##12
	case "life_inv_silverr" : {"Silver Ingot"};
	case "life_inv_gold" : {"Gold Ore"};
	case "life_inv_goldr" : {"Gold Ingot"};
	case "life_inv_coal" : {"Unprocessed Coal"};
	case "life_inv_coalr" : {"Processed Coal"};	
	
	//Illegal money ##38
	case "life_inv_illegalmoney": {"Dirty Money"};
	
	//Vrerpairkit ##49
	case "life_inv_vrepairkit": {"Repairkit"};
	
	//VFirstaidkit ##53
	case "life_inv_vfirstaidkit": {"First-Aid Kit "};
	
	//##69 BOX
	case "life_inv_box": {"Kiste"};
	
	//License Block
	case "license_civ_driver": {"Drive License"};
	case "license_civ_air": {"Pilot License"};
	case "license_civ_heroin": {"Ability: Heroin Processing"};
	case "license_civ_gang": {"Gang License"};
	case "license_civ_oil": {"Ability: Oil Processing"};
	case "license_civ_dive": {"Diving License"};
	case "license_civ_boat": {"Boat License"};
	case "license_civ_gun": {"Firearms License"};
	case "license_cop_air": {"Cop-Pilot License"};
	case "license_cop_swat": {"Swat License"};
	case "license_cop_cg": {"Coastguard License"};
	case "license_civ_rebel": {"Rebel Training"};
	case "license_civ_truck": {"Truck License"};
	case "license_civ_diamond": {"Ability: Diamond Processing"};
	case "license_civ_copper": {"Ability: Copper Processing"};
	case "license_civ_iron": {"Ability: Iron Processing"};
	case "license_civ_sand": {"Ability: Sand/Glass Processing"};
	case "license_civ_salt": {"Ability: Salt Processing"};
	case "license_civ_coke": {"Ability Cocaine Processing"};
	case "license_civ_marijuana": {"Ability: Weed Processing"};
	case "license_civ_cement": {"Ability: Cement Processing"};
	
	
	case "license_civ_home": {"Civ House License"};
	case "license_cop_home": {"Cop House License"};
	case "license_civ_gold": {"Ability: Gold Processing"}; //##11
	case "license_civ_silver": {"Ability: Silver Processing"}; //##12
	case "license_civ_coal": {"Ability: Coal Processing"}; //##10
	
	case "license_civ_adac": {"Ability: Mechanic Class"}; //##33
	
	case "license_cop_sniper": {"Sniper License"};//##98
	
	case "license_civ_tazer": {"Tazer-License"};
	
	case "license_civ_event": {"Participation in Events"}; //EVENT
	case "license_cop_event": {"Participation in Events"}; //EVENT
	
	case "license_civ_viewwanted": {"Wanted List"}; //WANTED
	
	//Frog Addon
	case "life_inv_frog": {"Frog"};
	case "life_inv_froglsd": {"LSD"};
	case "life_inv_froglegs": {"Frog Legs"};
	
	default //##69
	{
		_ret = [_var] call life_fnc_vitem_varToStr;
		
		if(_ret == "") then
		{
			_ret = [_var] call life_fnc_uitem_varToStr;
		};
		
		_ret;
	};
	
	
	
};
