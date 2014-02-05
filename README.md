Kitchissippi02 - aka K02
========================

An open source CoreXY based 3D Printer conceived, designed and built in Kitchissippi, hence the name. The printer may get a more official name once it is further along the build process.
It is my second 3D printer design, the first being incomplete in favour of this one.

The basic design uses common hardware store 3/4" square aluminum tubing and #8-32 nuts and bolts. There is a bit of a mix involved however. NEMA17 motors use M3 hardare, as do the related filament drive pulleys.
I would prefer to use metric exclusively, however the hardware is scarce to find in the average store here, despite the official measurement system.
I believe that the #8-32 hardware for assembly should be easily substituted for M5 metric hardware without modifying the the source files but I have not tested this at all.

As of this update (Feb 3rd, 2014) there is a lot of experimental work scattered throughout the repository right now - much revision is under way in the "Gold" fork currently.
New parts will be more compact, finished and functional. The framing will be revised and work is being done to improve the CoreXY mechanism so that it is easier to print and less exposed.
Work is being done to break down the components in to sub-features to create a more cohesive design and reduce development time for new / modified parts.

Sample photo of the new Y Axis Outside piece of the bearing carriage: Outside http://i.imgur.com/o7YBvRU.jpg and Inside http://i.imgur.com/Csz5eC0.jpg
Some major functional changes on this part 
- The carriage sits at a slightly lower profile on the rails
- Y axis end-stop microswitch is mounted to the carriage and there is access to apply a zip tie for wire management
- A small boom is included for attaching a cable chain to the carriage
- Bolt access has been changed from the inside to the outside of the carriage to facilitate easier assembly and accces

Some Notes:

- Photos and demos of the assembly can be found at the following imgur album: http://imgur.com/a/7Lus7
- I have two demo videos of the gantry in operation on youtube: http://www.youtube.com/watch?v=_C0xOvPwmZM and http://www.youtube.com/watch?v=G-VPHJNgOFk
- I am reachable on the #reprap irc channel as novakane. Note that I will probably suggest you wait until I progress the design further before building one, however I will help out if possible if you insist on proceeding.
- Due to #8-32 bolts and 608ZZ skate bearings having different inside diameters, there is an included spacing adapter. Print two of them per bearing group and place them back-to-back between the bearings
- There is no X Carriage included as of this writing. Prototypes used an older carriage I had assembled on the X axis, this will be coming soon. Print a third set of the Y carriage if you want to set this up for motion
- There are no drive pulleys included, I am using these ones for now: http://www.thingiverse.com/thing:49971	- note that you will need to print one that is flipped on the X or Y axis so the threading is opposite for the right hand drive so that the filament winds correctly
- There are no idler pulleys included, I am using these ones for now: http://www.thingiverse.com/thing:155018
- When printing the gantry corner braces, print two of them and two of the opposed ones
