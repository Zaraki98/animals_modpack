-------------------------------------------------------------------------------
Mob Framework Mod (former animals mod) provides a framework for creating mobs

(c) sapier (code,some graphics)
(c) rinoux (many 2D graphics)

Contact sapier a t gmx net
-------------------------------------------------------------------------------
Big thanks to rinoux for providing graphics and all others for their 
suggestions too!
-------------------------------------------------------------------------------


No what is in?
-------------------------------------------------------------------------------

--hostile mobs--
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Vombies
	Hostile mobs spawning at night in unlighted areas. They can't withstand the 
	sun and will burn as sun rises
	
	Dungeonmasters
	Just dungenmasters throwing fireballs they spawn in dark stony areas too.
	
	Big Red
	Beware of their plasma balls! Big red
	spawns in dark stony areas
	
	Boombomb
	Don't get near they will explode
	
	Slime
	will bounce in large caves below surface
	
	Oerkki
	will attack you underground

--semi hostile mobs --
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	Wolf
	A animal hiding in the woods that can be tamed to follow you

--friendly mobs --
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	Chicken
	Cicken droping egs now and then
	
	Sheep
	Sheep that can be sheered, their wool will grow again. They randomly will 
	spawn on willows
	
	Cow
	Cows will spawn on willows and produce milk.
	
	Deer
	Will spawn below trees.
	
	Rat 
	Just a small animal jumping around
	
	Blue White Fish
	Just a swimming animal
	
	Gull
	flys around over your head!
	
	Clownfish
	A funny small quick fish swiming around
	
	Ostrich

--npc--
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	Trader
	will sell goods
	
	Archer
	Shoots arrows to enemys
	
	Guard
	defends his place


What can you do with them?
-------------------------------------------------------------------------------

Sheep      -> take scissors and sheer them
Cow        -> take an empty glass and get milk
Chicken    -> collect eggs
Vombie     -> drops bone on kill
Clownfish  -> drops golden scale on kill
Wolf       -> tame it!
NPC trader -> trading of course
Oerkki     -> ride

How to catch mobs? Take a lasso or net to catch them, create a farm. Sheep,
chicken and cow will even breed if there's a filled barn nearby


Recieps:
-------------------------------------------------------------------------------

Lasso

none  wool  none
wool  none  wool
none  wool  none

Scissors

none  iron_ingot none
none  iron_ingot none
stick    none    stick

Net

wool  none  wool
none  wool  none
wool  none  wool

Barn

stick stick stick
wood  wood  wood

Small barn

stick stick
wood  wood

Vombie trap

wood       wood     wood
wood  scale_golden  wood
wood       wood     wood

Saddle

<no reciep>

Contract

paper
paper


Settings: 
-------------------------------------------------------------------------------
call /mobf_settings in game 
(you need to be singleplayer or have priv mobf_admin)


Changelog:
-------------------------------------------------------------------------------
Changes 2.1.2
-fix crash when trying to get name from non entity fight target
-make sure only players and luaentitys can be set as attack target

Changes 2.1.1
-fix some typos
-fix missing parameter in documentation
-add parameter check to avoid crash on core error

Changes 2.1.0
-fix doxygen comments

Changes 2.0.84
-fix armor groups to be compatible to default
-fis shadow spawn algorithm to spawn more mobs below ground

Changes 2.0.83
-reduce chance (small) animals flee through fences
-fix invalid barn texture
-update trader inventory
-add support for player specified hireling orientation
-fix non admin mobf settings
-improve weapon balancing
-fix (some) spawning algorithms not working as expected
-add support for spawning mobs at random positions
-fix pathfinding not defaulting back to old method on no path found
-fix auto transform not working anymore
-add detection of "bed" like time jump mods
-fix various crashes

Changes 2.0.82
-disable luatrace

Changes 2.0.81
-fix ostrich meat and egg
-use get_surface core function if available
-add support for manually spawning mobs at random pos
-fix luatrace support
-fix lifebar not beeing deleted if mob is deleted
-fix orientation onf 3d mobs
-update spawning definitions
-fix density for new spawning style
-vombie now uses pathfinding (if available)
-add set_target interface to movegens

Changes 2.0.80
-add anti theft support
-add player mob preservation on error removal
-add mob <-> mob combat
-add new weapon arrow
-NEW MOB archer (can be hired at trader)
-NEW MOB guard (can be hired at trader)
-improove missile object physics
-add ingame path editor
-add path follow movegen
-add guard patrol support
-add mob lifebar (disabled by default enable via mobf settings)
-improove trader inventory (thx to sokomine)
-improove debug information
-add support for mutliple spawn algorithms (make vombies spawn underground)
-add support for flee state for non agressive mobs
-NEW MOB oerkki
-add attention support 
  (player or other mobs now will draw attention to agressive mobs once some 
	 threshold is exceeded a mob may look at you or even start an attack)
-make all new gui's available from mobf_settings "Tools" page

Changes 2.0.5
-fix bug in mobf_settings using settings_save instead of mobf_setting_save 

Changes 2.0.4
-fixed bug trader selling without pay if price1 or price 2 not set

Changes 2.0.3
-fixed crash on typical state time not available
-fixed bug mob_slime typical state time not set

Changes 2.0.2
-fix crash with invalid targetpos in follow movgen

Changes 2.0.1
-fix crash on teleport of wolf

Changes 2.0.0
-documentation update
-add more items for trader
-fix price update bug in trader
-new cow textures
-improve sheep model

Changes 1.9.15
-fixed crash when mob got spawned at unloaded pos
-make mobf_version command available to all users
-reduce chance for trader building by factor 5
-code cleanup
-add support for tracing mob removal reason
-add clownfish mesh
-fix fish blue white swiming in wrong direction

Changes 1.9.14
-add vombie 3d mesh
-fix crash when trying to access empty movgen
-fix old default movgen definition was still used instead of default state 
 movgen in state change handling
-fixed deer model flying when lying
-fix crash in changestate
-fixed bug mobs disapearing as soon as attacking if spawned in slightly wrong
 positions
-fixed boombomb and npc to use current api
-added big_red mesh
-fixed big_red not being agressive
-fixed wolf missing combat movegen
-added backtrace support

Changes 1.9.13
-add gull 3d mesh
-fix bug tamed wolf removed immediatly
-fix bug ostich_f can't be spawned
-revert accidentaly changed wolf to be not agressive
-fix mobs following don't jump
-fix height level check for flying mobs not working
-stop movement of inactive mobs

Changes 1.9.12
-rename debug class to avoid naming conflicts
-improve environment definition
-add ride support
-fixed punch mob not pushing back animals correctly
-fixed mobs don't respawn within torch ...
-fixed crash on show npc inventory due to changed api
-fixed drop avoidance not working if dropping to water (due to another fix)
-improve house spawning
-add ostrich
-improve collision checking for pos_is_ok
-add fish blue_white mesh
-add chatcommand show version
-add wolf mesh
-add sheep mesh
-fixed crash with secondary spawning enabled
-fixed crash on listactivemobs
-fixed boombomb still using abm based spawner
-updated dm model to 4aiman version

Changes 1.9.11
-added calf mesh
-added rat mesh
-replaced .x meshes by .b3d meshes
-fixed bug 3d inventory mob not facing player correctly
-fixed crash in random drop handling with incorrect dynamic_data
-mobs will face player on combat now
-improved follow behaviour (you can't get away that easy anymore)
-reduced damage done by mobs

Changes 1.9.10
-fixed group support for mobs
-fixed sun damage handler resetting animation to "stand"
-fix orientation not updated correct for mobs following new default state schema
-fixed bug 2d sprites not shown correctly
-fixed doku
-added support for upright sprites
-added 3d mesh model for dm
-added 3d mesh models for chicken
-added sounds for some mod
-added license information
-added support for mobf without fire mod
-added non inventory_plus settings gui (requres core patch)
-replaced custom debug chatcommand handlers by official minetest ones

Changes 1.9.9
-added trader spawning
-multiple fixes related to new state only modes
-fixed doku

Changes 1.9.8
-added trader support
-fixed sheep not being sheered
-added support for on_rightclick callbacks

Changes 1.9.7
-fixed bug big_willow spawner not enabled
-fixed bug steer not using big_willow spawner
-make mobs more smart in avoiding dropping
-make mobs more smart in avoiding falling into water

Changes 1.9.6
-catch misspelled blacklist string
-fix bug in barn crashing game
-fix bug custom on step handler making minetest unresponsive
-fixed crash on invalid blacklist
-added check to warn on unrealistic count of callbacks
-added statistics feature for mobf callback times
-make vombies and boombomb spawn in desert too

Changes 1.9.5
-fixed height level controling for fish and gulls (has been brocken for ages)
-added spawner based spawning for any abm based spawning
-"default" state is now mandatory for any mob!

Changes 1.9.4
-fixed sound name collisions
-fixed stereo->mono for some sounds
-added jordan4ibanez movement generator

Changes 1.9.3
-added lots of security checks to callback handlers
-added new tracing facilitys mobf_core and mobf_core_helper
-fixed additional bugs in entity replacement code of state changer
-fixed bug mobf crashing on no good position beeing known for mob when needed

Changes 1.9.2
-added workaround for lost dynamic data on saving of permanent data
-don't drown mobs but move to last known good position
-added animated 3d mesh cow and steer

Changes 1.9.1
-increased spawn rates of wolf
-drop correct meat
-add support for multiple drops
-fix lots of bugs in state change handling
-add animation support
-added experimental mob npc to demonstrate animation handling

Changes 1.9.0
-preserve orientation on replacement of entity
-add state support
-don't generate vaults if dm is disabled
-fix bug vaults generated above sea level
-added support for mesh 3d models
-use vessels drinking glass -> cow depends on vessels now!
-add support for removing disabled animals unknown objects

Changes 1.4.6
-added 3d dm
-added 3d big red
-added calfs
-added chicks
-added 3d Boombomb (was Creeper)
-added 3d clownfish
-added support for secondary spawning mechanisms
-change animal behaviour in case of unable to find safe new accel
-added on death callback support
-added function to get mob description

Changes 1.4.5
-added mobf registration of steer
-added get version api
-added support for blacklisting of animals

Changes 1.4.4
-fixed bug in mob orientation calculation
-improoved random movement generator
    ->don't invert speed on collision
    ->new random acceleration is dependent of old yaw now
    ->mpattern stop and go reduce start stop chances drastically
-added steer
-added rooster
-added breeding of cow and chicken

Changes 1.4.3
-fixed bug in deep caves spawn algorithm tried to print nil value maxlight
-fixed bug in walking through walkable nodes
-added new config file option mobf_disable_animal_spawning to disable automatic animal spawning
-added mapgen based willow spawn algorithm
-added mapgen based in_forrest spawn algorithm

Changes 1.4.2
-readded lost trap
-fixed bug in inventory check

Changes 1.4.1
-hopefully (haven't tested) fixed bug with mob killed by non player actor
-added dropping of results in case of player inventory full
-fixed bug in distance attack if distance attack is invalid
-fixed dm having invalid distance attack
-fixed big_red having invalid distance attack

Changes 1.4.0
-rename core to MOBF
-remove some dead code
-fixed bug in random drops entities lifetime not save
-fixed bug wrong parameter set to true on remove due to pop dens check
-fixed bug mobs running around like crazy after on_step frequency increase
-added spawn in deep caves spawn algorithm
-added special movement gen none only applying y acceleration but stopping mob 
 otherwise

Changes 1.3.5
-make vault generation much more quiet
-add function for adding movement pattern by external functions

Changes 1.3.4
-increase check frequency to 4/s
-fix jumpy cow and deer
-fixed dm and big_red spawning in lighted areas
-fixed bug harvest delay not enforced
-make cow a little bit more slim
-added vault generation code from celeron (slightly modified)
-reduce sound distance dm/cow/sheep/vombie
-fixed vombie model (was wrong direction)
-made vombie agressive again
-remove vombie at once if entity is activated at daytime

Changes 1.3.3
-disable luatrace

Changes 1.3.2
-split configuration of 2d 3d animals
-more 3d animals
-improoved base position checking
-added warnings for long abms
-added load/unload check
-removed spawn point registry
-removed minetest serialization
-readded remove animals script(non working atm)

Changes 1.3.1
-fixed regression unable to craft lasso and net
-added doxygen style comments
-added documentation
-fixed lot of code style breakages
-extracted environments from movement patterns
-moved prototype for path based movement generator to own folder

Changes 1.3.0
-added 3d fish blue white
-fixed another yaw bug
-fixed movement check bug
-fixed position prediction
-replaced animalmaterials:wool_? by wool:x
-added fire effect for fireball
-replaced custom serialization by new minetest function
-added fire for self destruct
-fix lasso and net recieps
-added wolf

Changes 1.2.93:
-added 3d barn
-fixed bug animals have wrong orientation
-fixed bug sheep get stuc in corner
-fixed cow model

Changes 1.2.92:
-added support for 3d animals
-fix bug in probabilistic movement gen when handling min speed
-fixed movement of stop_and_go animals
-made Sheep 3D
-made Cow 3D


Changes 1.2.91:
-fixed bugs in animals sheep
-updated animalmaterials to new syntax

Changes 1.2.90:
-added support for surface differentiation in good/ok/bad
-added support for different movement generators
-added fight mode movement generator change
-fixed bug barn depending on vombie instead of sheep
-reduced cpu load in normal movement loop
-adjusted probability values to new check cycle

Changes 1.2.1:
-use official health system
-add group support for all animals
-scissors get damaged by harvesting wool
-add footstep sounds

Changes 1.2.0:
-added sound support
-(non working) path based movement gen stub


Changes 0.8.2:
-added cow graphics from rinoux
-added some item images from rinoux
-fixed unnecessary workaround in line of sight code by correct implementation

Changes 0.8.1:
-bugfix for release error

Changes 0.8.0:
-added deer graphics from rinoux
-added distance attack support (inspired by jeija mod throwing)
-added plasma and fireballs
-added dungeonmaster

Changes 0.7.3:
-fixed some issues with spawning to many animals in case of frequent server restarts
-added chicken (big thanks to rinoux)
-added new graphics for sheep (even more thanks to rinoux for providing them)

Changes 0.7.0:
-added support for animals following target while fighting
-make hostile animals even more agressive
-add vampire spawning all over the world during night ;-)

Changes 0.6.0:
-added support for looking directions
-added support for animals attacking player on their own
Latest git from 20120103 required!

Changes 0.5.0:
-fixed bug animals disapearing if more than one animal is at same position
-switched to new lua api
Latest build 20120102 required!

Changes 0.4.5:
-fixed spawn algorithms not correctly ensuring population density of animals

Changes 0.4.3:
-added lasso for catching animals

Changes 0.4.2:
-add scissors for harvesting wool

Changes 0.4.1:
-fixed bug mod not running on stock 0.4 dev
-big red now spawns in shadows only

Changes 0.4.0:
-added support for animals spawning

Changes 0.3.0:
-added support for animals fighting back

Changes 0.2.2:
-animal may jump 1 block but only if it's a "natural" surface (to avoid jumping over fences, walls e.g.). Natural surfaces are by now dirt, sand, stone and clay.

Changes 0.2.1:
-animal size increased

Changes 0.2.0:
-added cow
-added deer
-fixed bugs in base functionality used by deer and cow

Changes 0.1.1:
-fixed bug crashing server on rightclick

Changes 0.1.0:
-Major improovements in motion generation code
-switched to modular design (still needed to create a single file till next dev release of minetest, if you've already got the master minetest you may rename init_modular.lua to init)
-added support for:
*animals harvestable
*animals transforming on harvest
*animals retransforming after specified amount of time
-prepared for:
*animals harvestable when wearing special tool
*animals harvestable by consuming special tool

Links:
http://www.mediafire.com/?axsikpooji7hq16 Version 0.1.1 (there will be sheep)
http://www.mediafire.com/?yo6b8cyq0rt6b51 Version 0.2.0 (diversity growing)
http://www.mediafire.com/?v45fue5z6hidkjw Version 0.2.1 (no tiny animals)
http://www.mediafire.com/?1l4cfj35kadjf1l Version 0.2.2 (let em jump)
http://www.mediafire.com/?leyjbj5831gc6zm Version 0.3.0 (don't make them angry)
http://www.mediafire.com/?ilslao0gi2ulwev Version 0.4.1 (big red is hiding)
http://www.mediafire.com/?tkamh7a5r6mlsze Version 0.4.2 (let there be tools)
http://www.mediafire.com/?ib5ax24vp54h938 Version 0.4.3 (catch em all)
http://www.mediafire.com/?m9dfrqq6fdoamnz Version 0.4.5 (catch em all)
http://www.mediafire.com/?22ex6fn8d49deoy Version 0.5.0 (none disappearing)
http://www.mediafire.com/?a0g894d4b90acax Version 0.6.0 (be carefull)
http://www.mediafire.com/?mym9dyjbnb98cmo Version 0.7.0 ( do you fear the night?)
http://www.mediafire.com/?3lw27vuzxn7cyy8 Version 0.7.3 (still fear the night?)
http://www.mediafire.com/?3ah17kl2uhg0437 Version 0.8.1 (stay distant!)
http://www.mediafire.com/?j447z7q3rfim8iv Version 0.8.2 (stay distant!)
http://www.mediafire.com/?1b9rcez7dbdnbuu Version 0.8.3 (stay distant!)
http://www.mediafire.com/?r4jke39dfv218yj Version 0.8.9 (have a swim)
http://www.mediafire.com/?5w9a5vc55az2dqq Version 0.9.0 (left "hand" harvesting)
http://www.mediafire.com/?y8k42doeebo2c5o Version 0.9.9 (cleanup)
http://www.mediafire.com/?hl37vzqb5kzra05 Version 0.9.11 (cleanup)
http://www.mediafire.com/?zty2qzn9hjtxl1s Version 1.0.0 (let them breed)
http://www.mediafire.com/?xax85pwsno1incc Version 1.1.0 (speed it up)
http://www.mediafire.com/?ze274bvlxtjsk1c Version 1.1.1 (speed it up)
http://www.mediafire.com/?gn0f1e005wtmsom Version 1.2.0 (make some noise)
http://www.mediafire.com/?zkf54fckd7w2g3f Version 1.2.1 (hit them)
http://www.mediafire.com/?7hm2xm51aoytbua Version 1.2.90 (loose weight)
http://www.mediafire.com/?lnw1bcs5gq6au83 Version 1.2.91 (fix it)
http://www.mediafire.com/?axuhv41wc2ch7yl Version 1.2.92 (enter the 3rd dimension)
http://www.mediafire.com/?vldqym8hrasjbuk Version 1.2.93 (finding the right direction)
http://www.mediafire.com/?1ne46d88ej6qlus Version 1.3.0 (let there be pets)
http://www.mediafire.com/?vr9w97ac350u215 Version 1.3.1 (paperworks)
http://www.mediafire.com/?25an9a14ty4ifat Version 1.3.3 (no trace)
http://www.mediafire.com/?p8a3wkl3s936n6o Version 1.3.4 (finetuning)
http://www.mediafire.com/?jmm1g4j2j4hp8d4 Version 1.4.0 (slimy)
http://www.mediafire.com/?goyb9r7e94h8gwl Version 1.4.1 (dropper)
http://www.mediafire.com/?63o9qgycaccb3q3 Version 1.4.2 (dropper)
http://www.mediafire.com/?jcocc1vop19a3kj Version 1.4.3 (no respawn)
http://www.mediafire.com/?b8hw3fo3599wbtd Version 1.4.4 (more breeding)
http://www.mediafire.com/?5cuh2lz2m12915p Version 1.4.5 (more breeding)
http://www.mediafire.com/?ds4g46v3dhnkdg9 Version 1.9.0 (sleeping sheep) --experimental
http://www.mediafire.com/?umbcd1ptax9bbcb Version 1.9.1 (animating!) --experimental
http://www.mediafire.com/?66v84hi9p43hw7o Version 1.9.6 (faster?) --experimental
http://www.mediafire.com/?5z5wz2d329m849k Version 1.9.7 (frightened about water) --experimental
http://www.mediafire.com/?x6q9aeaedea646m Version 1.9.8 (happy trading)
http://www.mediafire.com/?s071u1sbcmue4we Version 1.9.9 (trader's home)
http://www.mediafire.com/?f25z9705bu7y5s9 Version 1.9.10 (reduced dependencys)
http://www.mediafire.com/?1cmg3aphdfiarvc Version 1.9.12 (you can run, but they'll follow)
http://www.mediafire.com/?97cnawgzy6wjq64 Version 1.9.13 (ostrich racer)
http://www.mediafire.com/?8ol8upqq5w1ha9b Version 1.9.15 (development phase finished)
http://www.mediafire.com/?hyd4dzmyled9zcd Version 2.0.0 (meshed up ;-) )
http://www.mediafire.com/?2ty86uof1fpuu9h Version 2.0.2 (meshed up ;-) )
http://www.mediafire.com/?rtpxg9tkwgpsa6g Version 2.0.3 (meshed up ;-) )
http://www.mediafire.com/?16ekfh1sti91vn8 Version 2.0.4 (meshed up ;-) )

