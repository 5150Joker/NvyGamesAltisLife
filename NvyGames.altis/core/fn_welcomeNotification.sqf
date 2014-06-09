/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
/*format["Willkommen %1, lies unbedingt folgende Hinweise!",name player] hintC
[
	"Manche Aktionen kannst du nur mit einem Druck auf die Action-Taste aktivieren.",
	"Mit der Zeit werden möglichst viele Aktionen mit Maus-Scrollen und Klick dadurch ersetzt!",
	"",
	"",
	"!!! Setze daher UNBEDINGT die 'Action 10'-Taste in der Konfiguration !!!",
	"Konfigurieren > Steuerung > Indiv. Steuerung > Aktionstaste 10",
	"Am besten Strg links",
	"",
	"",
	"",
	"Beispiele für Aktionen mit Action-Taste:",
	"Fischen",
	"Sachen aufheben",
	"Mit Spieler interagieren",
	"Mit Fahrzeugen interagieren"
];*/

"" hintC parseText "<t><t size='1.5'>Welcome to Nvy Games Altis Life Server!</t><br/><t color='#EE0000'>Important:</t><br/><t>Set Custom action 10 will be used to complete core actions in game. Set it to a key of your choice. By default it is left win key.</t></br><t>You can find the setting on</t><t color='#00FF00'>
Configuration - Control Panel - Indiv. Control Panel - Action button 10</t></t>";


sleep 6;

hintSilent "Note: To display a small guide press H!.";