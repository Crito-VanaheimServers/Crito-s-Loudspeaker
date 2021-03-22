//Loudspeaker created by Crito 3/21/2021

private ["_speaker"];

//Spawn Speaker
	_obj = ["Land_Loudspeakers_F", [14575.8,16820.7,0], [0.700966,-0.713195,0], [0,0,0], true]; //Change these chordinates to where you want your speaker spawned
	_speaker = (_obj select 0) createVehicle (_obj select 1);
	_speaker allowDamage false;
	_speaker setDir 135; // set direction in degrees here for how you want the speaker to face.											
	_speaker setPosATL (_obj select 1);
	_speaker setVectorDirAndUp [_obj select 2, _obj select 3];
	_speakerPlay = "Play";
	
diag_log format["Crito's LoudSpeaker Spawned In!!"];

sleep 300;

while {_speakerPlay == "play"} do
{
//Possible Play times in Minutes
_PossiblePlaytimes = [
						"Three",
						"Five",
						"Four",
						"Five",
						"Seven"
					 ];

_Playtimes = selectRandom _PossiblePlaytimes;

	// tracks are put in each case by how long they are. so if it is under 180 seconds than it is put into case Three, the Three stands for minutes signifying song time.
		switch (_playtimes) do
		{
			sleep 15; //Just to have a small break between playing each song.
		
			diag_log format["Crito's LoudSpeaker Starting Song!!"];
		
			case "Three":
			{
				_sounds = selectRandom ["01","02","14","13","15"]; //List of 3 minute Tracks to Play found in custom\Critos_LoudSpeaker\PlayList.hpp
				[_speaker, [_sounds, 350, 1]] remoteExec ["say3D",0]; 
				sleep 180;
			};
			
			case "Four":
			{	
				_sounds = selectRandom ["03","04","16","17","18","19","20","21"]; //List of 4 minute Tracks to Play found in custom\Critos_LoudSpeaker\PlayList.hpp
				[_speaker, [_sounds, 350, 1]] remoteExec ["say3D",0]; 
				sleep 240;
			};
			
			case "Five":
			{	
				_sounds = selectRandom ["11","08","09","05","06","07","10","22","23","24","25","26"]; //List of 5 minute Tracks to Play found in custom\Critos_LoudSpeaker\PlayList.hpp
				[_speaker, [_sounds, 350, 1]] remoteExec ["say3D",0]; 
				sleep 300;
			};
			
			case "Seven":
			{	
				_sounds = selectRandom ["12"]; //List of 7 minute Tracks to Play found in custom\Critos_LoudSpeaker\PlayList.hpp
				[_speaker, [_sounds, 350, 1]] remoteExec ["say3D",0]; 
				sleep 420;
			};	
		};
		
		diag_log format["Crito's LoudSpeaker Loading Next Song!!"];
		
	};	



