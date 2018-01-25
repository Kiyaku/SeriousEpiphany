import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val table = LootTables.getTable("lootchests:serious_loot");
val common = table.addPool("common", 2, 4, 1, 1);
val uncommon = table.addPool("uncommon", 1, 4, 1, 1);
val rare = table.addPool("rare", 1, 3, 1, 1);
val mythic = table.addPool("mythic", 1, 2, 1, 1);

// common.addItemEntryHelper(<minecraft:apple>, 1, 1, [], []);

var chestNames = ["abandoned_mineshaft", "desert_pyramid", "end_city_treasure", "igloo_chest", "jungle_temple", "nether_bridge", "simple_dungeon", "stronghold_corridor", "stronghold_crossing", "stronghold_library", "village_blacksmith"] as string[];
var mobNames = ["skeleton", "zombie", "creeper", "spider", "blaze", "stray"] as string[];


for chestName in chestNames {
	val tempTable = LootTables.getTable("minecraft:chests/" + chestName);
	val tempPool = tempTable.getPool("main");

	tempPool.addItemEntryHelper(<lootchests:loot_crate:0>, 5, 1, [], []);
	tempPool.addItemEntryHelper(<lootchests:loot_crate:1>, 3, 1, [], [Conditions.randomChance(0.9)]);
	tempPool.addItemEntryHelper(<lootchests:loot_crate:2>, 2, 1, [], [Conditions.randomChance(0.7)]);
	tempPool.addItemEntryHelper(<lootchests:loot_crate:3>, 1, 1, [], [Conditions.randomChance(0.5)]);
}

for mobName in mobNames {
	val tempTable = LootTables.getTable("minecraft:entities/" + mobName);
	val tempPool = tempTable.getPool("main");

	tempPool.addItemEntryHelper(<lootchests:loot_crate:0>, 1, 1, [Functions.setCount(0, 1)], [Conditions.killedByPlayer(), Conditions.randomChance(0.2)]);
	tempPool.addItemEntryHelper(<lootchests:loot_crate:1>, 1, 1, [Functions.setCount(0, 1)], [Conditions.killedByPlayer(), Conditions.randomChance(0.1)]);
	tempPool.addItemEntryHelper(<lootchests:loot_crate:2>, 1, 1, [Functions.setCount(0, 1)], [Conditions.killedByPlayer(), Conditions.randomChance(0.05)]);
	tempPool.addItemEntryHelper(<lootchests:loot_crate:3>, 1, 1, [Functions.setCount(0, 1)], [Conditions.killedByPlayer(), Conditions.randomChance(0.025)]);
}


// Common
common.addItemEntryHelper(<minecraft:stone> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:stone:1> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:stone:5> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:stone:3> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:clay> * 8, 1, 50, [Functions.setCount(8, 16)], []);

common.addItemEntryHelper(<minecraft:dirt> * 8, 45, 1, [Functions.setCount(8, 16), Functions.setMetadata(0, 2)], []);
common.addItemEntryHelper(<minecraft:sand> * 8, 45, 1, [Functions.setCount(8, 16), Functions.setMetadata(0, 1)], []);
common.addItemEntryHelper(<minecraft:gravel> * 8, 45, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:grass> * 8, 45, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:stained_hardened_clay> * 8, 45, 1, [Functions.setCount(8, 16), Functions.setMetadata(0, 15)], []);

common.addItemEntryHelper(<minecraft:log2> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:log2:1> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:log:3> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:log:2> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:log:1> * 8, 50, 1, [Functions.setCount(8, 16)], []);
common.addItemEntryHelper(<minecraft:log> * 8, 50, 1, [Functions.setCount(8, 16)], []);

common.addItemEntryHelper(<minecraft:potato> * 4, 40, 1, [Functions.setCount(4, 8)], []);
common.addItemEntryHelper(<minecraft:carrot> * 4, 40, 1, [Functions.setCount(4, 8)], []);
common.addItemEntryHelper(<minecraft:apple> * 4, 40, 1, [Functions.setCount(4, 8)], []);
common.addItemEntryHelper(<minecraft:bread> * 4, 40, 1, [Functions.setCount(4, 8)], []);

common.addItemEntryHelper(<minecraft:bookshelf> * 2, 30, 1, [], []);
common.addItemEntryHelper(<minecraft:wool> * 4, 30, 1, [Functions.setMetadata(0, 15)], []);

common.addItemEntryHelper(<minecraft:gold_nugget> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:29> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:20> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:21> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:22> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:23> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:24> * 8, 20, 1, [Functions.setCount(4, 16)], []);
common.addItemEntryHelper(<immersiveengineering:metal:29> * 8, 20, 1, [Functions.setCount(4, 16)], []);

common.addItemEntryHelper(<redstonepaste:stickyrepeater> * 1, 15, 1, [], []);
common.addItemEntryHelper(<redstonepaste:redstonepaste> * 16, 15, 1, [Functions.setCount(16, 32)], []);
common.addItemEntryHelper(<redstonepaste:stickycomparator> * 1, 15, 1, [], []);

common.addItemEntryHelper(<minecraft:arrow> * 8, 10, 1, [], []);
common.addItemEntryHelper(<quark:arrow_explosive> * 8, 10, 1, [], []);
common.addItemEntryHelper(<quark:arrow_torch> * 8, 10, 1, [], []);

common.addItemEntryHelper(<minecraft:book>, 10, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:iron_sword>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:iron_axe>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:iron_shovel>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:iron_pickaxe>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:stone_sword>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:stone_axe>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:stone_shovel>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);
common.addItemEntryHelper(<minecraft:stone_pickaxe>, 5, 10, [Functions.enchantWithLevels(0, 10, false)], []);

common.addItemEntryHelper(<minecraft:leather_helmet>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);
common.addItemEntryHelper(<minecraft:leather_chestplate>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);
common.addItemEntryHelper(<minecraft:leather_leggings>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);
common.addItemEntryHelper(<minecraft:leather_boots>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);

common.addItemEntryHelper(<minecraft:feather>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:string>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:flint>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:gunpowder>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:reeds>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:bone>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:slime_ball>, 30, 1, [Functions.setCount(2, 8)], []);
common.addItemEntryHelper(<minecraft:ender_pearl>, 20, 1, [Functions.setCount(1, 4)], []);
common.addItemEntryHelper(<minecraft:experience_bottle>, 20, 1, [Functions.setCount(1, 8)], []);
common.addItemEntryHelper(<minecraft:leather>, 25, 1, [Functions.setCount(2, 8)], []);


// Uncommon
uncommon.addItemEntryHelper(<minecraft:cooked_chicken> * 4, 50, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:cooked_mutton> * 4, 50, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:cooked_rabbit> * 4, 50, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:cooked_porkchop> * 4, 50, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:cooked_beef> * 4, 50, 1, [], []);

uncommon.addItemEntryHelper(<minecraft:rail>, 40, 1, [Functions.setCount(16, 32)], []);
uncommon.addItemEntryHelper(<minecraft:detector_rail>, 40, 1, [Functions.setCount(2, 8)], []);
uncommon.addItemEntryHelper(<minecraft:golden_rail>, 40, 1, [Functions.setCount(2, 8)], []);
uncommon.addItemEntryHelper(<minecraft:activator_rail>, 40, 1, [Functions.setCount(2, 8)], []);

uncommon.addItemEntryHelper(<animania:entity_egg_hamster>, 10, 1, [Functions.setCount(1, 2)], []);
uncommon.addItemEntryHelper(<animania:entity_egg_chicken_random>, 10, 1, [Functions.setCount(1, 2)], []);
uncommon.addItemEntryHelper(<animania:entity_egg_cow_random>, 10, 1, [Functions.setCount(1, 2)], []);
uncommon.addItemEntryHelper(<animania:entity_egg_pig_random>, 10, 1, [Functions.setCount(1, 2)], []);

uncommon.addItemEntryHelper(<minecraft:netherrack> * 8, 30, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:nether_wart_block> * 4, 30, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:soul_sand> * 4, 30, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:magma> * 2, 30, 1, [], []);
uncommon.addItemEntryHelper(<minecraft:blaze_rod>, 30, 1, [Functions.setCount(1, 8)], []);
uncommon.addItemEntryHelper(<minecraft:nether_wart>, 30, 1, [Functions.setCount(1, 8)], []);
uncommon.addItemEntryHelper(<minecraft:glowstone_dust>, 30, 1, [Functions.setCount(2, 8)], []);

uncommon.addItemEntryHelper(<minecraft:gold_ingot> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<minecraft:iron_ingot> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<immersiveengineering:metal:0> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<immersiveengineering:metal:1> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<immersiveengineering:metal:2> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<immersiveengineering:metal:3> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<immersiveengineering:metal:4> * 8, 35, 1, [Functions.setCount(4, 10)], []);
uncommon.addItemEntryHelper(<railcraft:ingot:2> * 8, 35, 1, [Functions.setCount(4, 10)], []);

uncommon.addItemEntryHelper(<minecraft:chainmail_helmet>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);
uncommon.addItemEntryHelper(<minecraft:chainmail_chestplate>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);
uncommon.addItemEntryHelper(<minecraft:chainmail_leggings>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);
uncommon.addItemEntryHelper(<minecraft:chainmail_boots>, 5, 1, [Functions.enchantWithLevels(0, 10, true)], []);

uncommon.addItemEntryHelper(<minecraft:book>, 10, 10, [Functions.enchantWithLevels(0, 20, true)], []);
uncommon.addItemEntryHelper(<minecraft:iron_sword>, 5, 10, [Functions.enchantWithLevels(0, 20, true)], []);
uncommon.addItemEntryHelper(<minecraft:iron_axe>, 5, 10, [Functions.enchantWithLevels(0, 20, true)], []);
uncommon.addItemEntryHelper(<minecraft:iron_shovel>, 5, 10, [Functions.enchantWithLevels(0, 20, true)], []);
uncommon.addItemEntryHelper(<minecraft:iron_pickaxe>, 5, 10, [Functions.enchantWithLevels(0, 20, true)], []);

uncommon.addItemEntryHelper(<minecraft:ender_pearl>, 20, 1, [Functions.setCount(4, 8)], []);
uncommon.addItemEntryHelper(<minecraft:experience_bottle>, 20, 1, [Functions.setCount(4, 16)], []);
uncommon.addItemEntryHelper(<minecraft:leather>, 25, 1, [Functions.setCount(4, 18)], []);


// Rare
rare.addItemEntryHelper(<minecraft:dye:4> * 32, 40, 1, [], []);
rare.addItemEntryHelper(<minecraft:quartz> * 16, 30, 1, [], []);
rare.addItemEntryHelper(<minecraft:emerald> * 8, 20, 1, [], []);
rare.addItemEntryHelper(<minecraft:diamond> * 4, 20, 1, [], []);

rare.addItemEntryHelper(<minecraft:iron_block> * 4, 35, 1, [], []);
rare.addItemEntryHelper(<minecraft:gold_block> * 4, 35, 1, [], []);
rare.addItemEntryHelper(<immersiveengineering:storage:0> * 4, 35, 1, [], []);
rare.addItemEntryHelper(<immersiveengineering:storage:1> * 4, 35, 1, [], []);
rare.addItemEntryHelper(<immersiveengineering:storage:2> * 4, 35, 1, [], []);
rare.addItemEntryHelper(<immersiveengineering:storage:3> * 4, 35, 1, [], []);
rare.addItemEntryHelper(<immersiveengineering:storage:4> * 4, 35, 1, [], []);

rare.addItemEntryHelper(<minecraft:iron_helmet>, 10, 1, [Functions.enchantWithLevels(10, 20, true)], []);
rare.addItemEntryHelper(<minecraft:iron_chestplate>, 10, 1, [Functions.enchantWithLevels(10, 20, true)], []);
rare.addItemEntryHelper(<minecraft:iron_leggings>, 10, 1, [Functions.enchantWithLevels(10, 20, true)], []);
rare.addItemEntryHelper(<minecraft:iron_boots>, 10, 1, [Functions.enchantWithLevels(10, 20, true)], []);

rare.addItemEntryHelper(<minecraft:book>, 20, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:iron_sword>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:iron_axe>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:iron_shovel>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:diamond_pickaxe>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:diamond_sword>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:diamond_axe>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);
rare.addItemEntryHelper(<minecraft:diamond_shovel>, 10, 10, [Functions.enchantWithLevels(20, 30, true)], []);

rare.addItemEntryHelper(<quark:rune>, 20, 1, [Functions.setMetadata(0, 16)], []);
rare.addItemEntryHelper(<minecraft:skull>, 15, 1, [Functions.setMetadata(0, 4)], []);

rare.addItemEntryHelper(<minecraft:ender_pearl>, 25, 1, [Functions.setCount(8, 16)], []);
rare.addItemEntryHelper(<minecraft:experience_bottle>, 25, 1, [Functions.setCount(16, 32)], []);


// Mythic
mythic.addItemEntryHelper(<minecraft:diamond_block>, 10, 1, [Functions.setCount(1, 3)], []);
mythic.addItemEntryHelper(<minecraft:emerald_block>, 10, 1, [Functions.setCount(1, 3)], []);

mythic.addItemEntryHelper(<minecraft:iron_helmet>, 2, 1, [Functions.enchantWithLevels(20, 30, true)], []);
mythic.addItemEntryHelper(<minecraft:iron_chestplate>, 2, 1, [Functions.enchantWithLevels(20, 30, true)], []);
mythic.addItemEntryHelper(<minecraft:iron_leggings>, 2, 1, [Functions.enchantWithLevels(20, 30, true)], []);
mythic.addItemEntryHelper(<minecraft:iron_boots>, 2, 1, [Functions.enchantWithLevels(20, 30, true)], []);

mythic.addItemEntryHelper(<minecraft:diamond_helmet>, 1, 1, [Functions.enchantWithLevels(20, 30, true)], []);
mythic.addItemEntryHelper(<minecraft:diamond_chestplate>, 1, 1, [Functions.enchantWithLevels(20, 30, true)], []);
mythic.addItemEntryHelper(<minecraft:diamond_leggings>, 1, 1, [Functions.enchantWithLevels(20, 30, true)], []);
mythic.addItemEntryHelper(<minecraft:diamond_boots>, 1, 1, [Functions.enchantWithLevels(20, 30, true)], []);

mythic.addItemEntryHelper(<minecraft:diamond_sword>, 1, 1, [Functions.enchantWithLevels(20, 30, true)], []);

mythic.addItemEntryHelper(<minecraft:book>, 5, 10, [Functions.enchantWithLevels(20, 30, true)], []);

mythic.addItemEntryHelper(<minecraft:nether_star>, 1, 1, [], []);
