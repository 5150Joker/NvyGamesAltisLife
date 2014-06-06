waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198087662716","76561198101711327","76561197977326912","76561198041863191","76561197965521986","76561198102097569"]) then { //clock,empire,nugs,pyro,topgun,marinebygod
	sleep 30;
	player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};