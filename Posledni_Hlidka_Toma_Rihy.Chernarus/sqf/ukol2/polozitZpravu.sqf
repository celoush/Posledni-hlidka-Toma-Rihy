0 spawn {

  if (taskState objMain1!="Succeeded") then {
    objMain1 setTaskState "Canceled";
    taskHint [localize "STR_CELO_Ukol_zrusen" + " - " + localize "STR_CELO_Task7Descr1_1", [1, 0, 0, 1], "taskFailed" ];
  };

  if (taskState objMain2!="Succeeded") then {
    taskHint [localize "STR_CELO_Ukol_zrusen" + " - " + localize "STR_CELO_Task8Descr1_1", [1, 0, 0, 1], "taskFailed" ];
    objMain2 setTaskState "Canceled";
  };  

  "eOblast1" setMarkerSize [0,0];
  "eOblast2" setMarkerSize [0,0];
  
  obj2 setTaskState "Succeeded";
  "wp2area" setMarkerColor "ColorGreen";
  taskHint [localize "STR_CELO_Ukol_splnen" + " - " + localize "STR_CELO_Task2Descr1_1", [1, 1, 0, 1], "taskDone" ];

  sleep 5;
  savegame;  
  
};
_loc = _this select 0;
_id = _this select 2;
_loc removeAction _id;