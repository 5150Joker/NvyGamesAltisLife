/*
 *	Runs admin authentification 
 *
 */ 

private["_pw"];

if(serverCommandAvailable "#kick") exitWith
{
    hint "You are already authenticated!";
};

_pw = ctrlText 1400;

if(isNil("_pw") || _pw == "") exitWith
{
    hint "You must enter a password!";
};

closeDialog 0;

serverCommand format [ "#login %1", _pw];

if(!(serverCommandAvailable "#kick")) exitWith
{
    hint "Authentication failed!";
};
