0 spawn {

  objVuz = player createSimpleTask [localize "STR_CELO_Task5Name"];
  objVuz setSimpleTaskDescription [localize "STR_CELO_Task5Descr1_0",localize "STR_CELO_Task5Descr1_1",localize "STR_CELO_Task5Descr1_2"];
  objVuz setSimpletaskDestination (getMarkerPos "vuzLecka");
  objVuz setTaskState "CREATED";
  taskHint [localize "STR_CELO_Ukol_vytvoren" + " - " + localize "STR_CELO_Task5Descr1_1", [1, 1, 1, 1], "taskNew" ];
 
  objTrubky setTaskState "Succeeded";
  taskHint [localize "STR_CELO_Ukol_splnen" + " - " + localize "STR_CELO_Task4Descr1_1", [1, 1, 0, 1], "taskDone" ];

  if (taskState objZidka == "Succeeded") then {
    objVuz setSimpleTaskDescription [localize "STR_CELO_Task5aDescr1_0",localize "STR_CELO_Task5aDescr1_1",localize "STR_CELO_Task5aDescr1_2"];  
    if (taskState objPast != "None") then {
      objPast setTaskState "Canceled";
      taskHint [localize "STR_CELO_Ukol_zrusen" + " - " + localize "STR_CELO_Task5bDescr1_1", [1, 0, 0, 1], "taskFailed" ];
    };
  };

  sleep 5;
  savegame;



};
_loc = _this select 0;
_id = _this select 2;
_loc removeAction _id;
