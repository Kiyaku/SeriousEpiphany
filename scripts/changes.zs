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
