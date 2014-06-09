private["_unit","_pos"];
_unit = lbData[1500,lbCurSel (1500)];

if(isNil "_unit") exitWith {};

_unit setPos (getPos player);


hint "Teleported Player To You";