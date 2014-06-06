/*
    File: fn_moonshine.sqf
    Author: Kuchiha

    Description:
    moonshine effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a little before starting moonshine effects
hint "Lets have a part!";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 120secs of effetcs
for "_i" from 0 to 120 do
{
    "chromAberration" ppEffectAdjust [random 0.05,random 0.05,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.01,0.01];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 1, 1, random 1];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;