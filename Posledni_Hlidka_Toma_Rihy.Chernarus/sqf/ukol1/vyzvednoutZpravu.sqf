0 spawn {

  objMain1 = player createSimpleTask [localize "STR_CELO_Task7Name"];
  objMain1 setSimpleTaskDescription [localize "STR_CELO_Task7Descr1_0",localize "STR_CELO_Task7Descr1_1",localize "STR_CELO_Task7Descr1_2"];
  objMain1 setSimpletaskDestination (getMarkerPos "Eoblast1");
  objMain1 setTaskState "CREATED";
  taskHint [localize "STR_CELO_Ukol_vytvoren" + " - " + localize "STR_CELO_Task7Descr1_1", [1, 1, 1, 1], "taskNew" ];
 
  objMain2 = player createSimpleTask [localize "STR_CELO_Task8Name"];
  objMain2 setSimpleTaskDescription [localize "STR_CELO_Task8Descr1_0",localize "STR_CELO_Task8Descr1_1",localize "STR_CELO_Task8Descr1_2"];
  objMain2 setSimpletaskDestination (getMarkerPos "Eoblast2");
  objMain2 setTaskState "CREATED";
  taskHint [localize "STR_CELO_Ukol_vytvoren" + " - " + localize "STR_CELO_Task8Descr1_1", [1, 1, 1, 1], "taskNew" ];

  "eOblast1" setMarkerSize [200,200];
  "eOblast2" setMarkerSize [150,150];
  
  obj1 setTaskState "Succeeded";
  taskHint [localize "STR_CELO_Ukol_splnen" + " - " + localize "STR_CELO_Task1Descr1_1", [1, 1, 0, 1], "taskDone" ];
  "wp1area" setMarkerColor "ColorGreen";
  
  sleep 5;
  savegame;

  
};
_loc = _this select 0;
_id = _this select 2;
_loc removeAction _id;
