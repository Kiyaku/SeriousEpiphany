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
<grapplemod:multihook>
] as IItemStack[];


for item in itemsToRemove {
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}