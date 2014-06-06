B_killCount = 0;    
 
B_fnc_updateKillCount = {
 
    B_killCount = B_killCount + 1;
 
    if(B_killCount == 1) then {
        hintSilent parseText format["
		<t size='1'1 font='EtelkaNarrowMediumPro'align='center'color='#FF0000'>You have Murded %1</t>", 
		B_killCount
		];  
    }
    else {
        hintSilent parseText format["
		<t size='1'1 font='EtelkaNarrowMediumPro'align='center'color='#FF0000'>You have Murded %1</t>", 
		B_killCount
		];
    };
 };    
 
B_fnc_enemyKilled = {
 
    _victim = _this select 0;
    _attacker = _this select 1;
 
    if(_attacker == player) then {
        call B_fnc_updateKillCount;
    };
 
};

{
    if(side _x == Civilian && _x isKindOf "Man") then {
        _x addEventHandler ["killed", { _this call B_fnc_enemyKilled } ];
    };
} foreach allUnits;
{
    if(side _x == west && _x isKindOf "Man") then {
        _x addEventHandler ["killed", { _this call B_fnc_enemyKilled } ];
    };
} foreach allUnits;
 
player addEventHandler ["killed", { B_killCount = 0 }];