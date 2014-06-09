/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","vitem_repairkit","vitem_firstaidkit","box"]]};
	case "rebmarket": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","vitem_repairkit","vitem_firstaidkit","box","uitem_handcuffs","uitem_bomb","uitem_token_rebel"], ["reb"]]};
	case "donatormarket": {["Donator Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","vitem_repairkit","vitem_firstaidkit","box","uitem_handcuffs","uitem_bomb","uitem_token_donator"], ["donator"]]};
	case "wongs": {["City Wok",["turtlesoup","turtle","foglegs"]]};
	case "turtledealer": {["Turtle Dealer",["turtlesoup","turtle","foglegs"]]};
	case "coffee": {["Coffee",["coffee","donuts"]]};
	case "heroin": {["heroin",["froglsd","cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fish market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glass",["glass"]]};
	case "iron": {["Iron and Copper",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Trader",[/*"diamond",*/"diamondc"]]};
	case "salt": {["Salt Trader",["salt_r"]]};
	case "cop": {["Cop Market",["donuts","coffee","water","rabbit","apple","redgull"], ["cop"]]};
	case "cop_gear": { ["Cop Gear", ["uitem_handcuffs","spikeStrip","fuelF","vitem_repairkit","vitem_firstaidkit","box","uitem_bd_mk1_bleachweapon","uitem_bd_mk1_ammo","uitem_bd_mk2_microemp","uitem_bd_mk2_ammo","uitem_token_police","uitem_troll_taschentuch","uitem_troll_nuckel","uitem_troll_bitering","uitem_troll_money"], ["cop"]] };
    case "cement": {["Cement: Zement",["cement"]]};
	case "silver": {["Silver",["silver","silverr"]]}; //##12
	case "gold": {["Gold Trader",[/*"gold",*/"goldr"]]}; //##11
	case "pmetal": {["Gold & Silver Stocks",[/*"gold",*/"goldr",/*"silver",*/"silverr"]]}; //##11
	case "coal": {["Coal Trader",[/*"coal",*/"coalr"]]}; //##10
	case "furniture": {["Furniture" ,["uitem_furniture_01", "uitem_furniture_02", "uitem_furniture_03", "uitem_furniture_04", "uitem_furniture_05"]]};
	case "adac": {["ADAC-Ausrüstung",["fuelF","uitem_adac_toolkit","uitem_adac_tow","uitem_adac_paint","vitem_repairkit","vitem_firstaidkit","box","water","rabbit","apple","redgull","tbacon","peach"], ["adac"]]};
	
	//event shops 
	case "event_1": {["** Event **",["event_1"], ["event"]]};
	case "event_2": {["** Event **",["event_2"], ["event"]]};
	case "event_3": {["** Event **",["event_3"], ["event"]]};
};