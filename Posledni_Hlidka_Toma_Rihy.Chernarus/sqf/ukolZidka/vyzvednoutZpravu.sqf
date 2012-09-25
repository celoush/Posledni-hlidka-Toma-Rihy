0 spawn {

  if (taskState objTrubky != "Succeeded") then {

    objPast = player createSimpleTask [localize "STR_CELO_Task5bName"];
    objPast setSimpleTaskDescription [localize "STR_CELO_Task5bDescr1_0",localize "STR_CELO_Task5bDescr1_1",localize "STR_CELO_Task5bDescr1_2"];
    objPast setTaskState "CREATED";
    taskHint [localize "STR_CELO_Ukol_vytvoren" + " - " + localize "STR_CELO_Task5bDescr1_1", [1, 1, 1, 1], "taskNew" ];
    
  } else {

    objVuz setSimpleTaskDescription [localize "STR_CELO_Task5aDescr1_0",localize "STR_CELO_Task5aDescr1_1",localize "STR_CELO_Task5aDescr1_2"];  
    taskHint [localize "STR_CELO_Ukol_upraven" + " - " + localize "STR_CELO_Task5aDescr1_1", [1, 1, 1, 1], "taskCurrent" ];
  
  };

  objZidka setTaskState "Succeeded";
  taskHint [localize "STR_CELO_Ukol_splnen" + " - " + localize "STR_CELO_Task6Descr1_1", [1, 1, 0, 1], "taskDone" ];

  sleep 5;
  savegame;
   

};
_loc = _this select 0;
_id = _this select 2;
_loc removeAction _id;
