/*
from: 	voiceActivatedVehicleSpawner\VAVS_keyDownMonitor.sqf
to:		voiceActivatedVehicleSpawner\VAVS_clearKeyDowns.sqf
to:		voiceActivatedVehicleSpawner\initialiseVAVS.sqf

purpose:
this script actually does the 'creating' of vics 
if you want to add your own group configs (arrays of units), this is the place.

notes:

*/

// _vicCat			= _this select 0; // car or heli
// _carType		= _this select 1; // e.g. IFV, MBT etc 
// _carVarient		= _this select 2; // Hunter GMG, Box Transport etc
// _camo			= _this select 3; // altis, tanoa black etc 
// _number			= _this select 4; // how many u want 


// 			=  VAVS_vicType; // car or heli

// 			=  VAVS_carType; // e.g. IFV, MBT etc

// 			=  VAVS_IFV_Type;
// 			=  VAVS_MRAP_Type;
// 			=  VAVS_LSV_Type;
// 			=  VAVS_MBT_Type;
// 			=  VAVS_HEMTT_Type;
// 			=  VAVS_Other_Type;

// 			=  VAVS_Basic_Camo;
// 			=  VAVS_Ext_Camo;

// 			=  VAVS_No_Of_Units;

// 	 		=  VAUS_confirm;
sleep 3;

hint "yo";
execVM "voiceActivatedVehicleSpawner\initialiseVAVS.sqf";
execVM "voiceActivatedVehicleSpawner\VAVS_clearKeyDowns.sqf";









/*

// everything below here is for ref only, and shld be deleted 

// ------------------------------------------------------------------ //

// execVM 'voiceActivatedUnitSpawner\VAUS_clearKeyDowns.sqf';
// could this happen now, or better to do later?
// ... I think later, but leaving this question here for now, cos I'm not sure 

// this manages the parsing of arrays from previous script into this script 
_controlType 	= _this select 0;
_groupType 		= _this select 1;
_camoType 		= _this select 2;

// this manages the extraction of values from the above arrays 
_control 		= _controlType select 0;
_group 			= _groupType select 0;
_camo 			= _camoType select 0;

// I realise this is probably a shit way to do it, but hey, it works!

// DC - Direct Control - Group Creation 
if (_control == 1) then {

	if (_group == 1) then {

		if (_camo == 1) then {
			"B_W_Soldier_TL_F" createUnit [position player, group player]; 
			sleep 0.2;
			"B_W_Soldier_F" createUnit [position player, group player]; 
			sleep 0.2;
			"B_W_Soldier_M_F" createUnit [position player, group player]; 
			sleep 0.2;
			"B_W_Soldier_AR_F" createUnit [position player, group player]; 
			sleep 0.2;
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 2) then {

		if (_camo == 1) then {
			for "_i" from 1 to 1 do { 
				"B_W_Soldier_TL_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 8 do { 
				"B_W_Soldier_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 2 do { 
				"B_W_Soldier_M_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 4 do { 
				"B_W_Soldier_AR_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 2 do { 
				"B_W_Soldier_GL_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 4 do { 
				"B_W_MEDIC_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 4 do { 
				"B_W_Soldier_AT_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
			for "_i" from 1 to 2 do { 
				"B_W_Soldier_AA_F" createUnit [position player, group player]; 
				sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 3) then {

		if (_camo == 1) then {

			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 4) then {

		if (_camo == 1) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 5) then {

		if (_camo == 1) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 6) then {

		if (_camo == 1) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 7) then {

		if (_camo == 1) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};

	if (_group == 8) then {

		if (_camo == 1) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};

		if (_camo == 2) then {
			for "_i" from 1 to 4 do { 
			"B_W_Soldier_CBRN_F" createUnit [position player, group player]; 
			sleep 0.2;
			};
		};		
	};
};

// HC - High Command - Group Creation 

if (_control == 2) then {

	// _activeGroups = count VAUS_activeGroups; 
	// this keeps groups to 5 max
	if (VAUS_activeGroups < 6) then {

		if (VAUS_activeGroups == 0) then {
			hc_grp = groupBlu1;
		};
		if (VAUS_activeGroups == 1) then {
			hc_grp = groupBlu2;
		};
		if (VAUS_activeGroups == 2) then {
			hc_grp = groupBlu3;
		};
		if (VAUS_activeGroups == 3) then {
			hc_grp = groupBlu4;
		};
		if (VAUS_activeGroups == 4) then {
			hc_grp = groupBlu5;
		};

		if (_group == 1) then {
			VAUS_activeGroups = VAUS_activeGroups +1;
			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 2) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 1 do { 
					"B_W_Soldier_TL_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 8 do { 
					"B_W_Soldier_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 2 do { 
					"B_W_Soldier_M_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 4 do { 
					"B_W_Soldier_AR_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 2 do { 
					"B_W_Soldier_GL_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 4 do { 
					"B_W_MEDIC_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 4 do { 
					"B_W_Soldier_AT_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
				for "_i" from 1 to 2 do { 
					"B_W_Soldier_AA_F" createUnit [position player, hc_grp]; 
					sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 3) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 4) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 5) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 6) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 7) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};

		if (_group == 8) then {
		VAUS_activeGroups = VAUS_activeGroups +1;

			if (_camo == 1) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};

			if (_camo == 2) then {
				for "_i" from 1 to 4 do { 
				"B_W_Soldier_CBRN_F" createUnit [position player, hc_grp]; 
				sleep 0.2;
				};
			};		
		};
	};
};

// systemChat "all done!!!";
// 8 cutRsc ["VAUS_THANKS","PLAIN"];
// waitUntil {!isNull (uiNameSpace getVariable "VAUS_THANKS")};
// _display = uiNameSpace getVariable "VAUS_THANKS";
// _setText = _display displayCtrl 10008;
// _setText ctrlSetStructuredText (parseText format ["THANK YOU FOR USING VOICE ACTIVATED UNIT SPAWNER"]);
// _setText ctrlSetBackgroundColor [0,0,0,0.5];

sleep 0.5;

// 8 cutRsc ["default","PLAIN"];
execVM "voiceActivatedUnitSpawner\VAUS_clearKeyDowns.sqf";
execVM "voiceActivatedUnitSpawner\initialiseVAUS.sqf";