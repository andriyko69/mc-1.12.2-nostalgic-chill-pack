import crafttweaker.item.IItemStack;
import mods.ic2.Macerator;
import mods.jei.JEI;
import moretweaker.railcraft.RollingMachine;
import mods.thermalexpansion.InductionSmelter;

JEI.removeAndHide(<thermalexpansion:machine:1>); # Pulverizer
JEI.removeAndHide(<thermalexpansion:machine:0>); # Redstone Furnace
JEI.removeAndHide(<thermalexpansion:machine:2>); # Sawmill
JEI.removeAndHide(<thermalexpansion:machine:5>); # Compactor
JEI.removeAndHide(<thermalexpansion:augment:336>); # Numismatic press
JEI.removeAndHide(<thermalexpansion:augment:337>); # Gearworking Die
JEI.removeAndHide(<thermalexpansion:machine:10>); # Centrifugal Separator
JEI.removeAndHide(<thermalexpansion:augment:416>); # Enstabulation Aparatus
JEI.removeAndHide(<thermalfoundation:material:96>); # Steel Blend
JEI.removeAndHide(<thermalexpansion:augment:288>); # Resin Funnel
JEI.removeAndHide(<thermalexpansion:augment:256>); # Trivection Chamber
JEI.removeAndHide(<thermalexpansion:augment:258>); # Pyrolytic Conversion
JEI.removeAndHide(<thermalexpansion:augment:273>); # Tectonic Initiator
JEI.removeAndHide(<thermalexpansion:augment:257>); # Flux Anodizers
JEI.removeAndHide(<thermalexpansion:augment:303>); # Metallurgical Recovery

var carbonDusts = [
    <thermalfoundation:material:768>, # TE Pulverized Coal
    <thermalfoundation:material:769>, # TE Pulverized Charcoal
    <thermalfoundation:material:802>, # TE Coal Coke
] as IItemStack[];

for secondary in carbonDusts {
	InductionSmelter.removeRecipe(secondary, <minecraft:iron_ingot>);
	InductionSmelter.removeRecipe(secondary, <ic2:dust:8>);
}
InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:96>);


Macerator.addRecipe(<appliedenergistics2:material:2>, <ore:crystalCertusQuartz>);
Macerator.addRecipe(<appliedenergistics2:material:3>, <ore:gemQuartz>);

RollingMachine.remove(<ore:plateSteel>);
recipes.remove(<thermalexpansion:frame:0>);
recipes.remove(<teslacorelib:machine_case>);

var ic2Casing = <ic2:resource:12>;

recipes.addShaped("te_machine_frame_gate", <thermalexpansion:frame:0>, [
    [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
    [<ore:blockGlass>, ic2Casing, <ore:blockGlass>],
    [<ore:ingotIron>, <ore:gearTin>, <ore:ingotIron>]
]);

recipes.addShaped("tesla_machine_case_gate", <teslacorelib:machine_case>, [
    [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
    [<ore:blockGlass>, ic2Casing, <ore:blockGlass>],
    [<ore:ingotIron>, <ore:gearGold>, <ore:ingotIron>] # Keeps the IF gold theme
]);
