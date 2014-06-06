#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["Binocular",nil,10],
						["Rangefinder",nil,5000],
						["ItemGPS",nil,10],
						["ToolKit",nil,20],
						["ItemCompass",nil,250],
						["ItemMap",nil,50],
						["FirstAidKit",nil,50],
						["Medikit",nil,1000],
						["SmokeShellBlue",nil,100],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["ItemCompass",nil,1],
						["20Rnd_556x45_UW_mag",nil,125]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["SMG_01_Holo_pointer_snds_F",nil,65000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["acc_pointer_IR",nil,5000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,150]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_MXC_F",nil,30000],
						["arifle_MX_GL_F",nil,40000],
						["arifle_MXM_F",nil,50000],
						["arifle_SDAR_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,25],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["SmokeShell",nil,100],
						["30Rnd_65x39_caseless_mag",nil,300],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_DMS",nil,15000],
						["SmokeShellGreen",nil,300],
						["arifle_MX_GL_F",nil,20000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,300],
						["1Rnd_SmokeGreen_Grenade_shell",nil,300]					
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_C_F",nil,30000],
						["srifle_DMR_01_F",nil,100000],
						["arifle_SDAR_F",nil,20000],
						["arifle_TRG21_GL_F",nil,40000],
						["arifle_SDAR_F",nil,12000],
						["launch_RPG32_F",nil,35000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["20Rnd_556x45_UW_mag",nil,325],
						["SmokeShell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,500],
						["1Rnd_SmokeGreen_Grenade_shell",nil,10000],
						["RPG32_F",nil,350000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,4000],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["hgun_ACPC2_F",nil,15000],
						["hgun_PDW2000_F",nil,20000],
						["arifle_SDAR_F",nil,15000],
						["arifle_TRG21_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["20Rnd_556x45_UW_mag",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_Pistol_heavy_01_MRD_F",nil,1000],
						["hgun_PDW2000_F",nil,6500],
						["arifle_SDAR_F",nil,10000],
						["SMG_01_F",nil,20000],
						["arifle_Mk20_GL_F",nil,20000],
						["arifle_Katiba_F",nil,25000],
						["srifle_DMR_01_F",nil,95000],
						["launch_RPG32_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["ToolKit",nil,10],
						["itemgps",nil,10],
						["muzzle_snds_acp",nil,7500],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,50],
						["20Rnd_556x45_UW_mag",nil,200],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						["30Rnd_556x45_Stanag",nil,400],
						["30Rnd_65x39_caseless_green",nil,500],
						["10Rnd_762x51_Mag",nil,600],
						["RPG32_F",nil,300000]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_Pistol_heavy_01_MRD_F",nil,1000],
						["hgun_PDW2000_F",nil,6500],
						["SMG_01_F",nil,15000],
						["arifle_SDAR_F",nil,10000],
						["SMG_01_F",nil,20000],
						["arifle_Mk20_GL_F",nil,20000],
						["arifle_Katiba_F",nil,25000],
						["srifle_DMR_01_F",nil,95000],
						["LMG_Mk200_F",nil,60000],
						["launch_RPG32_F",nil,20000],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,3000],
						["optic_Hamr",nil,3000],
						["optic_MRCO",nil,4500],
						["ToolKit",nil,10],
						["itemgps",nil,10],
						["muzzle_snds_acp",nil,7500],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,50],
						["20Rnd_556x45_UW_mag",nil,200],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						["30Rnd_556x45_Stanag",nil,400],
						["30Rnd_65x39_caseless_green",nil,500],
						["10Rnd_762x51_Mag",nil,600],
						["30Rnd_45ACP_Mag_SMG_01",nil,400],
						["200Rnd_65x39_cased_Box",nil,1000],
						["RPG32_F",nil,200000]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_Pistol_heavy_01_MRD_F",nil,1000],
						["hgun_PDW2000_F",nil,6500],
						["SMG_01_F",nil,15000],
						["arifle_SDAR_F",nil,10000],
						["SMG_01_F",nil,20000],
						["arifle_Mk20_GL_F",nil,20000],
						["arifle_Katiba_F",nil,25000],
						["srifle_DMR_01_F",nil,45000],
						["srifle_EBR_F",nil,100000],
						["LMG_Mk200_F",nil,45000],
						["launch_RPG32_F",nil,15000],
						["optic_ACO_grn_smg",nil,750],
						["optic_Arco",nil,3000],
						["optic_Hamr",nil,3000],
						["optic_MRCO",nil,4500],
						["optic_LRPS",nil,20000],
						["ToolKit",nil,10],
						["itemgps",nil,10],
						["muzzle_snds_acp",nil,7500],
						["16Rnd_9x21_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,50],
						["20Rnd_556x45_UW_mag",nil,200],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						["30Rnd_556x45_Stanag",nil,400],
						["30Rnd_65x39_caseless_green",nil,500],
						["10Rnd_762x51_Mag",nil,600],
						["20Rnd_762x51_Mag",nil,750],
						["30Rnd_45ACP_Mag_SMG_01",nil,400],
						["200Rnd_65x39_cased_Box",nil,900],
						["RPG32_F",nil,100000]
					]
				];
			};
		};
	};
	
	case "cop_donator":
	{
		switch(true) do
		{
			case (playerSide != west): {"You not a cop!"};
			case (__GETC__(life_donator) < 1): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Cop Donator Shop Tier 1",
					[
						["arifle_sdar_F","Tazer Rifle",5000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",200],
						["optic_MRCO",nil,300],
						["B_UavTerminal",nil,1000]
					]
				];
			};
			case (__GETC__(life_donator) == 2):
			{
				["Cop Donator Shop Tier 2",
					[
						["arifle_sdar_F","Tazer Rifle",2500],
						["optic_MRCO",nil,200],
						["H_HelmetB_camo",nil,1000],
						["arifle_MX_SW_Black_F",nil,8000],
						["muzzle_snds_H_MG",nil,2000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["B_UavTerminal",nil,1000]
					]
				];
			};
			case (__GETC__(life_donator) == 3):
			{
				["Cop Donator Shop Tier 3",
					[
						["arifle_sdar_F","Tazer Rifle",1000],
						["optic_MRCO",nil,100],
						["H_HelmetB_camo",nil,1000],
						["arifle_MX_SW_Black_F",nil,4000],
						["srifle_EBR_F",nil,160000],
						["muzzle_snds_H_MG",nil,2000],
						["20Rnd_762x51_Mag",nil,900],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["100Rnd_65x39_caseless_mag",nil,500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,500],
						["B_UavTerminal",nil,1000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,10],
				["ItemGPS",nil,10],
				["ToolKit",nil,20],
				["FirstAidKit",nil,50],
				["NVGoggles",nil,20],
				["Chemlight_red",nil,30],
				["Chemlight_yellow",nil,30],
				["Chemlight_green",nil,30],
				["Chemlight_blue",nil,30]
			]
		];
	};
};
