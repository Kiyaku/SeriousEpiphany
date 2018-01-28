import minetweaker.item.IItemStack;

var itemsToRemove = [
	// RAILCRAFT
	<railcraft:dust:7>,

	// GRAPPLING HOOKS
	<grapplemod:launcheritem>,
	<grapplemod:enderhook>,
	<grapplemod:magnetbow>,
	<grapplemod:longfallboots>,
	<grapplemod:repeller>,
	<grapplemod:hookshot>,
	<grapplemod:smarthook>,
	<grapplemod:multihook>,

	// SGCraft
	<sgcraft:rfPowerUnit>,
	<sgcraft:ic2Capacitor>,
	<sgcraft:stargateRing:*>,
	<sgcraft:stargateBase>,
] as IItemStack[];


for item in itemsToRemove {
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}


// Furnace
furnace.remove(<railcraft:nugget:1>);


// Other
recipes.remove(<minecraft:bread>);


recipes.remove(<sgcraft:stargateController>);
recipes.addShaped(<sgcraft:stargateController>, 
	[[<thaumcraft:plate:2>, <thaumcraft:plate:2>, <thaumcraft:plate:2>], 
	 [<thaumcraft:stone_arcane>, <thaumcraft:mind>, <thaumcraft:stone_arcane>], 
	 [<thaumcraft:stone_arcane>, <sgcraft:sgControllerCrystal>, <thaumcraft:stone_arcane>]]);


recipes.remove(<sgcraft:sgIrisBlade>);
recipes.addShaped(<sgcraft:sgIrisBlade>, [[null, <thaumcraft:ingot:2>, <thaumcraft:ingot:2>], [<thaumcraft:ingot:2>, <thaumcraft:jar_brace>, null], [<thaumcraft:ingot:2>, null, null]]);

recipes.remove(<sgcraft:sgIrisUpgrade>);
recipes.addShaped(<sgcraft:sgIrisUpgrade>, [[<sgcraft:sgIrisBlade>, <sgcraft:sgIrisBlade>, <sgcraft:sgIrisBlade>], [<sgcraft:sgIrisBlade>, <thaumcraft:gear>, <sgcraft:sgIrisBlade>], [<sgcraft:sgIrisBlade>, <sgcraft:sgIrisBlade>, <sgcraft:sgIrisBlade>]]);



// Soul Shards
recipes.addShaped(<soulshardstow:ItemSoulShard>.withTag({Tier: 0, KillCount: 0}), [
	[<thaumcraft:salis_mundus>, <thaumcraft:ingot:1>, <thaumcraft:salis_mundus>], 
	[<thaumcraft:ingot:1>, <thaumcraft:primordial_pearl>, <thaumcraft:ingot:1>], 
	[<thaumcraft:salis_mundus>, <thaumcraft:ingot:1>, <thaumcraft:salis_mundus>]
]);

recipes.remove(<soulshardstow:ItemMaterials:1>);
recipes.addShapeless(<soulshardstow:ItemMaterials:1>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}), <thaumcraft:salis_mundus>]);

recipes.remove(<soulshardstow:ItemMaterials>);
recipes.addShaped(<soulshardstow:ItemMaterials>, [[<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>], [<ore:dustVile>, <thaumcraft:ingot>, <ore:dustVile>], [<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>]]);




// Enchanting Plus 3
recipes.remove(<eplus:advanced_table>);
recipes.addShaped(<eplus:advanced_table>, [[<thaumcraft:ingot:2>, <minecraft:writable_book>, <thaumcraft:ingot:2>], [<ore:obsidian>, <minecraft:enchanting_table:*>, <ore:obsidian>], [<thaumcraft:ingot:2>, <minecraft:ender_eye>, <thaumcraft:ingot:2>]]);
recipes.addShapeless(<eplus:advanced_table>, [<minecraft:enchanting_table>, <eplus:table_upgrade>]);


recipes.remove(<eplus:table_upgrade>);
recipes.addShaped(<eplus:table_upgrade>, [[<thaumcraft:ingot:2>, <minecraft:writable_book>, <thaumcraft:ingot:2>], [<ore:obsidian>, null, <ore:obsidian>], [<thaumcraft:ingot:2>, <minecraft:ender_eye>, <thaumcraft:ingot:2>]]);




// Weirding Gadget
recipes.remove(<weirdinggadget:weirding_gadget>);
recipes.addShaped(<weirdinggadget:weirding_gadget>, [[<thaumcraft:ingot:2>, <thaumcraft:ingot:2>, <thaumcraft:ingot:2>], [<thaumcraft:plate>, <minecraft:ender_eye>, <thaumcraft:plate>], [<thaumcraft:plate>, <thaumcraft:gear>, <thaumcraft:plate>]]);
