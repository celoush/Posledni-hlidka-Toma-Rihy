titlecut ["","BLACK IN",999999999999999];

// inicializace promenych
eastCentrum = createCenter EAST;
EAST setFriend [Resistance,0];
Resistance setFriend [EAST,0];

wp1 = false;
wp2 = false;
wp3 = false;
"eOblast1" setMarkerSize [0,0];
"eOblast2" setMarkerSize [0,0];

//player setcaptive true;
player setIdentity "PetrStr";
tom setIdentity "TomRiha";

if (viewDistance > 1200) then {setviewdistance 1200};

0 spawn {

  // skript na vytvoreni nahodnych hlidek

  waituntil {!isnil "bis_fnc_init"};
  
  ["camp_ins1", random 360, getpos eBase1] execVM "sqf\Createcomposition.sqf";
  ["camp_ins1", random 360, getpos eBase2] execVM "sqf\Createcomposition.sqf";

  ["camp_ins1", random 360, getpos eBase3] execVM "sqf\Createcomposition.sqf";
  ["camp_ins1", random 360, getpos eBase4] execVM "sqf\Createcomposition.sqf";
  ["camp_ins1", random 360, getpos eBase5] execVM "sqf\Createcomposition.sqf";
  

  _newGroup = [position ePos1, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos1, 705 + floor random 200] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos2, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos2, 405 + floor random 700] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos3, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos3, 805 +  floor random 900] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos4, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos4, 505 +  floor random 500] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos5, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos5, 605 + floor random 400] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos6, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos6, 405 + floor random 700] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos7, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos7, 405 + floor random 700] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos8, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos8, 405 + floor random 700] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos9, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos9, 405 + floor random 700] call BIS_fnc_taskPatrol;

  _newGroup = [position ePos11, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_GL","Ins_Soldier_AR"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos ePos11, 205 + floor random 100] call BIS_fnc_taskPatrol;

  // vytvorim obranu taboru
  _newGroup = [position eBase1, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_2","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_MG"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos eBase1] call BIS_fnc_taskDefend;

  _newGroup = [position eBase2, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_2","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_MG"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos eBase2] call BIS_fnc_taskDefend;

  _newGroup = [position eBase3, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_2","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_2","Ins_Soldier_2"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos eBase3] call BIS_fnc_taskDefend;

  _newGroup = [position eBase4, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_2","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_2"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos eBase4] call BIS_fnc_taskDefend;

  _newGroup = [position eBase5, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG","Ins_Soldier_2","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_MG"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "UP"} foreach units _newGroup;
  [_newGroup, getpos eBase5] call BIS_fnc_taskDefend;

  // vytvoreni mensich hlidek
  for [{_i=1},{_i<=12},{_i=_i+1}] do {
    call compile format["pozice = position hPos1_%1",_i];     
    _newGroup = [pozice, EAST, ["Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_AR", "Ins_Soldier_MG"]] call BIS_fnc_spawnGroup; 
    {_x setUnitPos "UP"} foreach units _newGroup;
    [_newGroup, pozice, 125 + floor random 125] call BIS_fnc_taskPatrol;
  };


  // vytvorim "patraci jednotku", co podvadi a jde rovnou za hracem
  newGroupPatraci = [position ePos6, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2", "Ins_Soldier_MG"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "MIDDLE"} foreach units newGroupPatraci;
  newGroupPatraci setBehaviour "AWARE";
  newGroupPatraci addWaypoint [getpos player,20];
  [newGroupPatraci,1] setWaypointType "SAD";
  0 spawn {
    while {({alive _x} count units newGroupPatraci)>0} do {
      [newGroupPatraci,1] setWaypointPosition [position player, 10];
      leader newGroupPatraci reveal player;
      sleep (30 + floor random 10);
    };
  };  

  newGroupPatraci2 = [position ePos10, EAST, ["Ins_Commander","Ins_Soldier_1","Ins_Soldier_2", "Ins_Soldier_MG"]] call BIS_fnc_spawnGroup; 
  {_x setUnitPos "MIDDLE"} foreach units newGroupPatraci2;
  newGroupPatraci2 addWaypoint [getpos player,2];
  newGroupPatraci2 setBehaviour "COMBAT";
  [newGroupPatraci2,1] setWaypointType "SAD";
  0 spawn {
    while {({alive _x} count units newGroupPatraci)>0} do {
      [newGroupPatraci2,1] setWaypointPosition [position player, 2];
      leader newGroupPatraci2 reveal player;
      sleep (10 + floor random 10);
    };
  };  


};

0 spawn {
  
  // vytvoreni ukolu
  
  diary = player createDiaryRecord ["Diary", [localize "STR_CELO_DiaryName",  localize "STR_CELO_DiaryDescription"]];

  obj1  = player createSimpleTask [localize "STR_CELO_Task1Name"];
  obj1 setSimpleTaskDescription [localize "STR_CELO_Task1Descr1_0",localize "STR_CELO_Task1Descr1_1",localize "STR_CELO_Task1Descr1_2"];
  obj1 setSimpletaskDestination (getMarkerPos "wp1area");
  obj1 setTaskState "CREATED";
  taskHint [localize "STR_CELO_Ukol_vytvoren" + " - " + localize "STR_CELO_Task1Descr1_1", [1, 1, 1, 1], "taskNew" ];
  
  0 spawn {
    waitUntil {dubinaLoc distance player < 3}; 
    _akce = player addAction [localize "CELO_Ukol_vyzvednout","sqf\ukol1\vyzvednoutZpravu.sqf"];
  };

  obj2 = player createSimpleTask [localize "STR_CELO_Task2Name"];
  obj2 setSimpleTaskDescription [localize "STR_CELO_Task2Descr1_0",localize "STR_CELO_Task2Descr1_1",localize "STR_CELO_Task2Descr1_2"];
  obj2 setSimpletaskDestination (getMarkerPos "wp2area");
  obj2 setTaskState "CREATED";
  0 spawn {
    waitUntil {(taskState obj1=="Succeeded") and stodolaLoc distance player < 10}; 
    _akce = player addAction [localize "CELO_Ukol_polozit","sqf\ukol2\polozitZpravu.sqf"];
  };

  obj3 = player createSimpleTask [localize "STR_CELO_Task3Name"];
  obj3 setSimpleTaskDescription [localize "STR_CELO_Task3Descr1_0",localize "STR_CELO_Task3Descr1_1",localize "STR_CELO_Task3Descr1_2"];
  obj3 setSimpletaskDestination (getMarkerPos "wp3area");
  obj3 setTaskState "CREATED";
  0 spawn {
    waitUntil {(taskState obj2=="Succeeded") and taborLoc distance player < 10}; 
    _akce = player addAction [localize "CELO_Ukol_zalozit","sqf\ukol3\zalozitTabor.sqf"];
  };

  objTrubky = player createSimpleTask [localize "STR_CELO_Task4Name"];
  objTrubky setSimpleTaskDescription [localize "STR_CELO_Task4Descr1_0",localize "STR_CELO_Task4Descr1_1",localize "STR_CELO_Task4Descr1_2"];
  objTrubky setSimpletaskDestination (getMarkerPos "trubky");
  objTrubky setTaskState "CREATED";
  0 spawn {
    waitUntil {trubkyLoc distance player < 3}; 
    _akce = player addAction [localize "CELO_Ukol_vyzvednout","sqf\ukolTrubky\vyzvednoutZpravu.sqf"];
  };

  objZidka = player createSimpleTask [localize "STR_CELO_Task6Name"];
  objZidka setSimpleTaskDescription [localize "STR_CELO_Task6Descr1_0",localize "STR_CELO_Task6Descr1_1",localize "STR_CELO_Task6Descr1_2"];
  objZidka setSimpletaskDestination (getMarkerPos "zidka");
  objZidka setTaskState "CREATED";
  0 spawn {
    waitUntil {zidkaLoc distance player < 3}; 
    _akce = player addAction [localize "CELO_Ukol_vyzvednout","sqf\ukolZidka\vyzvednoutZpravu.sqf"];
  };
   
  
  player setCurrentTask obj1; 
  
};

0 spawn {
  waituntil {speed vuzPast > 1 or !alive vuzPast};
  if (speed vuzPast > 1) then {
    _bomb = "Bo_GBU12_LGB" createVehicle getPos vuzPast;
  };
  if (!alive vuzPast) then {
    objVuz setTaskState "Succeeded";
    taskHint [localize "STR_CELO_Ukol_splnen" + " - " + localize "STR_CELO_Task5aDescr1_1", [1, 1, 0, 1], "taskDone" ];
    sleep 5;
    savegame;
  };
};

tom addEventHandler ["KILLED",{sleep 3; player sidechat localize "CELO_shit_tom_down"}];

0 spawn {
  titlecut ["","BLACK IN",3];
};