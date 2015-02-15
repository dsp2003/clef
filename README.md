# Choke Le Fish
Starbound content restoration and gameplay tweaking mod

Version 5 (2015/02/15)
---------
For [Stable] Upbeat Giraffe 2-666


Overview
--------

As you probably know, not all players are happy with the changes that were made to the game in comparison with Enraged Koala builds. Although many new things were added, a lot of the aspects were nerfed or removed altogether, which made the game less fun and far more boring.

This mod is my small and clumsy attempt to address and revert these changes in Upbeat Giraffe to some degree, as well as introduce other balance tweaks, which are backported from the Enraged Koala I modded privately for my personal enjoyment. ;)


Known bugs
----------

+ The game prevents patching of items/defaultparameters.config, hence a complete replacement file is used instead. CLeF will conflict with any mods that replace it.

+ CLeF will conflict with any mod which adds learnBlueprintsOnPickup variable to items/generic/crafting/corefragmentore.item. Various ore farming mods included. The solution is to remove the above-mentioned variable from CLeF's .patch and insert contents of variable into problematic mod's patch instead.


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

+ [N] Core fragment ore can be crafted in Alloy Furnace from 10 Lava and 1 Oil (recipe learned on picking the Lava)

+ [N] Molten Core can be crafted from 10 core fragments (the recipe added to stone furnace upon pickup, originally was dropped by UFO boss in EK)

+ [R] Metalwork station requires 1 Molten Core to craft (same as in EK)

+ [N] Core fragment gives 10 points of fuel (seriously, what that pile of blasted glowing stones is even good for?!)

+ [N] Oil gives 1 point of fuel (it's flammable IRL, so why not?)

+ [N] Lava gives 1 point of fuel (because it's basically the source of core fragments)

+ [R] Coal gives 2 points of fuel (same as in EK, 0 in UG)

+ [R] Coal can be crafted from 10 Unrefined Wood in Stone Furnace (recipe learned on picking up the Wood)

+ [M] Intraspace travel takes 5 points of fuel (was 50 in EK, 0 in UG made little to no sense, but...)

+ [F] Fixed inability to fuel your ship for vanilla races when starting a new game (required because intraspace travels are not free anymore).

+ [M] Interspace travel takes 300 points maximum (was 200 in EK and up to 1000 in UG, which is unreal and would leave you with depleted engine. This seems to be the reason (beside the coal not being a "fuel" anymore) why intraspace travel was made cost free in UG, otherwise you'd stuck forever if landed on anything but the Moon or Outpost planet)

+ [N] Limit for items per cell changed to 9999 (was 1000 in EK/UG. Everybody wants to be super greedy sometimes :3 )

+ [N] Removed 1000 items limit for Rope

+ [R] All pickaxes and drills have EK's durability values (not the mining area, though) and won't break so fast:
 - All drills      (1000 -> 3000)
 - Copper Pickaxe   (200 -> 7500)
 - Silver Pickaxe   (200 -> 7500)
 - Golden Pickaxe   (200 -> 7500)
 - Diamond Pickaxe  (350 -> 7500)
 - Platinum Pickaxe (200 -> 10000)

+ [M] Un-nerfed Morph Ball tech. It consumes 20 points of energy (was 35 in EK and 65 in UG)

+ [R] Silver, Gold, Platinum and Matter (Bonus) armors are available for crafting

+ [R] Iron Beacon is available for crafting. As a result, the Penguin UFO boss can be summoned (moved to its own quest location in UG)

+ [R][Incomplete] Decoy Princess is available for crafting. As a result, the bone dragon boss can be summoned (disabled in UG, no proper quest yet. Sadly, dragon acts like a bird and won't breathe any fire nor open its mouth)

+ [R][Incomplete] Brain extractor and all robot parts are available for crafting. As a result, you can summon the robot boss (disabled in UG, no proper quest yet. In UG original robot was replaced by Penguin Bot and appears instead of the old one when summoned)

+ [N] 2 new cooking recipes:
 - Brain Stew. Cooked from Wheat, Pearlpea, Corn and Inferior Brain
 - Brain Pie. Cooked from Mashed Potato, Inferior Brain and Superior Brain

+ [N] New quest: "The Brain Hunter". Automatically assigned upon picking up the Brain Extractor. Reward: 100-500 pixels


To-do
-----

+ The moons with more life and loot underneath, not just a stinky fuel

+ Barren worlds with realistic core, undercaves and stuff

+ Make Penguin UFO boss to drop 5 Molten Core (removed in UG)

+ Seamlessly integrate the old quests and boss fights back into game, including the distress beacon UFO with the secondaries and the old robot boss (add as an alternative way of obtaining Core Fragments and/or Molten Core and the processor chip)


Stuff I can't fix (yet)
-----------------------

+ Lack of hunger and cold/hot temperatures on the lowest game setting (hardcoded)

+ Repairable pickaxes and drills (hardcoded, but may possibly be overridden if you'll hook them with LUA code which re-adds "broken" counterparts and accepts the ore)


P.S. The patch system doesn't seem to work properly in my case, so using the entire file replacements instead (compatible with patches). Will surely break compatibility with UG other than 2-666, so any help would be very much appreciated.


Version history
---------------

- 2015/02/15 v5 - un-nerfed morph ball tech, core fragment ore from 10 Lava and 1 Oil, Lava gives 1 fuel, Coal from 10 Wood
- 2015/02/15 v4 - ported to current .patch system, reorganized mod directory structure, added "The Brain Hunter" quest, removed Rope limit
- 2015/02/13 v3 - unlocked old armours, fixed inability to access fuel tank in tier2 ships
- 2015/02/12 v2 - added brain recipes
- 2015/02/10 v1 - first release


License
-------

This modification has been released under Creative Commons Attribution Share-Alike 4.0 International license terms.

You don't need to ask my permission to modify or integrate this mod or any part of it into other modpacks, but please release the resulting material under the exact same license terms, so the other people would enjoy it. Thank you. ^_^
