import crafttweaker.item.IItemStack;
import mods.ic2.Macerator;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;
import moretweaker.railcraft.RollingMachine;

# Disabled Thermal processing machines and bypass augments.
JEI.removeAndHide(<thermalexpansion:machine:1>); # Pulverizer
JEI.removeAndHide(<thermalexpansion:machine:0>); # Redstone Furnace
JEI.removeAndHide(<thermalexpansion:machine:2>); # Sawmill
JEI.removeAndHide(<thermalexpansion:machine:5>); # Compactor
JEI.removeAndHide(<thermalexpansion:machine:10>); # Centrifugal Separator
JEI.removeAndHide(<thermalexpansion:augment:256>); # Trivection Chamber
JEI.removeAndHide(<thermalexpansion:augment:257>); # Flux Anodizers
JEI.removeAndHide(<thermalexpansion:augment:258>); # Pyrolytic Conversion
JEI.removeAndHide(<thermalexpansion:augment:273>); # Tectonic Initiator
JEI.removeAndHide(<thermalexpansion:augment:288>); # Resin Funnel
JEI.removeAndHide(<thermalexpansion:augment:303>); # Metallurgical Recovery
JEI.removeAndHide(<thermalexpansion:augment:336>); # Numismatic Press
JEI.removeAndHide(<thermalexpansion:augment:337>); # Gearworking Die
JEI.removeAndHide(<thermalexpansion:augment:416>); # Enstabulation Apparatus

# Steel stays in the IC2 processing domain.
var steelBlend = <thermalfoundation:material:96>;
var ironIngot = <minecraft:iron_ingot>;
var ironDust = <ic2:dust:8>;
var carbonDusts = [
    <thermalfoundation:material:768>, # TE Pulverized Coal
    <thermalfoundation:material:769>, # TE Pulverized Charcoal
    <thermalfoundation:material:802>, # TE Coal Coke
] as IItemStack[];

JEI.removeAndHide(steelBlend);

for secondary in carbonDusts {
    InductionSmelter.removeRecipe(secondary, ironIngot);
    InductionSmelter.removeRecipe(secondary, ironDust);
}
InductionSmelter.removeRecipe(<minecraft:sand>, steelBlend);
RollingMachine.remove(<ore:plateSteel>);

# AE2 dust progression uses the IC2 Macerator.
Macerator.addRecipe(<appliedenergistics2:material:2>, <ore:crystalCertusQuartz>);
Macerator.addRecipe(<appliedenergistics2:material:3>, <ore:gemQuartz>);
Macerator.addRecipe(<appliedenergistics2:material:8>, <ore:crystalFluix>);
Macerator.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
