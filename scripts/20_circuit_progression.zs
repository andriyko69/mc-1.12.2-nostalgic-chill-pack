import mods.energycontrol.KitAssembler;
import mods.jei.JEI;

var redstone = <minecraft:redstone>;
var ironIngot = <minecraft:iron_ingot>;
var goldIngot = <minecraft:gold_ingot>;
var flint = <minecraft:flint>;
var basicCircuitKit = <energycontrol:item_component:1>;
var advancedCircuitKit = <energycontrol:item_component>;

# Energy Control circuit kits must not bypass IC2 circuit progression.
KitAssembler.removeRecipe(redstone * 2, ironIngot, flint);
KitAssembler.removeRecipe(redstone * 2, goldIngot, basicCircuitKit);
JEI.hide(basicCircuitKit);
JEI.hide(advancedCircuitKit);
