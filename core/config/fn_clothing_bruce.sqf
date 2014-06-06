/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",200],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",200],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",200],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",200],
		["U_C_Poloshirt_stripped","Poloshirt stripped",200],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",200],
		["U_C_Poor_2","Rag tagged clothes",200],
		["U_NikosAgedBody","Lawyer Clothes",1000],
		["U_C_Journalist","Press Uniform",600],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",200],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",200],
		["U_IG_Guerilla2_3","The Outback Rangler",200],
		["U_C_HunterBody_grn","The Hunters Look",200],
		["U_C_WorkerCoveralls","Mechanic Coveralls",200],
		["U_OrestesBody","Surfing On Land",200]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",20],
			["H_Bandanna_surfer","Surfer Bandanna",20],
			["H_Bandanna_gry","Grey Bandanna",20],
			["H_Bandanna_cbr",nil,20],
			["H_Bandanna_surfer",nil,20],
			["H_Bandanna_khk","Khaki Bandanna",20],
			["H_Bandanna_sgg","Sage Bandanna",20],
			["H_StrawHat","Straw Fedora",20],
			["H_BandMask_blk","Hat & Bandanna",20],
			["H_Booniehat_tan",nil,20],
			["H_Hat_blue",nil,20],
			["H_Hat_brown",nil,20],
			["H_Hat_checker",nil,20],
			["H_Hat_grey",nil,20],
			["H_Hat_tan",nil,20],
			["H_Cap_blu",nil,20],
			["H_Cap_grn",nil,20],
			["H_Cap_grn_BI",nil,20],
			["H_Cap_oli",nil,20],
			["H_Cap_red",nil,20],
			["H_Cap_tan",nil,20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,20],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,20],
			["G_Aviator",nil,20],
			["G_Lady_Mirror",nil,20],
			["G_Lady_Dark",nil,20],
			["G_Lady_Blue",nil,20],
			["G_Lowprofile",nil,20],
			["G_Combat",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Chestrig_oli,nil",7500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Parachute",nil,10000],
			["B_Carryall_khk",nil,5000]
		];
	};
};