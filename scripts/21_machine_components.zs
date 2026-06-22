var thermalMachineFrame = <thermalexpansion:frame:0>;
var teslaMachineCase = <teslacorelib:machine_case>;
var ic2Casing = <ic2:resource:12>;

recipes.remove(thermalMachineFrame);
recipes.remove(teslaMachineCase);

recipes.addShaped("te_machine_frame_gate", thermalMachineFrame, [
    [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
    [<ore:blockGlass>, ic2Casing, <ore:blockGlass>],
    [<ore:ingotIron>, <ore:gearTin>, <ore:ingotIron>]
]);

recipes.addShaped("tesla_machine_case_gate", teslaMachineCase, [
    [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
    [<ore:blockGlass>, ic2Casing, <ore:blockGlass>],
    [<ore:ingotIron>, <ore:gearGold>, <ore:ingotIron>] # Keeps the IF gold theme
]);
