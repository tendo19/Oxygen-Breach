"Oxygen Breach" by tendo19

When play begins: say "A minature meteorite just collided with the east wing! There's a major fracture in the wall as well as several malfunctions in the oxygenating system. The east wing has been temporarily sealed off, but you must repair it or all the oxygen will escape."

Control Center is a room. 
It is north of the Main Room.
The description of Control Center is "There's a control panel alongside the wall. It controls everything that occurs in the space station."

Main Room is a room.
It is south of the Control Center.
The description of Main Room is "This is the largest room in the station. There is one room to the west and the utility room is to the south. There is a leak in the east wing, so enter with caution."

Utility Room is a room.
It is south of the Main Room.
The description of Utility Room is "This is where all the tools are kept. The main room is to the north."

West Wing is a room.
It is west of the Main Room.
The description of West Wing is "There is nothing much here ... except the commander's locker. The main room is to the east."

East Wing is a room.
It is east of the Main Room.
The description of East Wing is "..."

Commander is a man in the control center.
The description of the commander is "This is the guy in charge. He probably knows a thing or two about this place."

Aerospace Engineer is a man in the main room.
The description of the aerospace engineer is "He specializes in engineering and knowing about spaceships. "



[I don't know how to make them talk. :( ]

[Instead of talking to the aerospace engineer: 
	say "'I know the tools you need to fix it. You need to be quick though,' he says."

Talking to is an action applying to one visible thing.
Understand "talk to aerospace engineer" or "converse with aerospace engineer" as talking to.

Check talking to: say "The aerospace engineer doesn't reply."

Instead of talking to aerospace engineer: say "'Do you know how to fix the leak in the east wing?' you ask, 'I know the tools you need to fix it. You need to be quick though,' he replies, you comment, 'What do I need to fix the leak?' 'You need a wrench, screws and bolts, and a hammer.'"]






The warning sign is a thing in the main room.
The warning sign is not portable.
The description of the sign is "DO NOT ENTER EAST WING WITHOUT PROPER GEAR. NO OXYGEN!!"

The toolbox is a closed openable container in the utility room.
The description of the toolbox is "A heavy container full of useful tools."

Screws is an object in the toolbox.
The description of screws is "You'll need to fix the leak."

Bolts is an object.
It is in the locker.
The description of bolts is "You'll need this to fix the leak."

Duct tape is an object.
It is in the locker.
The description of duct tape is "You'll need this to fix the leak."

Astronaut suit is an object.
It is in the locker.
It is wearable.
The description of astronaut suit is "Wear this when you are anywhere with no oxygen."
Understand "suit" as astronaut suit.

The picture frame is an object in the main room.
It is not portable.
The description of the picture frame is "You see a photo of the ISS and a caption saying, 'The ISS was launched in November 20, 1998.'"

The wall is a thing in the east wing.
The description of the wall is "There is a huge crack and a couple bolts are loose or missing. There has to be some way to repair this ... or we will all die."

The oxygenation tank is a thing in the east wing. 
The description of the oxygenation tank is "The impact of the meteorite must have caused it to malfunction. There are some loose components ... they must be put back together."

The metal panel is a thing in the east wing.
The description of the metal panel is "This needs to go back onto the oxygenation tank for it to function properly."

The Locker is in the west wing.
It is a closed openable container. 
It is locked and lockable.

The description of the locker is "This is the commander's locker. Enter the six-digit pin code to unlock it."
	After examining the locker:
		now the command prompt is "Please enter the six-digit locker pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Please enter the six-digit locker pin code. >":
	increment the turn count;
	if the player's command matches "112098": 
		now the locker is unlocked;
		say "**BUZZ**  Access granted";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, locker remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the six-digit locker pin code. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.

Instead of going east:
	if the player is wearing astronaut suit:
		say "The oxygen level is critical. Repair the damage immediately!";
	otherwise:
		say "You gasp for air. The door behind you closes. You die from hypoxia."




[Instead of going to east wing:
	Ask "Are you sure you want to enter? (Yes or No) >";	
		If the player's command matches "yes" or the player's command matches "y":
			If the player is wearing astronaut suit: 
				say "The oxygen level is critical. Repair the damage immediately!";
			Otherwise:
				say "You gasp for air. The door behind you closes. You die from hypoxia."
		If the player's command matches "no" or the player's command matches "n":
				say "After using good judgement, you determine that it's not safe to enter a room with no oxygen."]
				

[If the player enters east wing:
	If the player is wearing the astronaut suit: say "The oxygen level is critical. Repair the damage immediately!"  
	otherwise: say "You gasp for air. The door behind you closes. You die from hypoxia."]


[Instead of taping duct tape to wall:
	say "You cover the tiny crack with a bunch of duct tape. Now the wall is sealed.";
	remove duct tape from play.]


	
[Instead of inserting the duct tape into the wall:
	if the player is holding the duct tape:
		say "You cover the tiny crack with a bunch of duct tape. Now the wall is sealed.";
		remove duct tape from play.]


