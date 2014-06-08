//Grid macros
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class life_extended_admin_menu {
	idd = 2900;
	name= "life_extended_admin_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_adminMenu_Extended;";
	
	class controlsBackground 
	{
		class RscText_1006: Life_RscText
		{
			idc = 1006;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 37 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};	
		
		class RscText_1000: Life_RscText
		{
			idc = -1;
			text = "Erweiterte Admintools"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 37 * GUI_GRID_W;
			h = 1 * GUI_GRID_H; 
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1001: Life_RscText
		{
			idc = -1;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class RscText_1002: Life_RscText
		{
			idc = -1;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class RscText_1003: Life_RscText
		{
			idc = -1;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.5 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class player_PlayerInfo: Life_RscText
		{
			idc = 1004;
			text = "Player Info"; //--- ToDo: Localize;
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			colorBackground[] = {1,1,1,0};
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class RscText_1005: Life_RscText
		{
			idc = -1;
			text = "God Mode"; //--- ToDo: Localize;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls 
	{
		class bClose: Life_RscButtonMenu
	    {
	    	idc = -1;
	    	text = "Schließen"; //--- ToDo: Localize;
	    	x = 2 * GUI_GRID_W + GUI_GRID_X;
	    	y = 23 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 37 * GUI_GRID_W;
	    	h = 1 * GUI_GRID_H;
			onButtonClick = "closeDialog 0;";
	    };
	    class player_playerList: Life_RscListBox
	    {
	    	idc = 1500;
	    	x = 21.5 * GUI_GRID_W + GUI_GRID_X;
	    	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 17 * GUI_GRID_W;
	    	h = 9.5 * GUI_GRID_H;
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery_Extended";
	    };
	    class tool_b_money_add100: Life_RscButtonMenu
	    {
	    	idc = 2401;
	    	text = "+ $100"; //--- ToDo: Localize;
	    	x = 2.5 * GUI_GRID_W + GUI_GRID_X;
	    	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 6.5 * GUI_GRID_W;
	    	h = 1 * GUI_GRID_H;
			onButtonClick = "[100] spawn life_fnc_adminAddMoney;";
	    };
	    class tool_b_money_add1000: Life_RscButtonMenu
	    {
	    	idc = 2402;
	    	text = "+ $1000"; //--- ToDo: Localize;
	    	x = 2.5 * GUI_GRID_W + GUI_GRID_X;
	    	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 6.5 * GUI_GRID_W;
	    	h = 1 * GUI_GRID_H;
			onButtonClick = "[1000] spawn life_fnc_adminAddMoney;";
	    };
	    class tool_b_money_add10000: Life_RscButtonMenu
	    {
	    	idc = 2403;
	    	text = "+ $10000"; //--- ToDo: Localize;
	    	x = 2.5 * GUI_GRID_W + GUI_GRID_X;
	    	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 6.5 * GUI_GRID_W;
	    	h = 1 * GUI_GRID_H;
			onButtonClick = "[10000] spawn life_fnc_adminAddMoney;";
	    };
	    class tool_b_money_add100000: Life_RscButtonMenu
	    {
	    	idc = 2404;
	    	text = "+ $100000"; //--- ToDo: Localize;
	    	x = 2.5 * GUI_GRID_W + GUI_GRID_X;
	    	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 6.5 * GUI_GRID_W;
	    	h = 1 * GUI_GRID_H;
			onButtonClick = "[100000] spawn life_fnc_adminAddMoney;";
	    };
	    class player_b_Kick: Life_RscButtonMenu
		{
			idc = 2405;
			text = "Kick"; //--- ToDo: Localize;
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0.5,0.5,0,1};
			onButtonClick = "[] spawn life_fnc_adminKick;";
		};
		class player_b_Ban: Life_RscButtonMenu
		{
			idc = 2406;
			text = "Ban"; //--- ToDo: Localize;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			onButtonClick = "[] spawn life_fnc_adminBan;";
		};
	    class tool_b_god_off: Life_RscButtonMenu
		{
			idc = 2407;
			text = "Aus"; //--- ToDo: Localize;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			onButtonClick = "[false] spawn life_fnc_adminGodMode;";
		};
		class tool_b_god_on: Life_RscButtonMenu
		{
			idc = 2408;
			text = "An"; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 3 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,1,0,1};
			onButtonClick = "[true] spawn life_fnc_adminGodMode;";
		};	
	    class veh_List: Life_RscListBox
		{
			idc = 1501;
			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 17.5 * GUI_GRID_H;
		};
		class veh_b_spawn: Life_RscButtonMenu
		{
			idc = 2409;
			text = "Fahrzeug spawnen"; //--- ToDo: Localize;
			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick = "[] spawn life_fnc_adminSpawnVehicle;";
		};
		class player_b_tpHere: Life_RscButtonMenu
		{
			idc = 2410;
			text = "TpHere"; //--- ToDo: Localize;
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Herporten"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminTpHere;";
		};
		class player_b_tpTo: Life_RscButtonMenu
		{
			idc = 2411;
			text = "TpTo"; //--- ToDo: Localize;
			x = 34.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Zum Spieler hinporten"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminTpTo;";
		};
		class player_b_restrain: Life_RscButtonMenu
		{
			idc = 2412;
			text = "Restrain"; //--- ToDo: Localize;
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Fesseln"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminRestrain;";
		};
		class player_b_unrestrain: Life_RscButtonMenu
		{
			idc = 2413;
			text = "Unrestr."; //--- ToDo: Localize;
			x = 34.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Entfesseln"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminUnrestrain;";
		};
		class tool_b_health: RscButtonMenu
		{
			idc = 2414;
			text = "100 Health"; //--- ToDo: Localize;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick = "[true,false,false] spawn life_fnc_adminInstaHealth;";
		};
		class tool_b_water: RscButtonMenu
		{
			idc = 2415;
			text = "100 Water"; //--- ToDo: Localize;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick = "[false,false,true] spawn life_fnc_adminInstaHealth;";
		};
		class tool_b_food: RscButtonMenu
		{
			idc = 2416;
			text = "100 Food"; //--- ToDo: Localize;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick = "[false,true,false] spawn life_fnc_adminInstaHealth;";
		};
		class tool_b_marketreset: RscButtonMenu
		{
			idc = -1;
			text = "Marktpreise Reset"; //--- ToDo: Localize;
			x = 2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick = "[] spawn life_fnc_marketReset;";
		};
		 class tool_b_money_add1000000: Life_RscButtonMenu
	    {
	    	idc = -1;
	    	text = "+ $1000000"; //--- ToDo: Localize;
	    	x = 2.5 * GUI_GRID_W + GUI_GRID_X;
	    	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	    	w = 6.5 * GUI_GRID_W;
	    	h = 1 * GUI_GRID_H;
			onButtonClick = "[1000000] spawn life_fnc_adminAddMoney;";
	    };
	};
};