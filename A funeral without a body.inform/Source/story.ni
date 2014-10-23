"A funeral without a body" by Phillip Tanton
"A funeral was schedualed in your funeral house. UPS was going to bring in everything: the corpse, box and fine clothes. But they haven't sent ir yet and the funeral is tomarrow. So, as the director of the house you must bring everything together and hope they don't ask to see the body.".
Funeral House is a room."This is where all the magic happens (so to speak). In reality it is a large room with oak walls and an old dusty carpet on the bottom.".
1st floor of Hospital is a room. "What is the waiting room should be called the emergancy room. It is usually bustling with people but today it is earily quiet.".
Graveyard is a room."It's a graveyard, what do you expect. A haunted house".
Bank is a room. 
Tailor is a room.
Workshop is a room.
Lumber yard is a room.
Main road is a room.
2nd Floor of Hospital is a room.
Notwhere is a room.

2nd Floor of hospital is above 1st floor of hospital.
main road is north of bank.
main road is south of shop.
shop is east of lumber yard.
funeral house is south of hospital.
graveyard is south of funeral house.
bank is east of hospital. 
tailor is east of bank.
cut plank is a thing. cut plank is in notwhere.

rough plank is a thing. rough plank is in lumber yard. 
circular saw is a container.
circular saw is in shop. 
[instead of putting plank inside circular saw:
	say "The saw groans and mubles as the plank goes through it" 
	give cut plank to player]
[From great glorious leader Jonathon Nakagawa "the Great"]

[From handbook]
Talking to is an action applying to one visible thing.

Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Instead of talking to banker:
	say "[bracket]1[close bracket] hello";

the Table is a thing.  The table is a supporter. The description of table is "A large walnut table. Beautifully crafted. It is just splendid. But for some reason it is missing a little something. I can't quite put my finger on it.... ah, yes, there's no casket.". 
The table is in the funeral house.
[Understand "sit at [something]" as sit on.]

Banker is a man.
Banker is in bank.
The block giving rule is not listed in the check giving it to rules.
[from documentation.]

[Understand "talk to" as ask about .]

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
Instead of going nowhere, say "Not every direction holds something of value. Go in another direction."
[end going nowhere code from Day for Spelling - Mr. Kiang from bbrown17]





[Combining puzzle: Taken from Tonic by Brianna hartner.]
Coffin is a thing. coffin is in shop.
corpse is a thing. corpse is in hospital.
clothes is a thing. clothes is in Tailor.

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

coffin+corpse is an object. The description of coffin+corpse is "Clamp and Spatula… Need anything else?".
clothed+corpse is an object. The description of clothed+corpse is "Clamp and Pair of Tongs… Need anything else?".
coffin+clothes is an object. The description of coffin+clothes is "Spatula and Pair of Tongs… Need anything else?".
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

