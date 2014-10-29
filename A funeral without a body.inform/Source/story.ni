"A funeral without a body" by Phillip Tanton
"A funeral was scheduled in your funeral house. UPS was going to bring in everything: the corpse, box and fine clothes. But they haven't sent it yet and the funeral is tomorrow. So, as the director of the house you must bring everything together and hope they don't ask to see the body. In this case everything is a body, some nice clothes and a coffin. When you get these three things, COMBINE one WITH another to make a full casket.  ".
Funeral House is a room. "This is where all the magic happens (so to speak). In reality it is a large room with oak walls. If you bring the full casket together put it here to let the funeral continue.".
1st floor of Hospital is a room. "What is the waiting room should be called the emergency room. It is usually bustling with people but today it is eerily quiet. There is a carpet on the ground.".
Graveyard is a room. "It's a graveyard, what do you expect? A haunted house... There seems to be a fresh grave here maybe we should check it out.".
Bank is a room. "The safest place in the town. Where else would you keep your money. The banker is here sitting next to a counter.".
clothing emporium is a room. "Some very nice clothes are made here. A tailor and a pedestal is here.".
shop is a room. "I think that a coffin could be made here fairly easy. There is a circular saw in the room.".
Lumber yard is a room. "What else could it be. There is a hand saw in the room. There is also some wood."
Main road is a room. "a mostly abandoned road with one parked car on the left side of the road.".
2nd Floor of Hospital is a room. "This is where the worst patients are kept. there seems to be a couple not breathing. there is a body in here. There is also a drawer.".
Notwhere is a room.

2nd Floor of hospital is above 1st floor of hospital.
main road is north of bank.
main road is south of shop.
shop is east of lumber yard.
funeral house is south of hospital.
graveyard is south of funeral house.
bank is east of hospital. 
clothing emporium is east of bank.
cut plank is a thing. cut plank is in notwhere.


circular saw is a container.
circular saw is in shop. 
[instead of putting plank inside circular saw:
	say "The saw groans and mumbles as the plank goes through it" 
	give cut plank to player]
[From great glorious leader Jonathon Nakagawa "the Great"]


wad of cash is a thing.
Banker is a man.
Banker is in bank. 
instead of talking to banker:
	If player has ID card:
		say "Ah yes Mr. Nakagawa here is your money.";
		move wad of cash to player;
	Otherwise:
		say "Your bank account seems to be empty.".
The block giving rule is not listed in the check giving it to rules.
[from documentation.]


[from cole:disable take all]
Rule for deciding whether all includes something: it does not.

[Setting up talking: Taken from A Day For Spelling by Mary Kiang]

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or “converse with
[someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."
[end Setting up talking: Taken from A Day For Spelling by Mary Kiang]

[Code for snide remark after take all from A Day for Spelling by Mary Kiang from cdamon17]
Rule for printing a parser error when the latest parser error is the nothing to do error: say "That would make things to easy, try to have some fun :)" instead.
[end Code for snide remark after take all from A Day for Spelling by Mary Kiang from cdamon17]

[going nowhere code from Day for Spelling - Mr. Kiang from bbrown17]
[this alerts player that they're going the wrong way]
Instead of going nowhere, say "Not every direction holds something of value. Go in another direction.".
[end going nowhere code from Day for Spelling - Mr. Kiang from bbrown17]

[player enters bank for the first time: say ""]




[Combining puzzle: Taken from Tonic by Brianna hartner.]
Coffin is a thing. coffin is in notwhere.
corpse is a thing. corpse is in 2nd floor of hospital.
clothes is a thing. clothes is in notwhere.

[The combining action]
Understand "combine [something] with [something]" as combining it with.
Combining it with is an action applying to two things.

[The line below tells Inform7 that combining produces something.]
The combining it with action has an object called the Contraption.

Setting action variables for combining something with something: 
   	let X be a list of objects;
   	add the noun to X;
   	add the second noun to X;
   	sort X; 
   	repeat through the Table of Arm Parts: 
		let Y be the parts list entry; 
		sort Y; 
		if X is Y: 
			now the Contraption is the results entry.

[if there is no match for the combination of things, there is no result for the combining, so STOP the action]
Check combining it with:
	if Contraption is nothing:
		say "You can't combine [the noun] and [the second noun] into anything useful.[line break]Try another combination of things.";
		stop the action.

[If action is not stopped, continue to…]
Carry out combining it with: 
	say "You fuse together [the noun] and [the second noun].";
	remove the noun from play;
	remove the second noun from play;
	move the Contraption to the player.

Report combining it with:
	say "You now have a [a Contraption]."


Table of Arm Parts
Parts List    			Results
{coffin, corpse}            			coffin+corpse
{coffin, clothes}              			coffin+clothes
{corpse, clothes}             			clothed+corpse
{coffin+clothes, corpse}       			full casket
{clothed+corpse, coffin}       			full casket
{coffin+corpse, clothes}			full casket
{coffin, corpse, clothes}                			full casket

coffin+corpse is an object. The description of coffin+corpse is "coffin and a corpse… Need anything else?".
clothed+corpse is an object. The description of clothed+corpse is "clothes on a corpse… Need anything else?".
coffin+clothes is an object. The description of coffin+clothes is "coffin with clothes… Need anything else?".
full casket is an object. The description of the full casket is "A nice coffin with a clothed body.".
[end combining puzzle]
[From a day for spelling]
[Code to display a players location in the game and possible exits in the header.]
When play begins:
now left hand status line is "Exits: [exit list] ";
now right hand status line is "[location]".

To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say "[way]".
[end Code to display a players location in the game and possible exits in the header.]

Bed is a supporter. Bed is in 2nd floor of hospital. The description of bed is "A white sanitary bed used in hospitals.".
counter is a thing. counter is in bank. it is undescribed. "a polished granite counter. useful for sliding papers across or dropping bouncy balls. Guess what this banker does?".
Tailor is a woman. Tailor is in clothing emporium. it is undescribed. "an old lady. Probably a bit stiff in the fingers but she still produces the finest quality handmade tuxedos in town. ".
instead of talking to tailor:
	If player has wad of cash:
		move clothes to player;
		say "I will make some clothes for you right away.";
	Otherwise:
		say "I don't make suits for free. Come back with more money please.".
	
pedestal is a supporter. Pedestal is in clothing emporium. it is undescribed."A small pedestal used for standing on for measuring.".
flower is a thing. flower is in bank. it is undescribed. "A little flower in a flower pot. ".
chair is a thing. chair is in bank. it is undescribed. "This is where you sell your soul to the devil... or your local banker." .
moon is a thing. it is undescribed. "A luminescent moon.". moon is in graveyard.
carpet is a thing. carpet is in  first floor of hospital. it is undescribed. "A carpet made for heavy foot traffic, biological substances (blood and vomit), and strong chemicals.".
headstone is a container. headstone is in graveyard. it is undescribed. "Jonathan Nakagawa, 6/7/99-7/6/2014".
understand "grave" as headstone.
understand "id card" as ID.
wrench is a thing. wrench is in workshop. it is undescribed. "I don't know what you are going to do with a wrench but take it if you want.".
drawer is a container. drawer is in second floor of hospital. it is undescribed. "A drawer used to hold basic medical supplies.".
band aids is a thing. band aids is in drawer. it is undescribed. "Some band aids.".
hand saw is a thing. hand saw is in lumberyard. it is undescribed. "A simple handsaw for cutting up wood.".
car is a container. it is locked and lockable. it is closed and openable. It is in main road. "A parked car.".

the Table is a thing. The table is a supporter. The description of table is "A large walnut table. Beautifully crafted. It is just splendid. But for some reason it is missing a little something. I can't quite put my finger on it.... ah, yes, there's no casket.". 
The description of corpse is "it seems to be Jenna Shigeta, a nice old lady that lived in the town. I don't think anyone will mind if she is put to one last use.".
The table is in the funeral house. the table is undescribed.
[Understand "sit at [something]" as sit on.]
ID card is a thing. The description of the ID card is "Jonathan Nakagawa, 6/7/99... It seems to be the dead person.". ID card is in headstone.
Worker is a man. Worker is in shop. "A strong little man who is a fine woodworker. HIs name is worker.".
instead of talking to worker for the first time: say " Do you want a coffin because I can build one, but I need wood and some sort of payment.".
rough plank is a thing. It is in the lumber yard. The description of rough plank is "What more do you want to know.".
oak walls is a thing. "It is walls. made of oak.". oak walls is in funeral house. oak walls is undescribed.
instead of talking to worker:
	If player has wad of cash:
		if player has rough plank:
			move coffin to player;
			say "I will make a coffin for you right away.";
			move rough plank to notwhere;
		Otherwise:
			say "I can't make coffins without wood. Unless you want an invisible coffin.".

Every turn rule:
	if player has full casket:
		End the story finally saying "You win".
release along with cover art ("A picture of a coffin.")

[shortest route
S
X gravestone
Take id
N 
N
E
Talk to banker
e
talk to tailor
w
n
w
take plank
e
talk to worker
combine corpse with clothes.
combine clothed corpse with coffin ]
