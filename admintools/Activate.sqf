waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198087662716","76561198041863191","76561198033377818"]) then { //clock,pyro,buddytex
	sleep 30;
	player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};