/*

	Shows the quick help

*/

private["_text"];


_text = "<t size='2'>Hilfe: Tasten</t><br/><br/><t size='1.2'>Aktionstaste 10</t><br/>Interaktion mit Spieler oder Fahrzeug<br/><br/><t size='1.2'>Z</t><br/>Spielermen�/Z-Inventar<br/><br/><t size='1.2'>U</t><br/>Fahrzeug auf-/zuschlie�en<br/><br/><t size='1.2'>T</t><br/>Kofferraum �ffnen<br/><br/><t size='1.2'>Shift + H</t><br/>Waffen wegstecken/zur�ckholen<br/><br/><t size='1.2'>Strg + Shift + H</t><br/>H�nde hoch<br/><br/><t size='1.2'>Shift + R</t><br/>Fesseln<br/><br/><t size='1.2'>Shift + G</t><br/>Umhauen<br/><br/><t size='1.2'>Shift + L</t><br/>Fahrzeugsirene (Polizei)<br/><br/><t size='1.2'>F</t><br/>Sirene (Polizei)<br/><br/>";

hint parseText _text;