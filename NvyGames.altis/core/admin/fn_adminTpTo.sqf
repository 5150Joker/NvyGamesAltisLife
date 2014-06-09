private["_unit","_pos"];
_unit = lbData[1500,lbCurSel (1500)];

if(isNil "_unit") exitWith {};

player setPos (getPos _unit);


hint "Teleported To Player";