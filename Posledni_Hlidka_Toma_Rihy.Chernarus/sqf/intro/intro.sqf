velitel setIdentity "PetrStr";
tom setIdentity "TomRiha";

konec_intra = false;

{_x setunitpos "MIDDLE"} foreach units velitel;
playMusic "Track11_Large_Scale_Assault";
0 fademusic 0;
0 spawn {
  0 fadesound 0;
  2 fademusic 1;
  sleep 5;
  5 fadesound 0.7;
};

titlecut ["","BLACK IN",3];

"colorCorrections" ppEffectAdjust [1, 1, -0.0045, [0.0, 0.0, 0.0, 0.0], [1, 0.6, 0.4, 0.4],  [0.199, 0.587, 0.114, 0.0]]; 
"colorCorrections" ppEffectCommit 0;  
"colorCorrections" ppEffectEnable true;

_camera = "camera" camCreate [0,0,0];
_camera camPrepareTarget [0,0,1];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;


// vrsek
_camera camPrepareTarget [11895.33,108495.43,65.47];
_camera camPreparePos [10589.60,8503.96,26.04];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

_camera camPrepareTarget auto;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera};


// na trubky
_camera camPrepareTarget [105410.24,-23266.95,235.61];
_camera camPreparePos [10591.12,8503.06,0.56];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 11;
waitUntil {camCommitted _camera};

sleep 0.5;
titlecut ["","BLACK OUT",2];
sleep 2;

// ;=== 13:58:42 -- celkovy
_camera camPrepareTarget [-69716.70,68040.73,-50.69];
_camera camPreparePos [10623.64,8497.20,1.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titlecut ["","BLACK IN",3];
sleep 1;
kontakt domove getpos cil_auto;


// ;=== 13:58:46 --- na odjezd auta
_camera camPrepareTarget [-30369.20,99708.96,-227.18];
_camera camPreparePos [10623.64,8497.20,12.40];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 8;
waitUntil {camCommitted _camera};

sleep 3;
titlecut ["","BLACK OUT",3];
sleep 3;

// ;=== 14:19:07 -- z vrsku
_camera camPrepareTarget [-86336.20,-15373.29,-7945.03];
_camera camPreparePos [10773.60,7107.14,128.76];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

"colorCorrections" ppEffectEnable false;

titlecut ["","BLACK IN",3];
sleep 4;

0 spawn {
  sleep 2;
  playMusic "Track15_Morning_Sortie";
};

// ;=== 14:19:20 -- do lesa
_camera camPrepareTarget [-86336.20,-15373.29,-7945.03];
_camera camPreparePos [10773.60,7107.14,1.30];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 14;
waitUntil {camCommitted _camera};

sleep 2;

// ;=== 14:19:36 -- na misto kde by mely byt jednotky
_camera camPrepareTarget [-79808.92,48627.89,-9032.84];
_camera camPreparePos [10740.57,7099.50,5.48];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 3;
waitUntil {camCommitted _camera};

sleep 2;

_camera camPrepareTarget getPos velitel;
_camera camCommitPrepared 3;
waitUntil {camCommitted _camera};

sleep 3;
titlecut ["","BLACK OUT",3];
sleep 3;

titleRsc ["CELO_titlesceloush", "PLAIN"];

sleep 5;

titleRsc ["CELO_titlesuvadi", "PLAIN"];

sleep 5;

titleRsc ["CELO_titlesorb", "PLAIN"];

6 fademusic 0;

sleep 7;

konec_intra = true;