import mods.jei.JEI;
import moretweaker.railcraft.BlastFurnace;
import moretweaker.railcraft.RockCrusher;

var blastFurnaceBrick = <railcraft:blast_furnace>;
var cokeOvenBrick = <railcraft:coke_oven>;
var ironTankWall = <railcraft:tank_iron_wall>;
var solidSteamLocomotive = <railcraft:locomotive_steam_solid>.withTag({primaryColor: "light_gray", secondaryColor: "gray"});
var crusherTime = 100;

# Railcraft Blast Furnace is disabled as a steel route. Keep the block registered
# so Railcraft does not enable its alternate normal-furnace steel recipe.
recipes.removeByRecipeName("railcraft:blast_furnace$1", blastFurnaceBrick);
recipes.removeByRecipeName("railcraft:blast_furnace$3", blastFurnaceBrick);
BlastFurnace.removeAll();
JEI.removeAndHide(blastFurnaceBrick);

# Preserve the solid steam locomotive without requiring disabled Blast Furnace Bricks.
recipes.removeByRecipeName("railcraft:locomotive_steam_solid#0$1", solidSteamLocomotive);
recipes.addShaped("progression_railcraft_steam_locomotive", solidSteamLocomotive, [
    [ironTankWall, ironTankWall, cokeOvenBrick],
    [ironTankWall, ironTankWall, cokeOvenBrick],
    [<minecraft:iron_bars>, <minecraft:minecart:*>, <minecraft:minecart:*>]
]);

# MoreTweaker's RockCrusher.remove() matches outputs, so rebuild a strict
# building-material and Railcraft salvage whitelist after clearing all recipes.
RockCrusher.removeAll();

RockCrusher.add(<minecraft:mossy_cobblestone>, [
    <minecraft:gravel>,
    <minecraft:vine>
], [1.0, 0.8], crusherTime);

RockCrusher.add(<minecraft:stonebrick>, [<minecraft:cobblestone>], [1.0], crusherTime);
RockCrusher.add(<minecraft:stone_stairs>, [<minecraft:gravel>], [1.0], crusherTime);
RockCrusher.add(<minecraft:stone_brick_stairs>, [<minecraft:cobblestone>], [1.0], crusherTime);
RockCrusher.add(<minecraft:nether_brick_stairs>, [<minecraft:nether_brick>], [1.0], crusherTime);
RockCrusher.add(<minecraft:brick_stairs>, [
    <minecraft:brick> * 4,
    <minecraft:brick>,
    <minecraft:brick>
], [1.0, 0.5, 0.5], crusherTime);

RockCrusher.add(<minecraft:stone_slab>, [<minecraft:cobblestone>], [0.45], crusherTime);
RockCrusher.add(<minecraft:stone_slab:1>, [<minecraft:sand>], [0.45], crusherTime);
RockCrusher.add(<minecraft:stone_slab:3>, [<minecraft:gravel>], [0.45], crusherTime);
RockCrusher.add(<minecraft:stone_slab:4>, [<minecraft:brick>, <minecraft:brick>], [1.0, 0.75], crusherTime);
RockCrusher.add(<minecraft:stone_slab:5>, [<minecraft:cobblestone>], [0.45], crusherTime);
RockCrusher.add(<minecraft:nether_brick_fence>, [<minecraft:nether_brick>], [1.0], crusherTime);

var crushedObsidian = <railcraft:generic:7>;
var obsidianDust = <railcraft:dust>;
var goldNugget = <minecraft:gold_nugget>;

RockCrusher.add(<railcraft:worldspike:1>, [
    crushedObsidian,
    crushedObsidian,
    <minecraft:obsidian>,
    obsidianDust,
    goldNugget * 16,
    goldNugget * 8,
    goldNugget * 8,
    goldNugget * 4,
    <minecraft:prismarine>
], [1.0, 0.5, 0.25, 0.25, 1.0, 0.5, 0.5, 0.5, 0.5], crusherTime);

RockCrusher.add(<railcraft:worldspike:2>, [
    crushedObsidian,
    crushedObsidian,
    <minecraft:obsidian>,
    obsidianDust,
    goldNugget * 16,
    goldNugget * 8,
    goldNugget * 8,
    goldNugget * 4,
    <minecraft:emerald>
], [1.0, 0.5, 0.25, 0.25, 1.0, 0.5, 0.5, 0.5, 0.5], crusherTime);

RockCrusher.add(<railcraft:worldspike:3>, [
    crushedObsidian,
    crushedObsidian,
    <minecraft:obsidian>,
    obsidianDust,
    goldNugget * 16,
    goldNugget * 8,
    goldNugget * 8,
    goldNugget * 4,
    <minecraft:diamond>
], [1.0, 0.5, 0.25, 0.25, 1.0, 0.5, 0.5, 0.5, 0.5], crusherTime);
