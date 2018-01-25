val backpack = <wearablebackpacks:backpack>;
val fabric = <thaumcraft:fabric>;
val plateBrass = <ore:plateBrass>;
val plateThaumium = <ore:plateThaumium>;
val plateVoid = <ore:plateVoid>;

recipes.remove(backpack);

recipes.addShaped(backpack.withTag({backpack:{size:[9,4], tier:1}}),
	[
		[<ore:leather>, <ore:ingotGold>,<ore:leather>],
		[<ore:leather>, <minecraft:wool:*>,<ore:leather>],
		[<ore:leather>, <ore:leather>, <ore:leather>]
	]
);

recipes.addShaped(backpack.withTag({display:{color:14462043, Name:"Alchemical Brass Backpack"},backpack:{size:[12,5], tier:2}}), 
	[
		[fabric, plateBrass, fabric],
		[plateBrass, backpack.withTag({backpack:{size:[9,4],tier:1}}).onlyWithTag({backpack:{tier:1}}).marked("bp"), plateBrass],
		[fabric, plateBrass, fabric]
	],
	function(out, ins, cinfo){ return ins.bp.updateTag({display:{color:14462043, Name:"Alchemical Brass Backpack"},backpack:{size:[12,5],tier:2}});},
	null
);

recipes.addShaped(backpack.withTag({display:{color:5782638, Name:"Thaumium Backpack"},backpack:{size:[16,5], tier:3}}),
	[
		[fabric, plateThaumium, fabric],
		[plateThaumium, backpack.withTag({display:{color:14462043, Name:"Alchemical Brass Backpack"},backpack:{size:[12,5], tier:2}}).onlyWithTag({backpack:{tier:2}}).marked("bp"), plateThaumium],
		[fabric, plateThaumium, fabric]
	],
	function(out, ins, cinfo){ return ins.bp.updateTag({display:{color:5782638, Name:"Thaumium Backpack"},backpack:{size:[16,5], tier:3}});},
	 null
 );

recipes.addShaped(backpack.withTag({display:{color:1248541, Name:"Void Metal Backpack"},backpack:{size:[17,6], tier:4}}), 
	[	
		[fabric, plateVoid, fabric],
		[plateVoid, backpack.withTag({display:{color:5782638, Name:"Thaumium Backpack"},backpack:{size:[16,5], tier:3}}).onlyWithTag({backpack:{tier:3}}).marked("bp"), plateVoid],
		[fabric, plateVoid, fabric]
	],
	function(out, ins, cinfo){ return ins.bp.updateTag({display:{color:1248541, Name:"Void Metal Backpack"},backpack:{size:[17,6], tier: 4}});},
	null
);