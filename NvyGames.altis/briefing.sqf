 waitUntil {!isNull player && player == player};

player createDiarySubject ["s3klife","s3k Life"];
player createDiarySubject ["serverRules","Server Rules"];
player createDiarySubject ["policeRules","Police Rules"];
player createDiarySubject ["lawsOfAltis","Laws of Altis"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

//s3kLife--------------------------------------------------------------------------------
	player createDiaryRecord ["s3klife",
		[
			"Teamspeak",
				"
				Teamspeak IP:<br/><br/>
				ts3.s3kshun61gaming.com<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["s3klife",
		[
			"Website/Forums",
				"
				http://www.s3kshun61gaming.com/<br/>
				"
		]
	];
	
	player createDiaryRecord ["s3klife",
		[
			"Donations",
				"
				Your donations help pay for the teamspeak, server, and website!<br/><br/>
				"
		]
	];
	
//Server Rules-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	player createDiaryRecord["serverRules",
		[
			"Server Rules",
				"
				http://www.s3kshun61gaming.com/forum/m/17796919/viewthread/10939149-rules<br/>
				"
		]
	];
	
	player createDiaryRecord["serverRules",
		[
			"Safe Zones",
				"
					1. Any store/ATM not in a marked kill zone<br/>
					2. Police HQ<br/>
					3. Jail<br/>
					4. Kavala Drug Dealer<br/>
				"
		]
	];
	
		player createDiaryRecord["serverRules",
		[
			"Kill Zones",
				"
					1. Rebel Outposts<br/>
					2. Areas which promote illegal activity<br/>
					3. The Federal Reserve<br/>
				"
		]
	];
	
//Police Rules---------------------------------------------------------------------------------------------------------------------------------------------------------------
		player createDiaryRecord ["policeRules",
		[
			"Chain of Command",
				"
				Police Chain of Command:<br/>
				1. Chief of Police<br/>
				2. Captain<br/>
				3. SEU<br/>
				4. Sergeant<br/>
				5. Senior Patrol Officer<br/>
				6. Foot Patrol<br/>
				7. Recruit<br/><br/>
				"
		]
	];
	
		player createDiaryRecord ["policeRules",
		[
			"Teamspeak",
				"
				All police officers must be on TeamSpeak and connected to the appropriate channel. Failure to do so will result in removal from the police force.<br/>
				Teamspeak IP:<br/><br/>
				ts3.s3kshun61gaming.com<br/><br/>
				"
		]
	];

		player createDiaryRecord ["policeRules",
		[
			"Police Procedures",
				"
				http://www.s3kshun61gaming.com/forum/m/17796919/viewthread/10939149-rules<br/>
				"
		]
	];
	
//Laws of Altis---------------------------------------------------------------------------------------------------------------------------------------------------
	player createDiaryRecord["lawsOfAltis",
		[
			"Laws of Altis",
				"
				http://www.s3kshun61gaming.com/forum/m/17796919/viewthread/10939149-rules<br/>
				"
		]
	];

//Controls----------------------------------
	player createDiaryRecord ["controls",
		[
			"Controls",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				H: Holster Weapon<nr/>
				"
		]
	];