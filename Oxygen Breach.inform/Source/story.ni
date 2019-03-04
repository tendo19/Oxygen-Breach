"Oxygen Breach" by tendo19

When play begins: say "A minature meteorite just collided with the east wing! There's a major fracture in the wall as well as several malfunctions in the oxygenating system. The east wing has been temporarily sealed off, but you must repair it or all the oxygen will escape."

Control Center is a room. 
It is north of the Main Room.
The description of Control Center is "There's a control panel alongside the wall. It controls everything that occurs in the space station. The main room is to the south."

Main Room is a room.
It is south of the Control Center.
The description of Main Room is "This is the largest room in the station. There is one room to the west and the utility room is to the south. There is a leak in the east wing, so enter with caution."

Utility Room is a room.
It is south of the Main Room.
The description of Utility Room is "This is where all the tools are kept. The main room is to the north."

West Wing is a room.
It is west of the Main Room.
The description of West Wing is "There is nothing much here ... except the commander's locker. Perhaps you should take a closer look at it. The main room is to the east."

East Wing is a room.
It is east of the Main Room.
The description of East Wing is "There is a crack on the wall and the oxygenation tank has malfunctioned. There's a metal panel on the floor that should be on the tank. The oxygen level is critical. Repair the damage immediately!"

Commander is a man in the control center.
The description of the commander is "This is the guy in charge. He probably knows a thing or two about this place."

Aerospace Engineer is a man in the main room.
Understand "engineer" as the aerospace engineer.
The description of the aerospace engineer is "He knows a thing or two about about this space station."


The warning sign is a thing in the main room.
The warning sign is not portable.
The description of the sign is "DO NOT ENTER EAST WING WITHOUT PROPER GEAR. NO OXYGEN!!"

The toolbox is a closed openable container in the utility room.
It is not portable.
The description of the toolbox is "A heavy container full of useful tools."

Screws is an object in the toolbox.
The description of screws is "You'll need to fix the leak."

Bolts is an object.
It is in the locker.
The description of bolts is "You'll need this to fix the leak."

Duct tape is an object.
It is in the locker.
The description of duct tape is "You'll need this to fix the leak."
Understand "tape" as duct tape.

Astronaut suit is an object.
It is in the locker.
It is wearable.
The description of astronaut suit is "Wear this when you are anywhere with no oxygen."
Understand "suit" as astronaut suit.

The picture frame is an object in the main room.
It is not portable.
The description of the picture frame is "You see a photo of the ISS and a caption saying, 'The ISS was launched in November 20, 1998.'"

The metal panel is a thing in the east wing.
The description of the metal panel is "This needs to go back onto the oxygenation tank for it to function properly."
Understand "panel" as metal panel.

The Locker is in the west wing.
It is a closed openable container. 
It is locked and lockable.
The locker is not portable.

The control panel is a thing in the control center.
The control panel is not portable.
The description is "You see knobs, buttons, screens, and a bunch of flickering lights. You aren't sure what anything does."

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

After going east from Main Room:
	if the player is wearing astronaut suit:
		say "The oxygen level is critical. Repair the damage immediately!";
	otherwise:
		end the story finally saying "You gasp for air. The door behind you closes. You die from hypoxia."
	




Instead of going to east wing:
	Say "Are you sure you want to enter?";
	If player consents:
		If the player is wearing astronaut suit: 
			say "You open the door to the east wing. A sudden burst of cold air rushes through your body.";
			move player to east wing;
		Otherwise:
			end the story finally saying "You gasp for air. The door behind you closes. You die from hypoxia.";
	Otherwise:
		say "After using good judgement, you determine that it's not safe to enter a room with no oxygen."

Button is a thing.
The description of button is "You aren't sure what it does."
The button is part of the control panel.
The button is not portable.
Instead of pushing button: 
	if the button is not handled:
		say "you pushed the button and heard a click.";
		now the button is handled;
	otherwise:
		say "Stop button mashing and get on with your mission."
	
Instead of going to West Wing when the button is not handled:
	say "You have to open the door from the control center.".
	
Instead of going to Utility Room when the button is not handled:
	say "You have to open the door from the control center.".


Knobs is a thing.
The knobs is part of the control panel.
The description of the knobs is "You aren't sure what it does ... better if you leave it alone."
Understand "knob" as knobs.

Screen is a thing.
The screen is part of the control panel.
The description of the screen is "You stare at it, but everything you see makes no sense to you."

Lights is a thing.
The lights is part of the control panel.
The description of lights is "You are mesmerized by the colorful lights but have no clue what they mean."
Understand "flickering lights" as lights.



[The code below is a duplicate of code further down that has a longer response, so I commented it out.]
[Instead of talking to the aerospace engineer: 
	say "'I know the tools you need to fix it. You need to be quick though,' he says."]
		
Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.

Understand "talk to aerospace engineer" or "converse with aerospace engineer" as talking to.

Understand "talk to commander" or "converse with commander" as talking to.

Instead of talking to aerospace engineer: say "'Do you know how to fix the leak in the east wing?' you ask.[paragraph break]'I know the tools you need to fix it. You need to be quick though,' he replies. [paragraph break] You say, 'What do I need to fix the leak?'[paragraph break]'You need a screws and bolts, and some tape.'"

Instead of talking to commander: say "'Hey, how are you?' you say.[paragraph break]'I'm panicking!!,' he replies. [paragraph break] You say, 'How do I fix the leak?'[paragraph break]'Don't ask me!.'"


Instead of talking to someone:
	say "Who are you talking to?"




[Making the wall a supporter allows for the player to put things on it. Make the wall not portable so the player cannot take it.]
[You can add conditionals to your descriptions (see below) so the descriptions change based on what has happened in the story.]


The wall is a thing in the east wing.
The wall is a supporter.
The wall is not portable.
The description of the wall is "[If duct tape is not on wall] There is a huge crack that must be covered.[end if] There has to be some way to patch this up ... or we will all die."
Understand "crack" as wall.



The oxygenation tank is a thing in the east wing.
The oxygenation tank is a supporter.
The oxygenation tank is not portable.
The description of the oxygenation tank is "[if metal panel is not on oxygenation tank] There are some loose components ... they must be put back together.[end if] The impact of the meteorite must have caused it to malfunction."
Understand "tank" and "oxygen tank" as oxygenation tank.



[Use the After command here, so this triggers after the duct tape is on the wall.]
After putting duct tape on wall:
	say "You put the duct tape over the crack on the wall. Luckily you had just enough to cover the crack."

[This code prevents the player from taking the duct tape off of the wall.]
Instead of taking duct tape when duct tape is on wall:
	say "Why would you want to do that? The duct tape is covering the crack quite nicely and you have other things to do, so get on with it, already!"

After putting screws on oxygenation tank:
	say "You carefully place all the screws in the right place."

After putting bolts on oxygenation tank:
	say "The bolts are now secured on the tank."

After putting metal panel on oxygenation tank:
	say "You set the panel on the tank, and it fits perfectly. You hear the oxygenation tank running. You fixed the oxygentation tank."

Instead of putting screws on wall:
	say "How will putting screws on the wall cover the crack?!"

Instead of putting bolts on wall:
	say "You will accomplish nothing from doing that!"

Instead of putting duct tape on oxygenation tank:
	say "Duct tape doesn't fix everything!!"


[Instead of putting metal panel on oxygentation tank: 
	if the screws and bolts are not on oxygentation tank:
		say "It won't fit unless you put something else in first.".]

An every turn rule:
	if metal panel is on the oxygenation tank:
		if duct tape is on the wall:
			end the story saying "Despite your lack of knowledge about the space station, you were able to save everyone onboard from dying of suffocation. Good Job!".


The description of player is "You are a random person who got chosen to take a tour on the ISS. This is a once in a lifetime oppurtunity so you gladly accept the offer."
