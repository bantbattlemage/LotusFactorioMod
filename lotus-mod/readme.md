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

**Custom Features/Changes**

* Tweaked terrain and resource geneneration scripts to create an interesting island world with distributed resources and decent distance between islands, as well as a guarenteed tiny starting island with limited resources.
* Starting island size is controllable by "Starting Area Size" slider in the "Enemy" tab in the map settings.
* Added a control slider for Offshore Oil in the map generator independent of normal Oil. This is hacky, but it works at a basic level.
* Diesel Fuel, originally from KS Fuel mod that adds fuel burners that take oil, has been fully integrated with Schall Oil Fuel mod that turns Oil Barrels into burnable fuel and custom-balanced for use as vehicle fuel. Diesel Fuel Barrels are efficient to use as fuel for vehicles, but it has Empty Barrels as spent fuel output. To go in line with this, Nuclear Fuel has been given Spent Fuel Cells as spent fuel output as well.
* Most other changes are just integrating this new fuel type into the rest of the mod.

**Notes**

* AAI Industry, which is not required, is the only mod in the pack that changes any vanilla recipes. If you exclude this, it should be compatible with most other mods.
* If you want the AI vehicles make sure to include the **Advanced Autonomous Vehicles** modpack in the optional dependencies. This pack is all of the AAI mods **except** AAI Industry. If you want to only include some of these, just disable the vehicles modpack and pick which ones you want.
* If you want the recipe changes that make the early game and Red/Green science a bit tougher and things overall slightly more expensive, enable the **AAI Industry** optional dependency.

**Integrated Mods with full list of changes made**

**Advanced Autonomous Industries**

* Not required but it is recommended to play with at least the mining+hauler vehicles and the signals.Left none of it as a dependency so you can enable/disable whichever parts you like.

**Cargo Ships**: Ships & Offshore Oil

* Changes:
-Offshore power poles are disabled.
-Land oil is enabled by default, and Oil Rigs are set to requie Chemical Science.
-Added Chemical Science requirement to the large Cargo Ship and Oil Tanker. Red/Green science still gets you the basic Boat and techs for building Waterways and Ports.
-Offshore oil is greatly reduced in frequency due to the huge number of water chunks in Lotus Island World's map generation, and to make finding it not quite so trivial (It's still not rare)
-Offshore oil has been given an autoplace control in the map generation, allowing adjustment of it's frequency and abundance independent of land oil.

**Resource Generation Overhaul**: Balancing Resource Distribution

* Changes:
-Settings are customized to make sure islands aren't overly abundant/diverse with resources or overly barren.
-Oil in the starting area is disabled.

**KS Power** & **Schall Oil Fuel**: Uses for oil as a power source, both for energy and vehicle fuel.

* Changes: 
-Diesel fuel is rebalanced to be intended to have better energy storage than rocket fuel to encourage use in vehicles.
-AAI Processed Fuel is disabled by default, use of Diesel Fuel is intended. AAI fuel can simply be enabled in the settings if desired
-1 stack of Solid Fuel = 600 MJ
-1 stack of Rocket Fuel = 1000 MJ, unchanged from vanilla. It is worse than Diesel Fuel Barrel with slightly less fuel density per stack, but retains not having any spent fuel output.
-1 stack of Diesel Fuel Barrel = 1150 MJ and same speed/acceleration properties as Rocket Fuel, but with Empty Barrels as spent fuel.
-1 stack of Nuclear Fuel = 1210 MJ and better speed/acceleration than Diesel Fuel (vanilla energy & speed/acceleration values). Outputs Spent Fuel Cells as spent fuel.

**Nuclear Fuel**: Add slight complexity to nuclear fuel production.

* Changes:
-Vanilla Nuclear Fuel (which Nuclear Fuel mod doesn't change) now outputs Spent Fuel Cells when used as burner fuel. 

**Aircraft & Aircraft Realism**: Programmable planes that require takeoff/landing space.

* Changes:
-Only the new fuel type, which was not automatically integrated by Schall Oil Fuel.

**Jetpack**: Hop around short distances without the need for a vehicle.

* Changes:
-Added diesel barrel & oil fuel barrels as valid Jetpack fuels.

**Island World Necessities**:

* **Simple Landfill Mining** and **CanalBuilder Simplified**: Make landfill removable (does not recover the landfill item), adds a placable waterfill.

* **Long Reach**: Don't try placng waterways without this, please.

* **Remote Configuration**: Very convienent on a large map.

* **Underwater Pipes**: Self-explanatory.

* **Hovercrafts**: An all-terrain-vehicle for islands.

* **Big Brother**: Upgrade radar to chart the vast ocean.

* **Ballistic Missile**: Artillery doesn't cut it.

* **AAI Signal Transmission**: Send signals across islands.

Island generation script is modified off of Freight Forwarding, but does not rely on it as a dependency.