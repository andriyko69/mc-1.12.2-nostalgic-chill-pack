var sunnariumPart = <advanced_solar_panels:crafting:1>;
var advCircuit = <ore:circuitAdvanced>;
var steelPlate = <ore:plateSteel>;
var invarGear = <ore:gearInvar>;
var electrumGear = <ore:gearElectrum>;
var lumiumIngot = <ore:ingotLumium>;
var enderiumIngot = <ore:ingotEnderium>;
var copperPlate = <ore:plateCopper>;
var tinPlate = <ore:plateTin>;
var ironIngot = <ore:ingotIron>;
var redstoneDust = <ore:dustRedstone>;
var stickWood = <ore:stickWood>;

var ironFrame = <advgenerators:iron_frame>;
var ironTubing = <advgenerators:iron_tubing>;
var ironWiring = <advgenerators:iron_wiring>;
var controller = <advgenerators:controller>;
var pressureValve = <advgenerators:pressure_valve>;
var upgradeKit = <advgenerators:upgrade_kit>;
var powerIo = <advgenerators:power_io>;
var rfCoil = <thermalfoundation:material:513>;
var reinforcedRfCapacitor = <thermalexpansion:capacitor:2>;
var signalumRfCapacitor = <thermalexpansion:capacitor:3>;
var resonantRfCapacitor = <thermalexpansion:capacitor:4>;

recipes.remove(<advgenerators:iron_frame>);
recipes.remove(<advgenerators:iron_tubing>);
recipes.remove(<advgenerators:iron_wiring>);
recipes.remove(<advgenerators:controller>);
recipes.remove(<advgenerators:pressure_valve>);
recipes.remove(<advgenerators:upgrade_kit>);
recipes.remove(<advgenerators:power_io>);
recipes.remove(<advgenerators:fluid_input>);
recipes.remove(<advgenerators:fluid_output_select>);
recipes.remove(<advgenerators:fuel_tank>);
recipes.remove(<advgenerators:turbine_controller>);
recipes.remove(<advgenerators:steam_turbine_controller>);
recipes.remove(<advgenerators:exchanger_controller>);
recipes.remove(<advgenerators:heat_exchanger>);
recipes.remove(<advgenerators:syngas_controller>);
recipes.remove(<advgenerators:mixing_chamber>);
recipes.remove(<advgenerators:heating_chamber>);
recipes.remove(<advgenerators:rf_output>);
recipes.remove(<advgenerators:forge_output>);
recipes.remove(<advgenerators:efficiency_upgrade_tier1>);
recipes.remove(<advgenerators:efficiency_upgrade_tier2>);
recipes.remove(<advgenerators:turbine_iron>);
recipes.remove(<advgenerators:turbine_gold>);
recipes.remove(<advgenerators:turbine_bronze>);
recipes.remove(<advgenerators:turbine_steel>);
recipes.remove(<advgenerators:turbine_enderium>);
recipes.remove(<advgenerators:turbine_adv_alloy>);
recipes.remove(<advgenerators:power_capacitor_redstone>);
recipes.remove(<advgenerators:power_capacitor_advanced>);
recipes.remove(<advgenerators:power_capacitor_dense>);
recipes.remove(<advgenerators:capacitor_kit_advanced>);
recipes.remove(<advgenerators:capacitor_kit_dense>);

recipes.addShaped("advgen_gate_iron_frame", <advgenerators:iron_frame> * 2, [
    [null, steelPlate, null],
    [steelPlate, ironIngot, steelPlate],
    [null, steelPlate, null]
]);

recipes.addShaped("advgen_gate_iron_tubing", <advgenerators:iron_tubing> * 12, [
    [steelPlate, null, null],
    [null, stickWood, null],
    [null, null, steelPlate]
]);

recipes.addShaped("advgen_gate_iron_wiring", <advgenerators:iron_wiring> * 12, [
    [steelPlate, redstoneDust, null],
    [redstoneDust, electrumGear, redstoneDust],
    [null, redstoneDust, steelPlate]
]);

recipes.addShaped("advgen_gate_controller", <advgenerators:controller>, [
    [steelPlate, advCircuit, steelPlate],
    [redstoneDust, <minecraft:quartz>, redstoneDust],
    [steelPlate, electrumGear, steelPlate]
]);

recipes.addShaped("advgen_gate_pressure_valve", <advgenerators:pressure_valve>, [
    [null, steelPlate, null],
    [ironTubing, invarGear, ironTubing],
    [null, steelPlate, null]
]);

recipes.addShaped("advgen_gate_upgrade_kit", <advgenerators:upgrade_kit> * 16, [
    [steelPlate, null, steelPlate],
    [null, invarGear, null],
    [null, stickWood, null]
]);

recipes.addShaped("advgen_gate_power_io", <advgenerators:power_io>, [
    [steelPlate, electrumGear, steelPlate],
    [lumiumIngot, advCircuit, lumiumIngot],
    [steelPlate, electrumGear, steelPlate]
]);

recipes.addShaped("advgen_gate_fluid_input", <advgenerators:fluid_input>, [
    [steelPlate, tinPlate, steelPlate],
    [ironFrame, <minecraft:bucket>, ironFrame],
    [null, ironTubing, null]
]);

recipes.addShaped("advgen_gate_fluid_output", <advgenerators:fluid_output_select>, [
    [steelPlate, copperPlate, steelPlate],
    [ironFrame, ironTubing, ironFrame],
    [null, copperPlate, null]
]);

recipes.addShaped("advgen_gate_fuel_tank", <advgenerators:fuel_tank>, [
    [ironFrame, <minecraft:glass_pane>, ironFrame],
    [<minecraft:glass_pane>, steelPlate, <minecraft:glass_pane>],
    [ironFrame, ironTubing, ironFrame]
]);

recipes.addShaped("advgen_gate_gas_controller", <advgenerators:turbine_controller>, [
    [ironFrame, advCircuit, ironFrame],
    [ironTubing, lumiumIngot, ironTubing],
    [steelPlate, sunnariumPart, steelPlate]
]);

recipes.addShaped("advgen_gate_steam_controller", <advgenerators:steam_turbine_controller>, [
    [ironFrame, advCircuit, ironFrame],
    [ironWiring, invarGear, ironWiring],
    [steelPlate, sunnariumPart, steelPlate]
]);

recipes.addShaped("advgen_gate_exchanger_controller", <advgenerators:exchanger_controller>, [
    [ironFrame, advCircuit, ironFrame],
    [ironTubing, invarGear, ironTubing],
    [steelPlate, sunnariumPart, steelPlate]
]);

recipes.addShaped("advgen_gate_heat_exchanger", <advgenerators:heat_exchanger>, [
    [steelPlate, ironTubing, steelPlate],
    [copperPlate, invarGear, tinPlate],
    [steelPlate, ironTubing, steelPlate]
]);

recipes.addShaped("advgen_gate_syngas_controller", <advgenerators:syngas_controller>, [
    [ironFrame, pressureValve, ironFrame],
    [ironTubing, controller, ironTubing],
    [steelPlate, invarGear, steelPlate]
]);

recipes.addShaped("advgen_gate_mixing_chamber", <advgenerators:mixing_chamber>, [
    [ironFrame, ironTubing, ironFrame],
    [pressureValve, invarGear, pressureValve],
    [steelPlate, ironTubing, steelPlate]
]);

recipes.addShaped("advgen_gate_heating_chamber", <advgenerators:heating_chamber>, [
    [ironFrame, pressureValve, ironFrame],
    [copperPlate, invarGear, copperPlate],
    [steelPlate, ironTubing, steelPlate]
]);

recipes.addShaped("advgen_gate_rf_output", <advgenerators:rf_output>, [
    [steelPlate, powerIo, steelPlate],
    [ironFrame, rfCoil, ironFrame],
    [ironWiring, lumiumIngot, ironWiring]
]);

recipes.addShaped("advgen_gate_forge_output", <advgenerators:forge_output>, [
    [redstoneDust, powerIo, redstoneDust],
    [steelPlate, lumiumIngot, steelPlate],
    [ironFrame, ironWiring, ironFrame]
]);

recipes.addShaped("advgen_gate_efficiency_upgrade_tier1", <advgenerators:efficiency_upgrade_tier1>, [
    [ironFrame, <minecraft:piston>, ironFrame],
    [pressureValve, invarGear, ironTubing],
    [steelPlate, <minecraft:piston>, steelPlate]
]);

recipes.addShaped("advgen_gate_efficiency_upgrade_tier2", <advgenerators:efficiency_upgrade_tier2>, [
    [ironFrame, <minecraft:piston>, ironFrame],
    [<advgenerators:advanced_pressure_valve>, lumiumIngot, <advgenerators:advanced_pressure_valve>],
    [steelPlate, ironTubing, steelPlate]
]);

recipes.addShaped("advgen_gate_turbine_iron", <advgenerators:turbine_iron>, [
    [steelPlate, ironTubing, steelPlate],
    [ironWiring, <advgenerators:turbine_rotor_iron>, ironWiring],
    [ironFrame, invarGear, ironFrame]
]);

recipes.addShaped("advgen_gate_turbine_gold", <advgenerators:turbine_gold>, [
    [steelPlate, ironTubing, steelPlate],
    [ironWiring, <advgenerators:turbine_rotor_gold>, ironWiring],
    [ironFrame, invarGear, ironFrame]
]);

recipes.addShaped("advgen_gate_turbine_bronze", <advgenerators:turbine_bronze>, [
    [steelPlate, ironTubing, steelPlate],
    [ironWiring, <advgenerators:turbine_rotor_bronze>, ironWiring],
    [ironFrame, invarGear, ironFrame]
]);

recipes.addShaped("advgen_gate_turbine_steel", <advgenerators:turbine_steel>, [
    [steelPlate, ironTubing, steelPlate],
    [ironWiring, <advgenerators:turbine_rotor_steel>, ironWiring],
    [ironFrame, invarGear, ironFrame]
]);

recipes.addShaped("advgen_gate_turbine_enderium", <advgenerators:turbine_enderium>, [
    [steelPlate, ironTubing, steelPlate],
    [ironWiring, <advgenerators:turbine_rotor_enderium>, ironWiring],
    [ironFrame, invarGear, ironFrame]
]);

recipes.addShaped("advgen_gate_turbine_adv_alloy", <advgenerators:turbine_adv_alloy>, [
    [steelPlate, ironTubing, steelPlate],
    [ironWiring, <advgenerators:turbine_rotor_adv_alloy>, ironWiring],
    [ironFrame, invarGear, ironFrame]
]);

recipes.addShaped("advgen_gate_power_capacitor_redstone", <advgenerators:power_capacitor_redstone>, [
    [ironFrame, ironWiring, ironFrame],
    [electrumGear, reinforcedRfCapacitor, electrumGear],
    [steelPlate, lumiumIngot, steelPlate]
]);

recipes.addShaped("advgen_gate_power_capacitor_advanced", <advgenerators:power_capacitor_advanced>, [
    [ironWiring, signalumRfCapacitor, ironWiring],
    [electrumGear, <advgenerators:power_capacitor_redstone>, electrumGear],
    [steelPlate, lumiumIngot, steelPlate]
]);

recipes.addShaped("advgen_gate_capacitor_kit_advanced", <advgenerators:capacitor_kit_advanced>, [
    [ironWiring, signalumRfCapacitor, ironWiring],
    [electrumGear, upgradeKit, electrumGear],
    [steelPlate, lumiumIngot, steelPlate]
]);

recipes.addShaped("advgen_gate_power_capacitor_dense", <advgenerators:power_capacitor_dense>, [
    [ironWiring, resonantRfCapacitor, ironWiring],
    [lumiumIngot, <advgenerators:power_capacitor_advanced>, lumiumIngot],
    [enderiumIngot, advCircuit, enderiumIngot]
]);

recipes.addShaped("advgen_gate_capacitor_kit_dense", <advgenerators:capacitor_kit_dense>, [
    [ironWiring, resonantRfCapacitor, ironWiring],
    [lumiumIngot, upgradeKit, lumiumIngot],
    [enderiumIngot, advCircuit, enderiumIngot]
]);
