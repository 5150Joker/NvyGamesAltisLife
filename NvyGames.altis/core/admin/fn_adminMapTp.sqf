closeDialog 0;
sleep 1;
closeDialog 1;
titleText ["Click On The Map To Teleport", "PLAIN DOWN"]; titleFadeOut 4;
tele=
 
    {
        onMapSingleClick hint format ["Teleported To @\n%1" ,_pos];
        for "_i" from 0 to 0 do
        {
		sleep 1;
            _pos1 =  [(_pos select 0), (_pos select 1), (_pos select 2)]; 
		player setPos _pos1;
			
			
		};
 
        onMapSingleClick "";
            openMap [false, false];
    };
 
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call tele";