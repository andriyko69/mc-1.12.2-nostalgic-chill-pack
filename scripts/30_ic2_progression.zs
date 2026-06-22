# Mixed metal uses steel rather than returning to an iron-only recipe.
var mixedMetalIngot = <ic2:ingot>;

recipes.remove(mixedMetalIngot);
recipes.addShaped("ic2_mixed_metal_steel", mixedMetalIngot * 2, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]
]);

# Carbon rotor progression follows advanced IC2 materials.
var carbonRotorBlade = <ic2:crafting:34>;
var carbonRotor = <ic2:rotor_carbon>;

recipes.remove(carbonRotorBlade);
recipes.addShaped("progression_carbon_rotor_blade", carbonRotorBlade, [
    [<ore:plateCarbon>, <ore:plateSteel>, <ore:plateCarbon>],
    [<ore:plateCarbon>, <ore:plateAdvancedAlloy>, <ore:plateCarbon>],
    [<ore:plateCarbon>, <ore:plateSteel>, <ore:plateCarbon>]
]);

recipes.remove(carbonRotor);
recipes.addShaped("progression_carbon_rotor", carbonRotor, [
    [null, carbonRotorBlade, null],
    [carbonRotorBlade, <ic2:crafting:30>, carbonRotorBlade],
    [null, carbonRotorBlade, null]
]);

# Ultimate solar power sits after reactor progression.
var hybridSolarPanel = <advanced_solar_panels:machines:3>;
var ultimateSolarPanel = <advanced_solar_panels:machines:4>;

recipes.remove(ultimateSolarPanel);
recipes.removeByInput(ultimateSolarPanel);
recipes.addShaped("progression_ultimate_hybrid_solar_post_reactor", ultimateSolarPanel, [
    [null, <ic2:lapotron_crystal>.anyDamage(), null],
    [<ic2:nuclear:3>, hybridSolarPanel, <ic2:nuclear:3>],
    [<advanced_solar_panels:crafting:5>, <ic2:nuclear:3>, <advanced_solar_panels:crafting:5>]
]);
