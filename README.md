# Choke Le Fish
Starbound content restoration and gameplay tweaking mod

Version 36 (2015/05/16)
----------

Known to work with:
- [Stable] Spirited Giraffe Update 5 (May 8)
- [Nightly] Pleased Giraffe Update 0 (May 14)


Installation
------------

Warning! If you have previous version installed, please delete any directories or .modpak files which match "cl*f*" pattern.

Copy the following directories into "starbound/giraffe_storage/mods/" directory:

+ "CLeF - Common", contains the core mod files common for all supported game versions

+ "CLeF - Extra", contains additional core mod files incompatible/overlapping functionality with third-parties. Consult the "Gameplay changes" section for details

+ "CLeF - SG Stable", contains files required ONLY for Stable Spirited Giraffe Update 5 (May 8)

+ "CLeF - PG Nightly", contains files required ONLY for Nightly Pleased Giraffe Update 0 (May 14)

+ "CLeF - Cheats", if you hate the restrictions which were imposed on us by Chucklefish and want to loot everything in the scripted worlds ;)


Overview
--------

As you probably know, not all players are happy with the changes that were made to the game in comparison with Enraged Koala builds. Although many new things were added, a lot of the aspects were nerfed or removed altogether, which made the game less fun and far more boring.

This mod is my attempt to address and revert these changes in Upbeat Giraffe to some degree, as well as introduce other balance tweaks, which are backported from the Enraged Koala I modded privately for my personal enjoyment. ;)

Starting from Version 6, CLeF also incorporates work by other awesome people. See the full list of mods and their authors at the end of the description.

Starting from Version 33, CLeF requires you to wipe your universe and shipworld files, otherwise you'll be met with invisible objects and eventual crashes.


Frequently Asked Questions
--------------------------

Q: So, I've repaired my ship and decided to move to another planet in the local system. I'm clicking "GO" and nothing happens.

A: You'll have to fuel your ship first (lava, coal, core fragment ore or even oil will do the trick). Please keep in mind the intraspace travel is no longer free. The fuel cost simply doesn't show up on Tier 2 ships (without repaired FTL drive) due to a bug.


Q: I can't access fuel hatch! My character has stuck at his starter planet! I was playing as custom race.

A: It's impossible for me to fix custom races due to random mod load order and the fact .png definition files cannot be incrementally patched. Please ask the author of that race to move working fuel hatch from Tier 3 ship to Tier 2 (I've asked some of them, and you can find their races in "Recommended mods" section).

Also, you can fix it on your own - open <racename>t2blocks.png and copy fuel hatch pixel (orange-red at the top of a blue block) from <racename>t3blocks.png. Note you'll have to delete your shipworld, otherwise the fix won't be applied (don't forget to take everything you don't want to lose with you).

Q: Okay, I beat the UFO boss. Where's the rest of the quests?

A: This mod is work-in-progress. Please be patient.

Since the version 22 you can beat the Bone Dragon boss. It's integrated into Outpost Mute Glitch's quest line.


Q: Will I be able to play on vanilla servers if I'll install this mod?

A: Short answer: no. Long answer: any mod which makes changes to .config files or adds new objects will not be compatible with vanilla servers.


Help wanted
-----------

As a beginner in Starbound modding, I have little to no knowledge in Lua, so this prevents me from re-implementing lots of things. I would really appreciate your help. If you've noticed another feature, object or armor that was removed by Chucklefish and want it back, please tell me immediately!


Known bugs
----------

+ The game prevents patching of items/defaultparameters.config, hence a complete replacement file is used instead. CLeF will conflict with any mods that replace it.

+ CLeF will conflict with any mod which adds "learnBlueprintsOnPickup" variable to items/objects. The solution is to move the above-mentioned variable from CLeF and insert contents of variable into problematic mod's patch.


Glossary
--------

* EK - Enraged Koala
* UG - Upbeat Giraffe
* SG - Spirited Giraffe
* [N] - new feature / addon
* [M] - modified restoration
* [R] - restored feature
* [F] - fix

Gameplay changes
----------------

+ [N] Liquid Slime can be harvested and placed. Also replaced Slime status effect icon to match the style of new liquid item

+ [M] Green Slime can be crafted from 2 Liquid Slime in Crafting Table

+ [N] Implemented more liquid interactions (also added all interactions from Lava to Core lava. Yes, you can harvest it too):

 - Healing Water + Water => Healing Water
 - Healing Water + Poison => Water
 - Healing Water + Erchius Fuel => Water
 - Swamp Water + Water => Swamp Water
 - Swamp Water + Poison => Poison
 - Swamp Water + Healing Water => Water
 - Alien Juice + Water => Alien Juice
 - Alien Juice + Poison => Alien Juice
 - Alien Juice + Tar => Alien Juice
 - Alien Juice + Healing Water => Alien Juice
 - Alien Juice + Milk => Alien Juice
 - Alien Juice + Coffee => Alien Juice
 - Alien Juice + Erchius Fuel => Alien Juice
 - Alien Juice + Swamp Water => Alien Juice
 - Liquid Slime + Water => Liquid Slime
 - Liquid Slime + Poison => Liquid Slime
 - Liquid Slime + Tar => Liquid Slime
 - Liquid Slime + Healing Water => Liquid Slime
 - Liquid Slime + Alien Juice => Liquid Slime
 - Liquid Slime + Milk => Liquid Slime
 - Liquid Slime + Coffee => Liquid Slime
 - Liquid Slime + Erchius Fuel = Liquid Slime
 - Liquid Slime + Swamp Water => Liquid Slime
 - (Core) Lava + Healing water => Magma rock
 - (Core) Lava + Alien juice => Magma rock
 - (Core) Lava + Poison => Magma rock
 - (Core) Lava + Coffee => Magma rock
 - (Core) Lava + Swamp water => Magma rock
 - (Core) Lava + Liquid Slime => Magma rock

+ [M] Renamed "Coffee Seed" into "Raw Coffee Beans". You can roast them in Microwave or Campfire and get consumable "Coffee Beans"

+ [F] Blocks of Erchius Crystals will drop Erchius Crystals (instead of placeholder crystals)

+ [R] Diamond ore will spawn instead of "perfectly cut" diamonds in unvisited worlds (diamonds will still spawn in treasure chests)

+ [M] Diamond can be crafted in Alloy Furnace from 2 diamond ores (recipe learned on picking up the diamond ore, was 4 diamond ores in EK and removed entirely in UG)

+ [R] Stone Axe, Stone Pickaxe and Stone Hoe can be crafted at Crafting Table. Note that Stone Pickaxe cannot be repaired.

+ [N] Emerald Ore will spawn in previously unvisited worlds with the same conditions as Diamond Ore, including the Rock Deposites and treasure chests

+ [N] Emerald can be crafted from 2 Emerald Ore in Alloy Furnace

+ [N] Emerald Glass can be crafted from 2 Fine Sand (or Sand) blocks and 1 Emerald Ore in Alloy Furnace

+ [N] Emerald Block can be crafted from 2 Emeralds (or 4 Emerald Ore) in Crafting Table

+ [N] Emerald Drill and Emerald Pickaxe can be crafted from Emeralds in Metalwork Station and the Replicator (Sci-Fi Anvil)

+ [R] All pickaxes (except Stone Pickaxe) and drills have EK's durability values (which means they won't break so fast), block radius, tile damage and material costs (except pixel requirements):
 - Copper Drill     (d: 1000 -> 3000, b: 2 -> 3, d: 1.5 -> 2.9)
 - Silver Drill     (d: 1000 -> 3000, b: 2 -> 3, d: 2.0 -> 3.1)
 - Golden Drill     (d: 1000 -> 3000, b: 2 -> 3, d: 2.5 -> 3.3)
 - Diamond Drill    (d: 1000 -> 3000, b: 2 -> 3, d: 3.5 -> 3.7)
 - Emerald Drill    (d: 3500, b: 3, d: 4.0)
 - Platinum Drill   (d: 1000 -> 3000, b: 2 -> 3, d: 3.0 -> 3.5)
 - Stone Pickaxe    (d: 5000, b: 3, d: 2.0, cannot be repaired)
 - Copper Pickaxe   (d:  200 -> 7500)
 - Silver Pickaxe   (d:  200 -> 7500)
 - Golden Pickaxe   (d:  200 -> 7500)
 - Diamond Pickaxe  (d:  350 -> 7500)
 - Emerald Pickaxe  (d: 8000)
 - Platinum Pickaxe (d: 200 -> 10000)

+ [R] Drills and pickaxes can be repaired with bars, ore and diamonds (open your inventory, equip tool, select ore/bar/diamond and right-click on the tool icon)

+ [N] Chainsaw can be crafted via Metalwork Station for 6 Durasteel Bar and 12 Steel Bar

+ [N] Core fragment ore can be crafted in Alloy Furnace from 10 Lava and 1 Oil (recipe learned on picking the Lava)

+ [N] Molten Core can be crafted from 2 iron bars and 10 core fragments (the recipe added to stone furnace upon pickup, originally was dropped by UFO boss in EK)

+ [R] Metalwork station requires 1 Molten Core to craft (same as in EK)

+ [M] Added Old Stone Furnace and Old Alloy Furnace (unlike the UG's workbench-based versions, these are container-based and significantly cheaper)

+ [R] Coal can be crafted from 10 Unrefined Wood in Stone Furnace (recipe learned on picking up the Wood)

+ [N] Erchius Crystal can be crafted from 8 Liquid Erchius Fuel and 1 Diamond in Alloy Furnace (recipe learned on picking up the Erchius Fuel)

+ [N] Core fragment gives 10 points of fuel (seriously, what that pile of blasted glowing stones is even good for?!)

+ [N] Erchius Crystal gives 10 points of fuel (same as above)

+ [N] Oil gives 1 point of fuel (it's flammable IRL, so why not?)

+ [N] Lava gives 1 point of fuel (because it's basically the source of core fragments)

+ [R] Coal gives 2 points of fuel (same as in EK, 0 in UG)

+ [N] Teleporter Core can be crafted from 2 Iron Bars and 3 Diamonds

+ [M] All vanilla teleporters from "2-Stop Teleshop" can be crafted via Iron Crafting Table. Each requires 1 Teleporter Core and 1 Circuit board to craft (also, all of them can be safely placed and removed without object's destruction. Also included proper descriptions for each teleporter type). Other requirements vary:

 - Executive  : 3 Diamonds, 6 Durasteel Bars and 6 Glass Blocks
 - Brass      : 2 Diamonds, 10 Liquid Oil, 5 Copper Bars and 4 Glass Blocks
 - Futuristic : 2 Diamonds, 6 Silver Bars and 6 Glass Blocks
 - Scientific : 5 Steel Bars, 5 Durasteel Bars and 2 Glass Blocks
 - Stone      : 25 Cobblestone and 2 Glass Blocks
 - Tomb       : 10 Golden Bars, 4 Rubium Ore and 2 Glass Blocks
 - Wooden     : 1 Diamond, 50 Wood Planks, 3 Steel Bars and 2 Glass Blocks

+ [N] Orange Teleporter Core can be crafted from 2 Iron Bars, 4 Core Fragment Ores and 1 Diamond

+ [N] Added Portable Teleporter object. Can be crafted via Iron Crafting Table for 1 Orange Teleporter Core, 1 Circuit Board, 2 Durasteel Bars and 2 Glass Blocks

+ [M] Instant teleportation! Removed fullscreen teleport animation (causes epilepsy and slows down the game. Chucklefish, what were you thinking?!)

+ [M] Replaced teleport effect sprites with blue versions based on original Rho's design

+ [R] The player will start from forest planet (same as in EK, was "Garden" in UG). This largely increases variety in comparison with bland "Lush / Garden" worlds

+ [F] The starter planet lookup values are 5/100 (same as in EK, was 100/300 in UG). Also removed requirement for "Ancient Gateway" dungeon world, since it's always generated in every planetary system. Also removed requirement for "small" world type. This makes the first run universe generation to only take 2 minutes instead of 15(!!) on my machine

+ [M] Intraspace travel takes 5 points of fuel (was 50 in EK, 0 in UG made little to no sense, but...)

+ [F] Fixed inability to fuel your ship for vanilla races when starting a new game (required because intraspace travels are not free anymore)

+ [M] Interspace travel takes 300 points maximum (was 200 in EK and up to 1000 in UG, which is unreal and would leave you with depleted engine. This seems to be the reason (beside the coal not being a "fuel" anymore) why intraspace travel was made cost free in UG, otherwise you'd stuck forever if landed on anything but the Moon or Outpost planet)

+ [N] Limit for items per cell changed to 9999 (was 1000 in EK/UG. Everybody wants to be super greedy sometimes :3 )

+ [N] Removed 1000 items limit for Rope

+ [R] Butterfly Boost tech is available upon upgrading ship to Tier 4 (aka Sparrow Class. Requires quest data purge or playing as new character)

+ [M] Un-nerfed Morph Ball tech. It consumes 20 points of energy (was 35 in EK and 65 in UG)

+ [R] Iron Beacon is available for crafting. As a result, the Penguin UFO boss can be summoned (moved to its own quest location in UG)

+ [R] Quest "The First Contact". Automatically assigned upon crafting or picking up the Iron Anvil. Reward: 500 pixels

+ [M] Quest "Tutorial VIII: Ups, Downs and the Beacons". Added mention of Distress Beacon

+ [M] Dreadwing Codex matches the old-new progression. Also, the boss will drop 5 Molten Core, 21 Core Fragment Ore and 1 Dreadwing Codex.

+ [N] Quest "Wreckage of the Dreadwing". Automatically assigned upon picking up the Dreadwing's Wreckage.

+ [M] Upon completing the "Dreadwing" quest, penguin will give 50 Matter Item, which can be used to craft Bonus Armour (otherwise the material for it is nowhere to be found)

+ [R] Decoy Princess is available for crafting. As a result, the Bone Dragon boss can be summoned (disabled in UG. Sadly, dragon acts like a bird and won't breathe any fire nor open its mouth. I'm unable to restore its original behaviour without scripting help!)

+ [N] Added decorative Decoy Princess Scheme object. Given by "Mute" Glitch upon starting "Bad To The Bone" quest.

+ [N] Quest "Bad To The Bone". Given by "Mute" Glitch at Outpost for players with Tier 5 ship.

+ [R][Incomplete] Brain extractor and all robot parts are available for crafting. As a result, you can summon the robot boss (disabled in UG, no proper quest yet. In UG original robot was replaced by Penguin Bot and appears instead of the old one when summoned)

+ [N] Quest "The Brain Hunter". Automatically assigned upon crafting or picking up the Brain Extractor. Reward: 100-500 pixels

+ [N] Cooking recipe "Brain Stew". Cooked from Wheat, Pearlpea, Corn and Inferior Brain

+ [N] Cooking recipe "Brain Pie. Cooked from Mashed Potato, Inferior Brain and Superior Brain

+ [N] Decorative "Monster's Brain in a Jar" item can be crafted from 1 Inferior Brain, 1 Glass Block and 1 Iron Bar at Crafting Table (recipe learned upon picking up Inferior Brain)

+ [N] Power Loom, a modern replacement for Spinning Wheel, can be crafted in Metalwork Station for 8 Steel Bars

+ [R] Re-added developer clothing sets (can be crafted via Yarn Spinner):
 - Ban's set
 - Bartwe's glasses
 - George's set
 - Kyren's set
 - Molly's set
 - Rhopunzel's set
 - Tiy's set

+ [R] Re-added armour sets:
 - Slime set (requires 25 Green Slimes per item and 10-15 Fabric, recipes learned upon Green Slime pickup)
 - Lagoon set (can be bought for 750 pixels, available from the start)
 - Diamond set (requires 19 Diamonds and 6 Durasteel Bars, crafted at Metalwork Station)
 - Copper set (requires 5-15 Copper Bars, crafted at Metalwork Station, recipes learned upon Copper Bar pickup)
 - Silver set (recipes learned upon Silver Bar pickup)
 - Golden set (recipes learned upon Gold Bar pickup)
 - Platinum set (recipes learned upon Platinum Bar pickup)
 - Matter set (aka Bonus set) (recipes learned upon Matter Item pickup)
 - Original Pioneer set (recipes learned upon Titanium Bar pickup)

+ [M] Slime furniture recipes auto-learned upon Green Slime pickup

+ [M] Mole and Frog merchant objects have proper icons and breakable. Also, both have Novakid lines, and the Mole has proper descriptions

+ [M] Removed protection from randomly generated dungeons. Explaination: they weren't designed to use shields in the first place, and lots of players has already experienced problems with being unable to even access their front entrances, "thanks" to randomly generated ground obstacles, which also went under protection of the shield

+ [M] In order to compensate the protection removal, Tesla Spikes now have 20 points of "health" and much harder to harvest as a result

+ [M] Navigation sub-window texture changed to blue (was light-blue in EK)

+ [N] More zoom levels (from 1.0 to 10, with 0.5 step) and screen resolutions:
 - 640 x 480
 - 800 x 600
 - 1024 x 576
 - 1360 x 768
 - 3200 x 1080
 - 3200 x 1200
 - 3200 x 1536
 - 3840 x 1080
 - 3840 x 1200
 - 3840 x 1536
 - 4096 x 2160

+ [F] Performance patch: added optimized Hobo true-type font (58 KiB and ~50000 points versus 86 Kib and ~90000 points) with fixed cyrillic characters (officially part of the game since Spirited Giraffe builds)

+ [M] Replaced Chucklefish icon and logo animation with recoloured & shaded version (also fixed "u" which strongly resembled "v")


Nightly changes
---------------

+ [R] Window borders are colourless again


Extra addon changes
-------------------

Incompatible with "Enhanced Storage":

+ [M] Metal, Radioactive, Sewage and Toxic Waste barrels can be used as 12-slot storage containers


Cheat addon changes
-------------------

+ [M] Removed protection from all mission-generated (and outpost) dungeons

+ [M] Removed pixel and ore drops on "Casual" and "Normal" in order to compensate the removal of auto-return to ship on "Save & Quit"

+ [N] Extra zoom levels (from 0.5 to 1, with 0.1 step)

+ [M] No slowdown when running backwards (just like in EK)

+ [R] Removed "nude" and re-added "invisible" status effect for tent objects (as a side-effect, they no longer show bugged lit sprite which sometimes was floating in the air when player got up. Same as in EK)

+ [N] Limit for items per cell changed to 99999 (won't show up properly the number of items after 9999, though)


To-do list
----------

Seamlessly integrate the old quests and boss fights back into game:

+ Restore Fatal Circuit (partially done, script crash prevents further integration)

+ Restore Bone Dragon (partially done, needs Lua/behavior changes)

+ Restore Jelly Monster (needs some quest scripting)

Bring back biome variety:

+ Restore all removed biomes and mini-biomes

+ The moons with more life and loot underneath, not just a stinky fuel

+ Barren worlds with realistic core, undercaves and stuff

+ Bunch of other stuff I tend to forget...


Stuff I can't fix (yet)
-----------------------

+ Lack of hunger and temperature system (hardcoded)


Third-party mods merged with CLeF
---------------------------------

Note: THIS IS NOT A MODPACK, as the merged mods are not simply copy-pasted, but rebalanced, rearranged and tightly integrated with the rest of the content, hence they WILL CONFLICT WITH ORIGINAL MODS.

+ http://community.playstarbound.com/resources/2142/ - Emeralds! (by Serverator)
+ http://community.playstarbound.com/resources/2498/ - More Screen Resolutions (by eurosat7)
+ http://community.playstarbound.com/resources/2635/ - Prepare for Glory! (by LegendXCarisso) - Removed until further notice
+ http://community.playstarbound.com/resources/2640/ - Apex Grind Again (by eurosat7)
+ http://community.playstarbound.com/resources/2644/ - Craftable Chainsaw (by XNicoX14)
+ http://community.playstarbound.com/resources/2648/ - Repair Tools (by XNicoX14)
+ http://community.playstarbound.com/resources/2696/ - Developer Clothing Sets (by Lucaine)
+ http://community.playstarbound.com/resources/2705/ - Loom (by I Said No)
+ http://community.playstarbound.com/resources/2728/ - Swamp & Lagoon Armor Returned (by Campaigner)
+ http://community.playstarbound.com/resources/2811/ - Original Pioneer Armor (by Snigery)


Version history
---------------

- 2015/05/16 v36 - added support for PG-0 Nightly (it seems no resource version is supplied anymore), de-coloured UI, new dungeons unprotected in Cheats addon, 99999 item limit for Cheats addon
- 2015/05/14 v35 - dropped support for 66x-2 Stable, rebuild and added more liquid interactions, added placeable liquid slime, added green slime blob recipe, replaced slime status effect icon
- 2015/05/13 v34 - restored UG 666 tent effects for Cheat addon, moved barrel containers to Extra addon (incompatible with Enhanced Storage)
- 2015/05/12 v33 - removed battle music patch (for now), added Emerald Glass and Emerald Blocks, barrels converted into storage containers, replaced teleport sprites with original blue Rho's concepts
- 2015/05/09 v32 - added whole bunch of Emerald-themed items, objects, tools and recipes (partially based on mod by Serverator), added Refinery recipe for Diamond Ore
- 2015/05/07 v31 - fixed generic metal armour recipes (reported by Hatsya Souji), moved copper armour recipes to Anvil instead of Metalwork Station
- 2015/05/05 v30 - moved to SG 679 Stable support, Frog and Mole merchant objects now have proper icons, descriptions, and also breakable
- 2015/04/29 v29 - added Fatal Circuit files (not used yet), fixed beacon scripts, restored Impervium Bars (no purpose yet)
- 2015/04/25 v28 - added SG 677 Stable support, changed teleport delay timing a bit
- 2015/04/21 v27 - fixed incorrect Erchius Crystal recipe (reported by crushinblue), added copper armour recipe, re-added slime and lagoon armour recipes, changed the way common metal armour recipes are learned, slime furniture recipe learning now attached to Green Slime pickup
- 2015/04/18 v26 - changed starter world lookup to "forest" biome and removed planet size restriction, speeded up first run universe generation and world lookup, removed support for 670 - 673 Nightly
- 2015/04/10 v25 - added support for Spirited Giraffe, more liquid interactions, removed fullscreen teleport animation
- 2015/03/28 v24 - restored original Pioneer armour set (requested by Snigery), craftable teleporters and teleporter cores
- 2015/03/24 v23 - added option to install on both Stable and Nightly, patched teleporter object to be craftable and transferable, added portable teleporter, added cheats
- 2015/03/22 v22 - added Wreckage of Dreadwing quest, patched Dreadwing quest to obtain matteritem and Bonus Armour, added Bad To The Bone quest and Decoy Princess Schematics decorative object. Bone Dragon boss is now integrated into quest line
- 2015/03/21 v21 - added Power Loom object (based on mod by I Said No), added reworked Chucklefish icon and logo animation
- 2015/03/17 v20 - erchius crystal from liquid fuel and diamonds, erchius crystal as fuel, does not deserve a separate version number
- 2015/03/16 v20 - balanced pixel prices for old furnaces, blocks of Erchius Crystals drop Erchius Crystals
- 2015/03/15 v19 - added Old Stone Furnace, Old Alloy Furnace and Monster's Brain in a Jar, renamed Distress Beacon and fixed quest descriptions
- 2015/03/04 v18 - added Creative Mode spawn recipes for every restored/implemented item, re-added stone tools (axe, pickaxe and hoe), added recipe for vanilla diamond armor, fixed links to restored vanilla armour sets (silver, golden, platinum, matter)
- 2015/03/03 v17 - removed "wellfed" effect from CLeF consumables, added plain Popcorn consumable and recipe for cooking and kitchen categories, cloned and repainted distress beacon object in order to remove possible collisions with other mods, removed recipe for vanilla distress beacon
- 2015/02/28 v16 - restored classic repair functionality (thanks to Grover Cures Houses), removed "repair" recipes, renamed Coffee Seed to Raw Coffee Beans, Raw Coffee Beans to Coffee Beans via campfire/microwave, slime armor now requires 1 slime block per item
- 2015/02/27 v15 - re-added swamp & lagoon armour sets (based on mod by Campaigner)
- 2015/02/26 v14 - re-integrated "The First Contact" quest, Dreadwing UFO drops 5 Molten Core and 21 Core Fragment Ore. restored battle music (based on mod by LegendXCarisso)
- 2015/02/25 v13 - restored Butterfly Boost tech, fixed description of Morph Ball tech
- 2015/02/24 v12 - moved developer clothes recipe to tier1 items in player.config.patch, removed plantfibre.item.patch. fixes bunch of "learned how to craft..." messages which covered the entire screen
- 2015/02/23 v11 - changed liquid interactions, core lava will now act like normal lava
- 2015/02/21 v10 - added missing .matmod patch, removed diamond ore from treasure pools
- 2015/02/20 v9 - added optimized Hobo font with fixed cyrillic characters
- 2015/02/19 v8 - re-added developer clothing sets (based on mod by Lucaine)
- 2015/02/18 v7 - balance: added 2 iron bar requirement for molten core, added new screen resolutions and zoom levels (based on mod by eurosat7), removed shield protection from randomly generated dungeons (thanks to eurosat7), diamond ore returns
- 2015/02/16 v6 - added craftable chainsaw, added repairable pickaxes and drills (based on mods by XNicoX14)
- 2015/02/15 v5 - un-nerfed morph ball tech, core fragment ore from 10 Lava and 1 Oil, Lava gives 1 fuel, Coal from 10 Wood
- 2015/02/15 v4 - ported to current .patch system, reorganized mod directory structure, added "The Brain Hunter" quest, removed Rope limit
- 2015/02/13 v3 - unlocked old armours, fixed inability to access fuel tank in tier2 ships
- 2015/02/12 v2 - added brain recipes
- 2015/02/10 v1 - first release


License
-------

This modification has been released under Creative Commons Attribution Share-Alike 4.0 International license terms.

You don't need to ask my permission to modify or integrate this mod or any part of it into other modpacks, but please release the resulting material under the exact same license terms, so the other people would enjoy it. Thank you. ^_^