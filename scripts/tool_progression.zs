import mods.jei.JEI;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;

var transferEnchants as IRecipeFunction = function(out, ins, cInfo) {
    var key = "";
    if (!isNull(ins.iridium)) key = "iridium";
    else if (!isNull(ins.advdrill)) key = "advdrill";
    else if (!isNull(ins.chainsaw)) key = "chainsaw";
    else if (!isNull(ins.wyvern)) key = "wyvern";

    if (key != "" && ins[key].hasTag && ins[key].tag has "ench") {
        return out.withTag({ench: ins[key].tag.ench});
    }
    return out; 
};

recipes.remove(<draconicevolution:wyvern_pick>);
recipes.remove(<draconicevolution:wyvern_sword>);
recipes.remove(<draconicevolution:wyvern_axe>);
recipes.remove(<draconicevolution:wyvern_shovel>);
recipes.remove(<draconicevolution:wyvern_bow>);
recipes.remove(<ic2:iridium_drill>);

recipes.remove(<gravisuite:advanceddrill>);
recipes.remove(<gravisuite:vajra>);
recipes.remove(<gravisuite:advancedchainsaw>);

val thermalAoeToolMaterials as string[] = [
    "copper",
    "tin",
    "silver",
    "lead",
    "aluminum",
    "nickel",
    "platinum",
    "steel",
    "electrum",
    "invar",
    "bronze",
    "constantan",
    "gold",
    "diamond",
    "iron",
];
for material in thermalAoeToolMaterials {
    JEI.removeAndHide(itemUtils.getItem("thermalfoundation:tool.hammer_" + material));
    JEI.removeAndHide(itemUtils.getItem("thermalfoundation:tool.excavator_" + material));
}

var wyvernPick as IIngredient = <draconicevolution:wyvern_pick>.anyDamage().marked("wyvern");

recipes.addShaped("progression_adv_drill_upgrade", <gravisuite:advanceddrill>, [
    [<ic2:upgrade>, wyvernPick, <ic2:upgrade>],
    [<ore:circuitAdvanced>, <ic2:upgrade>, <ore:circuitAdvanced>]
], transferEnchants);

var advDrill as IIngredient = <gravisuite:advanceddrill>.anyDamage().marked("advdrill");
recipes.addShaped("progression_irdm_drill", <ic2:iridium_drill>, [
	[null, <ic2:crafting:4>, null],
    [<ic2:crafting:4>, advDrill, <ic2:crafting:4>],
    [null, <ore:energyCrystal>, null]
], transferEnchants);

var wyvernAxe as IIngredient = <draconicevolution:wyvern_axe>.anyDamage().marked("wyvern");

recipes.addShaped("progression_adv_chainsaw_upgrade", <gravisuite:advancedchainsaw>, [
    [<ic2:crafting:3>, <ic2:crafting:3>, <ic2:crafting:3>],
    [<ic2:crafting:4>, wyvernAxe, <ic2:crafting:4>],
    [null, <ic2:upgrade>, null]
], transferEnchants);

var iridiumDrill as IIngredient = <ic2:iridium_drill>.anyDamage().marked("iridium");
var advancedChainsaw as IIngredient = <gravisuite:advancedchainsaw>.anyDamage().marked("chainsaw");

recipes.addShaped("progression_vajra_gate", <gravisuite:vajra>, [
    [<ic2:crafting:4>, <draconicevolution:wyvern_core>, <ic2:crafting:4>],
    [advancedChainsaw, <ic2:lapotron_crystal>.anyDamage(), iridiumDrill],
    [<ore:circuitAdvanced>, advDrill, <ore:circuitAdvanced>]
], transferEnchants);
