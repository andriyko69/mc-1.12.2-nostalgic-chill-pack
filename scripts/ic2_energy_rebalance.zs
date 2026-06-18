import crafttweaker.item.IIngredient;

var carbonRotorBlade = <ic2:crafting:34>;

recipes.remove(carbonRotorBlade);
recipes.addShaped("progression_carbon_rotor_blade", carbonRotorBlade, [
    [<ore:plateCarbon>, <ore:plateSteel>, <ore:plateCarbon>],
    [<ore:plateCarbon>, <ore:plateAdvancedAlloy>, <ore:plateCarbon>],
    [<ore:plateCarbon>, <ore:plateSteel>, <ore:plateCarbon>]
]);

var carbonRotor = <ic2:rotor_carbon>;

recipes.remove(carbonRotor);
recipes.addShaped("progression_carbon_rotor", carbonRotor, [
    [null, carbonRotorBlade, null],
    [carbonRotorBlade, <ic2:crafting:30>, carbonRotorBlade],
    [null, carbonRotorBlade, null]
]);

var hybridSolarPanel = <advanced_solar_panels:machines:3>;
var ultimateSolarPanel = <advanced_solar_panels:machines:4>;
recipes.remove(ultimateSolarPanel);
recipes.removeByInput(ultimateSolarPanel);

recipes.addShaped("progression_ultimate_hybrid_solar_post_reactor", ultimateSolarPanel, [
    [null, <ic2:lapotron_crystal>.anyDamage(), null],
    [<ic2:nuclear:3>, hybridSolarPanel, <ic2:nuclear:3>],
    [<advanced_solar_panels:crafting:5>, <ic2:nuclear:3>, <advanced_solar_panels:crafting:5>]
]);
