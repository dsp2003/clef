# Choke Le Fish
Starbound content restoration and gameplay tweaking mod

Version 11 (2015/02/23)
----------

Known to work with:
- [Stable] Upbeat Giraffe 2-666
- [Stable] Upbeat Giraffe 2-668


Overview
--------

As you probably know, not all players are happy with the changes that were made to the game in comparison with Enraged Koala builds. Although many new things were added, a lot of the aspects were nerfed or removed altogether, which made the game less fun and far more boring.

This mod is my small and clumsy attempt to address and revert these changes in Upbeat Giraffe to some degree, as well as introduce other balance tweaks, which are backported from the Enraged Koala I modded privately for my personal enjoyment. ;)

Starting from Version 6, CLeF also incorporates work by other awesome people. See the full list of mods and their authors at the end of the description.


Known bugs
----------

+ The game prevents patching of items/defaultparameters.config, hence a complete replacement file is used instead. CLeF will conflict with any mods that replace it.

+ CLeF will conflict with any mod which adds learnBlueprintsOnPickup variable to items/generic/crafting/corefragmentore.item. The solution is to remove the above-mentioned variable from CLeF and insert contents of variable into problematic mod's patch.

+ The fuel cost indicator doesn't show up on Tier 2 ships (without repaired FTL drive), even though the intraspace travel is no longer free. Please keep this in mind.


Glossary
--------

* EK - Enraged Koala
* UG - Upbeat Giraffe
* [N] - new feature / addon
* [M] - modified restoration
* [R] - restored feature
* [F] - fix

Changes
-------

+ [M] Liquid interactions changed:
 - Water + Healing -> Healing Water
 - Poison + Healing Water -> Water

+ [R] Diamond ore will spawn instead of "perfectly cut" diamonds in unvisited worlds (diamonds will still spawn in treasure chests)

+ [M] Diamond can be crafted in Alloy Furnace from 2 diamond ores (recipe learned on picking up the diamond ore, was 4 diamond ores in EK and removed entirely in UG)

+ [N] Core fragment ore can be crafted in Alloy Furnace from 10 Lava and 1 Oil (recipe learned on picking the Lava)

+ [N] Molten Core can be crafted from 2 iron bars and 10 core fragments (the recipe added to stone furnace upon pickup, originally was dropped by UFO boss in EK)

+ [R] Metalwork station requires 1 Molten Core to craft (same as in EK)

+ [R] Coal can be crafted from 10 Unrefined Wood in Stone Furnace (recipe learned on picking up the Wood)

+ [N] Core fragment gives 10 points of fuel (seriously, what that pile of blasted glowing stones is even good for?!)

+ [N] Oil gives 1 point of fuel (it's flammable IRL, so why not?)

+ [N] Lava gives 1 point of fuel (because it's basically the source of core fragments)

+ [R] Coal gives 2 points of fuel (same as in EK, 0 in UG)

+ [M] Intraspace travel takes 5 points of fuel (was 50 in EK, 0 in UG made little to no sense, but...)

+ [F] Fixed inability to fuel your ship for vanilla races when starting a new game (required because intraspace travels are not free anymore)

+ [M] Interspace travel takes 300 points maximum (was 200 in EK and up to 1000 in UG, which is unreal and would leave you with depleted engine. This seems to be the reason (beside the coal not being a "fuel" anymore) why intraspace travel was made cost free in UG, otherwise you'd stuck forever if landed on anything but the Moon or Outpost planet)

+ [N] Limit for items per cell changed to 9999 (was 1000 in EK/UG. Everybody wants to be super greedy sometimes :3 )

+ [N] Removed 1000 items limit for Rope

+ [R] All pickaxes and drills have EK's durability values (which means they won't break so fast), block radius, tile damage and material costs (except pixel requirements):
 - Copper Drill     (d: 1000 -> 3000, b: 2 -> 3, d: 1.5 -> 2.9)
 - Silver Drill     (d: 1000 -> 3000, b: 2 -> 3, d: 2.0 -> 3.1)
 - Golden Drill     (d: 1000 -> 3000, b: 2 -> 3, d: 2.5 -> 3.3)
 - Diamond Drill    (d: 1000 -> 3000, b: 2 -> 3, d: 3.5 -> 3.7)
 - Platinum Drill   (d: 1000 -> 3000, b: 2 -> 3, d: 3.0 -> 3.5)
 - Copper Pickaxe   (d:  200 -> 7500)
 - Silver Pickaxe   (d:  200 -> 7500)
 - Golden Pickaxe   (d:  200 -> 7500)
 - Diamond Pickaxe  (d:  350 -> 7500)
 - Platinum Pickaxe (d: 200 -> 10000)

+ [M] Drills and pickaxes can be repaired via Basic Crafting, with both bars and ore (new custom button at the bottom left). Because the original repair funcionality was cut out from the game logic and the way the new repair function was implemented, it is (currently) impossible to distinguish between the new and used tools, hence it is strongly recommended to keep only a single instance of each in your inventory. Also, it is still possible to break them completely, which will make them disappear, so don't let their health bar to deplete!

+ [N] Chainsaw can be crafted via Metalwork Station for 6 Durasteel Bar and 12 Steel Bar

+ [M] Un-nerfed Morph Ball tech. It consumes 20 points of energy (was 35 in EK and 65 in UG)

+ [R] Iron Beacon is available for crafting. As a result, the Penguin UFO boss can be summoned (moved to its own quest location in UG)

+ [R][Incomplete] Decoy Princess is available for crafting. As a result, the bone dragon boss can be summoned (disabled in UG, no proper quest yet. Sadly, dragon acts like a bird and won't breathe any fire nor open its mouth)

+ [R][Incomplete] Brain extractor and all robot parts are available for crafting. As a result, you can summon the robot boss (disabled in UG, no proper quest yet. In UG original robot was replaced by Penguin Bot and appears instead of the old one when summoned)

+ [N] 2 new cooking recipes:
 - Brain Stew. Cooked from Wheat, Pearlpea, Corn and Inferior Brain
 - Brain Pie. Cooked from Mashed Potato, Inferior Brain and Superior Brain

+ [N] New quest: "The Brain Hunter". Automatically assigned upon picking up the Brain Extractor. Reward: 100-500 pixels

+ [R] Re-added developer clothing sets (recipes learned upon picking up the Plant Fibre and can be crafted via Yarn Spinner):
 - Ban's set
 - Bartwe's glasses
 - George's set
 - Kyren's set
 - Molly's set
 - Rhopunzel's set
 - Tiy's set

+ [R] Silver, Gold, Platinum and Matter (Bonus) armors are available for crafting

+ [M] Removed protection from randomly generated dungeons. Explaination: they weren't designed to use shields in the first place, and lots of players has already experienced problems with being unable to even access their front entrances, "thanks" to randomly generated ground obstacles, which also went under protection of the shield.

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

+ [F] Performance patch: added optimized Hobo true-type font (58 KiB and ~50000 points versus 86 Kib and ~90000 points) with fixed cyrillic characters


To-do
-----

+ Restore all removed biomes and mini-biomes

+ The moons with more life and loot underneath, not just a stinky fuel

+ Barren worlds with realistic core, undercaves and stuff

+ Make Penguin UFO boss to drop 5 Molten Core (removed in UG)

+ Seamlessly integrate the old quests and boss fights back into game (as alternative way of obtaining quest items required for progression) and/or make progression as non-linear as possible

+ Bunch of other stuff I tend to forget...


Stuff I can't fix (yet)
-----------------------

+ Lack of hunger and temperature system (hardcoded)


Third-party mods merged with CLeF
---------------------------------

+ http://community.playstarbound.com/?resources/2644/ - Craftable Chainsaw (by XNicoX14)
+ http://community.playstarbound.com/?resources/2648/ - Repair Tools (by XNicoX14)
+ http://community.playstarbound.com/?resources/2498/ - More Screen Resolutions (by eurosat7)
+ http://community.playstarbound.com/?resources/2640/ - Apex Grind Again (by eurosat7)
+ http://community.playstarbound.com/?resources/2696/ - Developer Clothing Sets (by Lucaine)


Version history
---------------

- 2015/02/23 v11 - changed liquid interactions
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
