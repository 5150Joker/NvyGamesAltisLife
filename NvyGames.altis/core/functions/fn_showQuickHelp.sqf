/*

	Shows the quick help

*/

private["_text"];


_text = "<t size='2'>Help: Keys</t><br/><br/><t size='1.2'>Action Button</t><br/>Interaction with players or vehicle<br/><br/><t size='1.2'>Z</t><br/>Player Menu / Z Inventory<br/><br/><t size='1.2'>U</t><br/>Unlocking the vehicle<br/><br/><t size='1.2'>T</t><br/>Open the trunk<br/><br/><t size='1.2'>Shift + H</t><br/>Weapons put away / retrieve<br/><br/><t size='1.2'>Strg + Shift + H</t><br/>Hands up<br/><br/><t size='1.2'>Shift + R</t><br/>Restrain<br/><br/><t size='1.2'>Shift + G</t><br/>Knock Out<br/><br/><t size='1.2'>Shift + L</t><br/>Vehicle Siren Lights (police)<br/><br/><t size='1.2'>F</t><br/>Siren (police)<br/><br/>";

hint parseText _text;