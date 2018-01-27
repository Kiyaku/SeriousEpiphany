val frame = <deepresonance:machine_frame>;
val stoneArcane = <thaumcraft:stone_arcane>;
val nuggetThaumium = <ore:nuggetThaumium>;
val ingotIron = <ore:ingotIron>;
val nuggetBrass = <ore:nuggetBrass>;
val ingotBrass = <ore:ingotBrass>;
val plateBrass = <ore:plateBrass>;
val gearBrass = <ore:gearBrass>;
val ingotLead = <ore:ingotLead>;
val ingotCopper = <ore:ingotCopper>;
val dustRedstone = <minecraft:redstone>;
val gemQuartz = <ore:gemQuartz>;
val gemAmber = <ore:gemAmber>;
val gemDiamond = <ore:gemDiamond>;
val gemEmerald = <ore:gemEmerald>;

val plateResonating = <deepresonance:resonating_plate>;

recipes.remove(<deepresonance:machine_frame>);
recipes.addShaped(<deepresonance:machine_frame>,
	[	[ingotBrass, plateResonating, ingotBrass],
		[plateResonating, stoneArcane, plateResonating],
		[ingotBrass, plateResonating, ingotBrass]	]);

recipes.remove(<deepresonance:generator>);
recipes.addShaped(<deepresonance:generator>,
	[	[dustRedstone, ingotLead, dustRedstone],
		[ingotCopper, frame, ingotCopper],
		[ dustRedstone, ingotLead, dustRedstone]	]);
		
recipes.remove(<deepresonance:generator_controller>);
recipes.addShaped(<deepresonance:generator_controller>,
	[	[ dustRedstone, <minecraft:comparator>, dustRedstone],
		[ ingotCopper, frame, ingotCopper],
		[ dustRedstone, ingotLead, dustRedstone]	]);
		
recipes.remove(<deepresonance:energy_collector>);
recipes.addShaped(<deepresonance:energy_collector>,
	[	[null, ingotBrass, null],
		[dustRedstone, ingotBrass, dustRedstone],
		[stoneArcane , stoneArcane, stoneArcane]	]);
		
recipes.remove(<deepresonance:crystalizer>);
recipes.addShaped(<deepresonance:crystalizer>,
	[	[ gemAmber, <ore:blockGlass> , gemAmber],
		[ gemQuartz, frame, gemQuartz],
		[ ingotBrass, dustRedstone, ingotBrass]	]);
		
recipes.remove(<deepresonance:smelter>);
recipes.addShaped(<deepresonance:smelter>,
	[	[ plateBrass, <minecraft:cauldron>, plateBrass],
		[ <minecraft:furnace>, frame, <minecraft:furnace>],
		[ plateBrass, dustRedstone, plateBrass]	]);
		
recipes.remove(<deepresonance:tank>);
recipes.addShaped(<deepresonance:tank>,
	[	[stoneArcane, plateBrass, stoneArcane],
		[plateBrass, <ore:blockGlass>, plateBrass],
		[stoneArcane, plateBrass, stoneArcane]	]);
		
recipes.remove(<deepresonance:purifier>);
recipes.addShaped(<deepresonance:purifier>,
	[	[ <deepresonance:filter>, <ore:blockGlass>, <deepresonance:filter>],
		[ <thaumcraft:plank:1>, frame, <thaumcraft:plank:1>],
		[ <deepresonance:filter>, <ore:blockGlass>, <deepresonance:filter>]	]);
		
recipes.remove(<deepresonance:pedestal>);
recipes.addShaped(<deepresonance:pedestal>,
	[	[ null, <minecraft:piston>, null],
		[ gearBrass, frame, gearBrass],
		[ null, dustRedstone, null]	]);
		
recipes.remove(<deepresonance:valve>);
recipes.addShaped(<deepresonance:valve>,
	[	[ plateBrass, <immersiveengineering:metalDevice1:6>, plateBrass],
		[ <deepresonance:filter>, frame, <deepresonance:filter>],
		[ plateBrass, <immersiveengineering:metalDevice1:6>, plateBrass]	]);
		
recipes.remove(<deepresonance:lens>);
recipes.addShaped(<deepresonance:lens>, 
	[	[nuggetBrass, nuggetThaumium, nuggetBrass ],
		[nuggetThaumium , <ore:blockGlass>, nuggetThaumium],
		[nuggetBrass, nuggetThaumium, nuggetBrass]	]);
		
recipes.remove(<deepresonance:laser>);
recipes.addShaped(<deepresonance:laser>,
	[	[ gemAmber, gemDiamond, gemEmerald],
		[ plateBrass, frame, plateBrass],
		[ <ore:blockGlass> , dustRedstone, <ore:blockGlass>]	]);