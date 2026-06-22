import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;

var transferEnchants as IRecipeFunction = function(out, ins, cInfo) {
    var key = "";
    if (!isNull(ins.wyvern)) key = "wyvern";
    else if (!isNull(ins.advnano)) key = "advnano";
    
    if (key != "" && ins[key].hasTag && ins[key].tag has "ench") {
        return out.withTag({ench: ins[key].tag.ench});
    }
    return out; 
};

recipes.remove(<gravisuite:advancednanochestplate>);
recipes.remove(<ic2:quantum_helmet>);
recipes.remove(<ic2:quantum_leggings>);
recipes.remove(<ic2:quantum_boots>);

recipes.remove(<draconicevolution:wyvern_chest>);
recipes.remove(<draconicevolution:wyvern_helm>);
recipes.remove(<draconicevolution:wyvern_legs>);
recipes.remove(<draconicevolution:wyvern_boots>);

var wyvernChest as IIngredient = <draconicevolution:wyvern_chest>.anyDamage().marked("wyvern");
recipes.addShaped("advnano_upgrade", <gravisuite:advancednanochestplate>, [
    [<ic2:crafting:3>, <ic2:crafting:15>, <ic2:crafting:3>],
    [<ic2:crafting:4>, wyvernChest, <ic2:crafting:4>],
    [<ic2:crafting:3>, <ic2:lapotron_crystal>.anyDamage(), <ic2:crafting:3>]
], transferEnchants);

var wyvernHelm as IIngredient = <draconicevolution:wyvern_helm>.anyDamage().marked("wyvern");
recipes.addShaped("quantum_helm_upgrade", <ic2:quantum_helmet>, [
    [<ic2:glass>, wyvernHelm, <ic2:glass>],
    [<ic2:crafting:4>, <ic2:lapotron_crystal>.anyDamage(), <ic2:crafting:4>],
    [<ore:circuitAdvanced>, <ic2:hazmat_helmet>, <ore:circuitAdvanced>]
], transferEnchants);

var wyvernLegs as IIngredient = <draconicevolution:wyvern_legs>.anyDamage().marked("wyvern");
recipes.addShaped("quantum_legs_upgrade", <ic2:quantum_leggings>, [
    [<ore:machineBlockAdvancedCasing>, <ic2:lapotron_crystal>.anyDamage(), <ore:machineBlockAdvancedCasing>],
    [<ic2:crafting:4>, wyvernLegs, <ic2:crafting:4>],
    [<ore:dustGlowstone>, null, <ore:dustGlowstone>]
], transferEnchants);

var wyvernBoots as IIngredient = <draconicevolution:wyvern_boots>.anyDamage().marked("wyvern");
recipes.addShaped("quantum_boots_upgrade", <ic2:quantum_boots>, [
    [<ic2:crafting:4>, wyvernBoots, <ic2:crafting:4>],
    [<ic2:rubber_boots>.anyDamage(), <ic2:lapotron_crystal>.anyDamage(), <ic2:rubber_boots>.anyDamage()],
], transferEnchants);
