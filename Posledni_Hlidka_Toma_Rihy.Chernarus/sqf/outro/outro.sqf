velitel setIdentity "PetrStr";

konec_outra = false;
killThemAll = false;

titlecut ["","BLACK IN",3];

"colorCorrections" ppEffectAdjust [1, 1, -0.0045, [0.0, 0.0, 0.0, 0.0], [1, 0.6, 0.4, 0.4],  [0.199, 0.587, 0.114, 0.0]]; 
"colorCorrections" ppEffectCommit 0;  
"colorCorrections" ppEffectEnable true;

playMusic "Track19_Debriefing";
0 fademusic 1;
0 fadesound 0;

_camera = "camera" camCreate [0,0,0];
_camera camPrepareTarget [0,0,1];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;

// ;=== 14:41:45 -- z vrsku
_camera camPrepareTarget [8033.53,111156.29,-63.91];
_camera camPreparePos [8038.22,11149.92,87.35];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

// ;=== 14:42:11 -- na auto 
_camera camPrepareTarget [-2960.24,110542.68,-123.17];
_camera camPreparePos [8037.76,11149.30,0.78];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 15;
waitUntil {camCommitted _camera};

sleep 3;

// ;=== 14:42:32 -- a z vrsku
_camera camPrepareTarget [-1045.14,93235.18,-56497.18];
_camera camPreparePos [8047.32,11110.59,42.90];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 8;
waitUntil {camCommitted _camera};

sleep 2;
0 fadesound 1;
_bomb = "Bo_GBU12_LGB" createVehicle getPos auto;
killThemAll = true;
sleep 1;

velitel dowatch getpos auto;
velitel dotarget auto;
velitel disableai "TARGET";
velitel disableai "AUTOTARGET";

titlecut ["","BLACK OUT",2];

// ;=== 14:52:52
_camera camPrepareTarget [47108.48,-79871.18,-9594.77];
_camera camPreparePos [7829.43,11561.57,1.91];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titlecut ["","BLACK IN",2];;

// ;=== 14:53:19
_camera camPrepareTarget [44850.73,-81332.60,265.32];
_camera camPreparePos [7830.45,11561.37,1.23];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 14;

sleep 7;

titleRsc ["CELO_titleskonec", "PLAIN"];

sleep 1;

titlecut ["","BLACK OUT",3];

4 fademusic 0;
sleep 5;
konec_outra = true;