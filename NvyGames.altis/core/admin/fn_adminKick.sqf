private["_uid", "_name"];

if(!([] call life_fnc_adminCheckAuth)) exitWith
{
  hint "Error: You have to authenticate yourself!";  
};

if((lbCurSel 1500) == -1) exitWith
{
    hint "Error: No players selected!";  
};

_uid = lbData[1500,lbCurSel (1500)];
_name = lbText[1500,lbCurSel (1500)];

serverCommand format [ "#kick %1", _uid];

[[0,format["ADMIN: %1 kicked.",_name]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
hint format["%1 kicked.", _name];
