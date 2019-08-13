sleep 2; 
systemChat "VAHCO ACTIVATED!!";

// vars and arrays initialisation
VAHCO_numericalInputbool	= false; 

VAHCO_groupSelectBool		= false;
VAHCO_groupSelect			= [];

VAHCO_orderSelectBool		= false;
VAHCO_orderSelect			= [];

VAHCO_distanceBool			= false;
VAHCO_Distance				= [];

VAHCO_headingBool			= false;
VAHCO_Heading				= [];

VAHCO_OscarMikeBool			= false;	
VAHCO_OscarMike				= [];	


// key = "numpad -"
rgg_vahco_Activate = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 74) then {
	
	_ehRemove1 = (findDisplay 46) displayRemoveEventHandler ['keyDown',rgg_vahco_Activate];
	systemChat 'DEBUG VAHCO ACTIVATED';
	systemChat 'Platoon Channel Open, which team do you need to speak to?';
	systemChat 'press 1 for group 1, 2 for group 2, or 9 for all groups';
	VAHCO_numericalInputbool = true; 
	VAHCO_groupSelectBool = true;
	execVM 'voiceActivatedHighCommandOrders\VAHCO_keyDowns.sqf'; 
	execVM 'voiceActivatedHighCommandOrders\VAHCO_keyDownMonitor.sqf'; 

}"];
