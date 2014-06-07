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
	case "market": {["Altis Market",["water","moonshine","vodka","apple","grapes","peach","rabbit","redgull","tbacon","lockpick","pickaxe","fuelF","burgers","storage2","knife"]]};
	case "redburger": {["Red Burger", ["water","vodka","burgers"]]}; // Burger Shop
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","knife"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "Prospector": {["Gold Ingot Dealer",["goldbarp"]]};
	case "rebel": {["Rebel Supplies",["lockpick","ziptie","water","rabbit","apple","redgull","autoToolKit","tbacon","knife"]]};
};