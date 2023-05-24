A collection of mods with some slight customization to create a core gameplay around long-distance logistics with a variety of vehicle types on a huge island world. This is definitely a **Mod Pack** and not an overhaul of it's own, although creating a "vanilla+" game setting is the goal. 99.9% of the work here is done by the mods included in the pack, there is only slight overhead in this mod tying them together.

**General Themes**

* Require use of long-distance resource outposts by locking Oil outside of the tiny starting island with limited resources.

* Make fueling a network of ships, planes, trains and trucks somewhat more interesting than spamming vanilla Rocket Fuel/Nuclear Fuel, and powering outpost islands more interesting than dragging floating power poles across the ocean.

**Intended Gameplay**

* Start on a tiny island without any access to oil, and a limited amount of basic resources to begin with. 
* Get started with Automation & Logistic science to research and construct a Boat and find islands with more resources.
* Use vehicle based logistics from AAI Programmable Vehicles to exploit island resources from afar without needing to set up a rail network on every island.
* Unlock Chemical Science with the very limited amount of oil provided by Crude Oil patches on land (roughly 20% what you'd find in vanilla).
* Unlock Offshore Oil Rigs to exploit very rich Offshore Oil deposits and huge Cargo Ships to transport bulk goods.
* Unlock automatable Airplanes to cross the vast distances between islands at a much faster speed, but with far less cargo space than ships.
* Refine oil into Diesel Fuel, and used it to power your generators and your vehicles before obtaining nuclear power. Fuel your hungry ships, planes, trucks, and trains with efficient refined Diesel Fuel, but the barrel it is stored in is output as spent fuel.
* Finally, unlock the Ballistic Missile Silo to exterminate island natives from afar.

-

Integrated Mods with changes made:


**Advanced Autonomous Industries** is fully enabled as dependencies but no changes have been made to it. Everything this fantastic set of mods does plays into what this modpack is trying to do. The only slight change is the Fuel Processing from AAI is set to be disabled by default, as this modpack intends you to use Diesel Fuel for your vehicles before getting Nuclear Fuel.

**Cargo Ships**: Ships & Offshore Oil
-Offshore power poles are disabled.
-Land oil is enabled by default, with the large Cargo Ship and Oil Tanker both locked behind Chemical Science.
-Offshore oil is greatly reduced in frequency due to the huge number of water chunks in Lotus Island World's map generation, and to make finding it not quite so trivial (It's still not rare)
-Offshore oil has been given an autoplace control in the map generation, allowing adjustment of it's frequency and abundance independent of land oil.

**Resource Generation Overhaul**: Balancing Resource Distribution
-Settings are customized to make sure islands aren't overly abundant/diverse with resources or overly barren.
-Oil in the starting area is disabled.

**KS Power** & **Schall Oil Fuel**: Uses for oil as a power source, both for energy and vehicle fuel.
-Two unrelated mods I have integrated to each other in this pack. KS Power adds a Diesel Fuel that I have edited for this modpack to be intended for use as vehicle fuel. All of the variations for power generation added by KS Power are welcome additions to the modpack's themes a well.
Changes:
-Diesel fuel is rebalanced to be intended to have better energy storage than rocket fuel to encourage use in vehicles, but lacks the extra speed bonus rocket fuel has.
-AAI Processed Fuel is disabled by default, use of Diesel Fuel is intended. AAI fuel can simply be enabled in the settings if desired
-1 stack of Solid Fuel = 600 MJ
-1 stack of Rocket Fuel = 1000 MJ
-1 stack of Diesel Fuel Barrel = 1150 MJ and same speed/acceleration properties as Rocket Fuel, but with Empty Barrels as spent fuel.
-1 stack of Nuclear Fuel = 1210 MJ + Better speed/acceleration than Diesel Fuel (vanilla energy & speed/acceleration values).

**Nuclear Fuel**: Add slight complexity to nuclear fuel production.
Changes:
-Vanilla Nuclear Fuel (which Nuclear Fuel mod doesn't change) now outputs Spent Fuel Cells when used as burner fuel. 

**Aircraft & Aircraft Realism**: Programmable planes that require takeoff/landing space.
Changes:
-Only the new fuel type, which was not automatically integrated by Schall Oil Fuel.

Island World Necessities:
**Simple Landfill Mining** and **CanalBuilder Simplified**: Make landfill removable (does not recover the landfill item), adds a placable waterfill.
**Long Reach**: Don't try placng waterways without this, please.
**Remote Configuration**: Very convienent on a large map.
**Underwater Pipes**: Self-explanatory.
**Jetpack**: Hop around without needing to get into a vehicle.
**Hovercrafts**: An all-terrain-vehicle for islands.
**Big Brother**: Upgrade radar to chart the vast ocean.
**Ballistic Missile**: Artillery doesn't cut it.

Island generation script is modified off of Freight Forwarding, but does not rely on it as a dependency.