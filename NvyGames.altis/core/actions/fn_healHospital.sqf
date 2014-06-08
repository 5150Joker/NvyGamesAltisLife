/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
if(life_cash < 50) exitWith {hint "Du benötigst $50!"};
titleText["The really trust values ​​Doctor Mabuse will treat you ...","PLAIN"];
sleep 2;
titleText["I goog * cough * ... look in the medical program by ...","PLAIN"];
sleep 5;
titleText["It Works! I'm not incapable!","PLAIN"];
sleep 2;
if(player distance (_this select 0) > 5) exitWith {titleText["You have to stay close to the doctor.","PLAIN"]};
titleText["You are now healed!","PLAIN"];
player setdamage 0;
life_cash = life_cash - 50;