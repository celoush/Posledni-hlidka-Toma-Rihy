0 spawn { 
  obj3 setTaskState "Succeeded";
  "wp3area" setMarkerColor "ColorGreen";
  taskHint [localize "STR_CELO_Ukol_splnen" + " - " + localize "STR_CELO_Task3Descr1_1", [1, 1, 0, 1], "taskDone" ];
};
_loc = _this select 0;
_id = _this select 2;
_loc removeAction _id;

sleep 1;

titleCut["","BLACK OUT",3];
playmusic "Track27_Killing_Machines";
sleep 3;

player setcaptive true;
sleep 2;
titleRsc ["CELO_titleskonec", "PLAIN"];
sleep 10;
activateKey "klic_celo_posledni_hlidka";
konec_mise = true;
