import mods.jei.JEI;
import crafttweaker.item.IItemStack;

var plastic = <industrialforegoing:plastic>;
var machineCase = <teslacorelib:machine_case>;
var basicCircuit = <ic2:crafting>;
var advancedCircuit = <ore:circuitAdvanced>;
var steelPlate = <ore:plateSteel>;
var gearIron = <ore:gearIron>;
var gearGold = <ore:gearGold>;
var gearInvar = <ore:gearInvar>;
var gearElectrum = <ore:gearElectrum>;

function hideIfExists(id as string) {
    var item as IItemStack = itemUtils.getItem(id);
    if (!isNull(item)) {
        JEI.removeAndHide(item);
    } else {
        print("Skipping missing IF JEI hide target: " + id);
    }
}

function removeRecipeByName(name as string, output as IItemStack) {
    recipes.removeByRecipeName(name, output);
}

recipes.remove(<industrialforegoing:laser_base>);
removeRecipeByName("industrialforegoing:laser_base", <industrialforegoing:laser_base>);
removeRecipeByName("industrialforegoing:laser_base_thermal", <industrialforegoing:laser_base>);

recipes.remove(<industrialforegoing:laser_drill>);
removeRecipeByName("industrialforegoing:laser_drill", <industrialforegoing:laser_drill>);
removeRecipeByName("industrialforegoing:laser_drill_thermal", <industrialforegoing:laser_drill>);

recipes.remove(<industrialforegoing:material_stonework_factory>);
removeRecipeByName("industrialforegoing:material_stonework_factory", <industrialforegoing:material_stonework_factory>);
removeRecipeByName("industrialforegoing:material_stonework_factory_thermal", <industrialforegoing:material_stonework_factory>);

recipes.remove(<industrialforegoing:mob_duplicator>);
removeRecipeByName("industrialforegoing:mob_duplicator", <industrialforegoing:mob_duplicator>);
removeRecipeByName("industrialforegoing:mob_duplicator_thermal", <industrialforegoing:mob_duplicator>);

recipes.remove(<industrialforegoing:range_addon:6>);
recipes.remove(<industrialforegoing:range_addon:7>);
recipes.remove(<industrialforegoing:range_addon:8>);
recipes.remove(<industrialforegoing:range_addon:9>);
recipes.remove(<industrialforegoing:range_addon:10>);
recipes.remove(<industrialforegoing:range_addon:11>);
removeRecipeByName("industrialforegoing:range_addon_6", <industrialforegoing:range_addon:6>);
removeRecipeByName("industrialforegoing:range_addon_7", <industrialforegoing:range_addon:7>);
removeRecipeByName("industrialforegoing:range_addon_8", <industrialforegoing:range_addon:8>);
removeRecipeByName("industrialforegoing:range_addon_9", <industrialforegoing:range_addon:9>);
removeRecipeByName("industrialforegoing:range_addon_10", <industrialforegoing:range_addon:10>);
removeRecipeByName("industrialforegoing:range_addon_11", <industrialforegoing:range_addon:11>);

hideIfExists("industrialforegoing:laser_base");
hideIfExists("industrialforegoing:laser_drill");
hideIfExists("industrialforegoing:material_stonework_factory");
hideIfExists("industrialforegoing:mob_duplicator");
hideIfExists("industrialforegoing:range_addon:6");
hideIfExists("industrialforegoing:range_addon:7");
hideIfExists("industrialforegoing:range_addon:8");
hideIfExists("industrialforegoing:range_addon:9");
hideIfExists("industrialforegoing:range_addon:10");
hideIfExists("industrialforegoing:range_addon:11");

recipes.remove(<industrialforegoing:crop_sower>);
removeRecipeByName("industrialforegoing:crop_sower", <industrialforegoing:crop_sower>);
removeRecipeByName("industrialforegoing:crop_sower_thermal", <industrialforegoing:crop_sower>);
recipes.addShaped("if_gate_crop_sower", <industrialforegoing:crop_sower>, [
    [plastic, <minecraft:flower_pot>, plastic],
    [<minecraft:piston>, machineCase, <minecraft:piston>],
    [gearIron, basicCircuit, gearIron]
]);

recipes.remove(<industrialforegoing:crop_recolector>);
removeRecipeByName("industrialforegoing:crop_recolector", <industrialforegoing:crop_recolector>);
removeRecipeByName("industrialforegoing:crop_recolector_thermal", <industrialforegoing:crop_recolector>);
recipes.addShaped("if_gate_crop_recolector", <industrialforegoing:crop_recolector>, [
    [plastic, <minecraft:iron_hoe>, plastic],
    [<minecraft:iron_axe>, machineCase, <minecraft:iron_axe>],
    [gearGold, basicCircuit, gearGold]
]);

recipes.remove(<industrialforegoing:plant_interactor>);
removeRecipeByName("industrialforegoing:plant_interactor", <industrialforegoing:plant_interactor>);
removeRecipeByName("industrialforegoing:plant_interactor_thermal", <industrialforegoing:plant_interactor>);
recipes.addShaped("if_gate_plant_interactor", <industrialforegoing:plant_interactor>, [
    [plastic, <minecraft:iron_hoe>, plastic],
    [<minecraft:iron_hoe>, machineCase, <minecraft:iron_hoe>],
    [gearGold, basicCircuit, gearGold]
]);

recipes.remove(<industrialforegoing:tree_fluid_extractor>);
removeRecipeByName("industrialforegoing:tree_fluid_extractor", <industrialforegoing:tree_fluid_extractor>);
recipes.addShaped("if_gate_tree_fluid_extractor", <industrialforegoing:tree_fluid_extractor>, [
    [<minecraft:stone>, <minecraft:redstone>, <minecraft:stone>],
    [<ore:logWood>, <minecraft:furnace>, <ore:logWood>],
    [<minecraft:stone>, gearIron, <minecraft:stone>]
]);

recipes.remove(<industrialforegoing:latex_processing_unit>);
removeRecipeByName("industrialforegoing:latex_processing_unit", <industrialforegoing:latex_processing_unit>);
removeRecipeByName("industrialforegoing:latex_processing_unit_thermal", <industrialforegoing:latex_processing_unit>);
recipes.addShaped("if_gate_latex_processing_unit", <industrialforegoing:latex_processing_unit>, [
    [<ore:ingotIron>, basicCircuit, <ore:ingotIron>],
    [<minecraft:furnace>, machineCase, <minecraft:furnace>],
    [<ore:ingotIron>, gearIron, <ore:ingotIron>]
]);

recipes.remove(<industrialforegoing:animal_resource_harvester>);
removeRecipeByName("industrialforegoing:animal_resource_harvester", <industrialforegoing:animal_resource_harvester>);
removeRecipeByName("industrialforegoing:animal_resource_harvester_thermal", <industrialforegoing:animal_resource_harvester>);
recipes.addShaped("if_gate_animal_resource_harvester", <industrialforegoing:animal_resource_harvester>, [
    [plastic, <minecraft:shears>, plastic],
    [<minecraft:bucket>, machineCase, <minecraft:bucket>],
    [gearGold, basicCircuit, gearGold]
]);

recipes.remove(<industrialforegoing:animal_byproduct_recolector>);
removeRecipeByName("industrialforegoing:animal_byproduct_recolector", <industrialforegoing:animal_byproduct_recolector>);
removeRecipeByName("industrialforegoing:animal_byproduct_recolector_thermal", <industrialforegoing:animal_byproduct_recolector>);
recipes.addShaped("if_gate_animal_byproduct_recolector", <industrialforegoing:animal_byproduct_recolector>, [
    [plastic, <minecraft:bucket>, plastic],
    [<minecraft:brick>, machineCase, <minecraft:brick>],
    [gearIron, basicCircuit, gearIron]
]);

recipes.remove(<industrialforegoing:animal_growth_increaser>);
removeRecipeByName("industrialforegoing:animal_growth_increaser", <industrialforegoing:animal_growth_increaser>);
removeRecipeByName("industrialforegoing:animal_growth_increaser_thermal", <industrialforegoing:animal_growth_increaser>);
recipes.addShaped("if_gate_animal_growth_increaser", <industrialforegoing:animal_growth_increaser>, [
    [plastic, <minecraft:wheat>, plastic],
    [<minecraft:wheat>, machineCase, <minecraft:wheat>],
    [gearIron, basicCircuit, gearIron]
]);

recipes.remove(<industrialforegoing:animal_stock_increaser>);
removeRecipeByName("industrialforegoing:animal_stock_increaser", <industrialforegoing:animal_stock_increaser>);
removeRecipeByName("industrialforegoing:animal_stock_increaser_thermal", <industrialforegoing:animal_stock_increaser>);
recipes.addShaped("if_gate_animal_stock_increaser", <industrialforegoing:animal_stock_increaser>, [
    [plastic, <minecraft:golden_apple>, plastic],
    [<minecraft:golden_carrot>, machineCase, <minecraft:golden_carrot>],
    [gearGold, basicCircuit, gearGold]
]);

recipes.remove(<industrialforegoing:animal_independence_selector>);
removeRecipeByName("industrialforegoing:animal_independence_selector", <industrialforegoing:animal_independence_selector>);
removeRecipeByName("industrialforegoing:animal_independence_selector_thermal", <industrialforegoing:animal_independence_selector>);
recipes.addShaped("if_gate_animal_independence_selector", <industrialforegoing:animal_independence_selector>, [
    [plastic, <ore:gemEmerald>, plastic],
    [<ore:gemEmerald>, machineCase, <ore:gemEmerald>],
    [gearGold, basicCircuit, gearGold]
]);

recipes.remove(<industrialforegoing:mob_slaughter_factory>);
removeRecipeByName("industrialforegoing:mob_slaughter_factory", <industrialforegoing:mob_slaughter_factory>);
removeRecipeByName("industrialforegoing:mob_slaughter_factory_thermal", <industrialforegoing:mob_slaughter_factory>);
recipes.addShaped("if_gate_mob_slaughter_factory", <industrialforegoing:mob_slaughter_factory>, [
    [plastic, steelPlate, plastic],
    [<minecraft:diamond_sword>, machineCase, <minecraft:diamond_axe>],
    [gearInvar, advancedCircuit, gearInvar]
]);

recipes.remove(<industrialforegoing:mob_relocator>);
removeRecipeByName("industrialforegoing:mob_relocator", <industrialforegoing:mob_relocator>);
removeRecipeByName("industrialforegoing:mob_relocator_thermal", <industrialforegoing:mob_relocator>);
recipes.addShaped("if_gate_mob_relocator", <industrialforegoing:mob_relocator>, [
    [plastic, steelPlate, plastic],
    [<minecraft:book>, machineCase, <minecraft:ender_pearl>],
    [gearGold, advancedCircuit, gearGold]
]);

recipes.remove(<industrialforegoing:black_hole_unit>);
removeRecipeByName("industrialforegoing:black_hole_unit", <industrialforegoing:black_hole_unit>);
removeRecipeByName("industrialforegoing:black_hole_unit_thermal", <industrialforegoing:black_hole_unit>);
recipes.addShaped("if_gate_black_hole_unit", <industrialforegoing:black_hole_unit>, [
    [plastic, steelPlate, plastic],
    [<minecraft:ender_eye>, <minecraft:ender_chest>, <minecraft:ender_eye>],
    [gearElectrum, advancedCircuit, gearElectrum]
]);

recipes.remove(<industrialforegoing:black_hole_tank>);
removeRecipeByName("industrialforegoing:black_hole_tank", <industrialforegoing:black_hole_tank>);
removeRecipeByName("industrialforegoing:black_hole_tank_thermal", <industrialforegoing:black_hole_tank>);
recipes.addShaped("if_gate_black_hole_tank", <industrialforegoing:black_hole_tank>, [
    [plastic, steelPlate, plastic],
    [<minecraft:ender_eye>, <minecraft:bucket>, <minecraft:ender_eye>],
    [gearElectrum, advancedCircuit, gearElectrum]
]);

recipes.remove(<industrialforegoing:enchantment_extractor>);
removeRecipeByName("industrialforegoing:enchantment_extractor", <industrialforegoing:enchantment_extractor>);
removeRecipeByName("industrialforegoing:enchantment_extractor_thermal", <industrialforegoing:enchantment_extractor>);
recipes.addShaped("if_gate_enchantment_extractor", <industrialforegoing:enchantment_extractor>, [
    [plastic, steelPlate, plastic],
    [<minecraft:book>, machineCase, <minecraft:book>],
    [<ore:gemDiamond>, advancedCircuit, <ore:gemDiamond>]
]);

recipes.remove(<industrialforegoing:enchantment_aplicator>);
removeRecipeByName("industrialforegoing:enchantment_aplicator", <industrialforegoing:enchantment_aplicator>);
removeRecipeByName("industrialforegoing:enchantment_aplicator_thermal", <industrialforegoing:enchantment_aplicator>);
recipes.addShaped("if_gate_enchantment_aplicator", <industrialforegoing:enchantment_aplicator>, [
    [plastic, steelPlate, plastic],
    [<minecraft:anvil>, machineCase, <minecraft:anvil>],
    [gearInvar, advancedCircuit, gearInvar]
]);

recipes.remove(<industrialforegoing:enchantment_invoker>);
removeRecipeByName("industrialforegoing:enchantment_invoker", <industrialforegoing:enchantment_invoker>);
removeRecipeByName("industrialforegoing:enchantment_invoker_thermal", <industrialforegoing:enchantment_invoker>);
recipes.addShaped("if_gate_enchantment_invoker", <industrialforegoing:enchantment_invoker>, [
    [plastic, steelPlate, plastic],
    [<ore:gemDiamond>, machineCase, <ore:gemDiamond>],
    [<minecraft:obsidian>, advancedCircuit, <minecraft:obsidian>]
]);

recipes.remove(<industrialforegoing:enchantment_refiner>);
removeRecipeByName("industrialforegoing:enchantment_refiner", <industrialforegoing:enchantment_refiner>);
removeRecipeByName("industrialforegoing:enchantment_refiner_thermal", <industrialforegoing:enchantment_refiner>);
recipes.addShaped("if_gate_enchantment_refiner", <industrialforegoing:enchantment_refiner>, [
    [plastic, steelPlate, plastic],
    [<minecraft:book>, machineCase, <minecraft:enchanted_book>],
    [gearElectrum, advancedCircuit, gearElectrum]
]);

recipes.remove(<industrialforegoing:infinity_drill>);
removeRecipeByName("industrialforegoing:infinity_drill_0", <industrialforegoing:infinity_drill>);
recipes.addShaped("if_gate_infinity_drill", <industrialforegoing:infinity_drill>, [
    [<draconicevolution:wyvern_core>, steelPlate, <ore:gearElectrum>],
    [plastic, <ic2:iridium_drill>.anyDamage(), plastic],
    [advancedCircuit, machineCase, <industrialforegoing:pink_slime_ingot>]
]);
