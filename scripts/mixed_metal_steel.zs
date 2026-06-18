var mixedMetalIngot = <ic2:ingot>;

recipes.remove(mixedMetalIngot);
recipes.addShaped("ic2_mixed_metal_steel", mixedMetalIngot * 2, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]
]);
