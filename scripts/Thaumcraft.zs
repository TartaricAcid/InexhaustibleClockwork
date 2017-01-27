#Name: Thaumcraft.zs
#Author: Prunoideae

print("Initializing 'Thaumcraft.zs'...");

#mods.thaumcraft.Research.addResearch("TESTING", "BASICS", "lucrum 5, alienis 10, machina 10, 1, 0, 0, );
#game.setLocalization("en_US", "tc.research_name.TESTING", "You know what?");
#game.setLocalization("en_US", "tc.research_text.TESTING", "[MT] It's just a test!");
#mods.thaumcraft.Research.addPage("TESTING", "derp.research_page.TESTING");
#game.setLocalization("en_US", "derp.research_page.TESTING", "Since Prunoideae had manned the power of ModTweaker, a big disaster was about to come.");

#iron gear
<ore:gearIron>.remove(<thaumicenergistics:material:2>);
<ore:thermalexpansion:machineIron>.remove(<thaumicenergistics:material:2>);
mods.thaumcraft.Arcane.removeRecipe(<thaumicenergistics:material:2>);

#Endertech Exchanger - after FOCUSTRADE
recipes.remove(<EnderTech:endertech.exchanger:1>); #redstone
recipes.remove(<EnderTech:endertech.exchanger:2>); #resonant

mods.thaumcraft.Research.addResearch("ETEXCHANGER","THAUMATURGY","permutatio 10, machina 10, alienis 10, ordo 10, perditio 10", 6, -4, 4, <EnderTech:endertech.exchanger:2>);
mods.thaumcraft.Research.addPrereq("ETEXCHANGER", "FOCUSTRADE", false);

mods.thaumcraft.Research.addPage("ETEXCHANGER", "derp.research_page.ETEXCHANGER");
mods.thaumcraft.Research.addPage("ETEXCHANGER", "derp.research_page.ETEXCHANGER1");
mods.thaumcraft.Infusion.addRecipe("ETEXCHANGER", <Thaumcraft:FocusTrade>, [<minecraft:ender_eye>, <Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <ThermalExpansion:capacitor:4>, <Mekanism:ControlCircuit:2>,<Creator:compactElectrumPlate>], "perditio 20, ordo 20, potentia 20, permutatio 25", <EnderTech:endertech.exchanger:1>, 3);
mods.thaumcraft.Infusion.addRecipe("ETEXCHANGER", <EnderTech:endertech.exchanger:1>, [<minecraft:ender_eye>, <Mekanism:ControlCircuit:3>, <ThermalExpansion:capacitor:5>, <Mekanism:ControlCircuit:3>], "potentia 10, alienis 5", <EnderTech:endertech.exchanger:2>, 5);
mods.thaumcraft.Research.addInfusionPage("ETEXCHANGER", <EnderTech:endertech.exchanger:1>);
mods.thaumcraft.Research.addInfusionPage("ETEXCHANGER", <EnderTech:endertech.exchanger:2>);
mods.thaumcraft.Research.setConcealed("ETEXCHANGER", true);

#Atomic Disassembler - after all thaumcraft tools x-5 y0
recipes.remove (<Mekanism:AtomicDisassembler>);

mods.thaumcraft.Research.addResearch("ATOMDISASM", "ARTIFICE", "perfodio 10, sensus 10, potentia 15, machina 15, instrumentum 10", -9,5,6,<Mekanism:AtomicDisassembler>);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALPICK", false);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALAXE", false);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALSHOVEL", false);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALHOE", false);

mods.thaumcraft.Research.addPage("ATOMDISASM", "derp.research_page.ATOMDISASM");
mods.thaumcraft.Research.addPage("ATOMDISASM", "derp.research_page.ATOMDISASM1");
mods.thaumcraft.Infusion.addRecipe("ATOMDISASM", <ThermalExpansion:capacitor:5>,[<Thaumcraft:ItemPickaxeElemental>,<Mekanism:ControlCircuit:3>,<Magneticraft:item.electric_sword>,<Mekanism:ControlCircuit:3>,<Thaumcraft:ItemAxeElemental>,<Mekanism:ControlCircuit:3>,<Thaumcraft:ItemShovelElemental>,<Mekanism:ControlCircuit:3>,<Thaumcraft:ItemHoeElemental>,<Mekanism:ControlCircuit:3>], "perfodio 32, sensus 32, potentia 48, machina 32, instrumentum 32", <Mekanism:AtomicDisassembler>,8);
mods.thaumcraft.Research.addInfusionPage("ATOMDISASM", <Mekanism:AtomicDisassembler>);
mods.thaumcraft.Research.setConcealed("ATOMDISASM", true);

#Tweak of thaumium
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:2>);
mods.thaumcraft.Crucible.addRecipe("THAUMIUM", <Thaumcraft:ItemResource:2>, <ThermalFoundation:material:70>, "praecantatio 4");
mods.thaumcraft.Research.refreshResearchRecipe("THAUMIUM");

#Tweak of Greatwood
mods.thaumcraft.Research.addResearch("GREATWOOD", "ALCHEMY", "praecantatio 2, arbor 1, herba 1", 2, -3, 4, <Thaumcraft:blockCustomPlant>);
mods.thaumcraft.Research.addPage("GREATWOOD", "derp.research_page.GREATWOOD");
mods.thaumcraft.Crucible.addRecipe("GREATWOOD", <Thaumcraft:blockCustomPlant>, <ore:treeSapling>, "praecantatio 2");
mods.thaumcraft.Research.addCruciblePage("GREATWOOD", <Thaumcraft:blockCustomPlant>);
mods.thaumcraft.Research.addPrereq("GREATWOOD", "CRUCIBLE", false);

#Tweak of silverwood
mods.thaumcraft.Research.addResearch("SILVERWOOD","ALCHEMY","praecantatio 4, ordo 4, sano 2, herba 1, arbor 1", 3, -4, 4, <Thaumcraft:blockCustomPlant:1>);
mods.thaumcraft.Research.addPage("SILVERWOOD", "derp.research_page.SILVERWOOD");
mods.thaumcraft.Crucible.addRecipe("SILVERWOOD", <Thaumcraft:blockCustomPlant:1>, <Thaumcraft:blockCustomPlant>, "praecantatio 4, ordo 4, sano 2, herba 2");
mods.thaumcraft.Research.addCruciblePage("SILVERWOOD", <Thaumcraft:blockCustomPlant:1>);
mods.thaumcraft.Research.addPrereq("SILVERWOOD", "GREATWOOD", false);
mods.thaumcraft.Research.setConcealed("SILVERWOOD", true);

#Taint maker
mods.thaumcraft.Research.addResearch("TAINTPLANT","ALCHEMY","praecantatio 4, perditio 2, arbor 2, herba 2", 1, -4, 4, <Thaumcraft:blockTaintFibres>);
mods.thaumcraft.Research.addPage("TAINTPLANT", "derp.research_page.TAINTPLANT");
mods.thaumcraft.Crucible.addRecipe("TAINTPLANT", <Thaumcraft:blockTaintFibres>, <minecraft:yellow_flower>, "praecantatio 4, perditio 2");
mods.thaumcraft.Crucible.addRecipe("TAINTPLANT", <Thaumcraft:blockTaintFibres:1>, <minecraft:tallgrass>, "praecantatio 4, perditio 2");
mods.thaumcraft.Crucible.addRecipe("TAINTPLANT", <Thaumcraft:blockTaintFibres:3>, <ore:listAllmushroom>, "praecantatio 4, perditio 2");
mods.thaumcraft.Research.addCruciblePage("TAINTPLANT", <Thaumcraft:blockTaintFibres>);
mods.thaumcraft.Research.addCruciblePage("TAINTPLANT", <Thaumcraft:blockTaintFibres:1>);
mods.thaumcraft.Research.addCruciblePage("TAINTPLANT", <Thaumcraft:blockTaintFibres:3>);
mods.thaumcraft.Research.addPrereq("TAINTPLANT", "GREATWOOD", false);
mods.thaumcraft.Research.setConcealed("TAINTPLANT", true);

#show me the errors
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:blockCustomPlant:4>);
mods.thaumcraft.Research.clearPages("ETHEREALBLOOM");
mods.thaumcraft.Research.addPage("ETHEREALBLOOM","derp.research_page.GIBBERISH");
mods.thaumcraft.Research.addCraftingPage("ETHEREALBLOOM", <Prunoideae:errorItem1>);

#Rocket Soda
mods.thaumcraft.Research.addResearch("ROCKETSODA", "ALCHEMY", "ignis 2, volatus 4, motus 4, aer 4", 5,1,4, <Prunoideae:rocketSoda>);
mods.thaumcraft.Research.addPage("ROCKETSODA", "derp.research_page.ROCKETSODA");
mods.thaumcraft.Crucible.addRecipe("ROCKETSODA", <Prunoideae:rocketSoda>, <minecraft:glass_bottle>, "praecantatio 2, ignis 2, volatus 4, aer 4");
mods.thaumcraft.Research.addCruciblePage("ROCKETSODA", <Prunoideae:rocketSoda>);
mods.thaumcraft.Research.addPrereq("ROCKETSODA", "ALUMENTUM");
mods.thaumcraft.Research.setConcealed("ROCKETSODA", true);

#some aspect
mods.thaumcraft.Aspects.set(<Prunoideae:blackLotus>, "herba 1, perditio 1, praecantatio 2");
mods.thaumcraft.Aspects.add(<Thaumcraft:blockTaintFibres>, "praecantatio 1");
mods.thaumcraft.Aspects.add(<Thaumcraft:blockTaintFibres:1>, "praecantatio 1");
mods.thaumcraft.Aspects.add(<Thaumcraft:blockTaintFibres:3>, "praecantatio 1");
mods.thaumcraft.Aspects.set(<Prunoideae:rocketSoda>, "ignis 2, motus 2, volatus 2, aer 2");

#Extra Entropicprocessing
mods.thaumcraft.Crucible.addRecipe("ENTROPICPROCESSING", <minecraft:dirt>, <minecraft:sapling>, "perditio 4");
mods.thaumcraft.Research.addCruciblePage("ENTROPICPROCESSING", <minecraft:dirt>);
mods.thaumcraft.Research.refreshResearchRecipe("ENTROPICPROCESSING");
print("Initialized 'Thaumcraft.zs'");

#EASTERN MAGIC
mods.thaumcraft.Research.addTab("EASTERN", "creator", "textures/items/taichi.png");

#Chalk
mods.thaumcraft.Research.addResearch("CHALK", "EASTERN", "ignis 10, terra 10, aqua 10, aer 10, ordo 10, perditio 10", 0,0,8, <Prunoideae:chalk>);
mods.thaumcraft.Research.addPage("CHALK", "derp.research_page.CHALK");
mods.thaumcraft.Research.addPage("CHALK", "derp.research_page.CHALK1");
mods.thaumcraft.Infusion.addRecipe("CHALK", <Thaumcraft:ItemShard:6>,[<Thaumcraft:ItemShard:4>,<Thaumcraft:ItemShard:1>,<Thaumcraft:ItemShard>,<Thaumcraft:ItemShard:5>,<Thaumcraft:ItemShard:2>,<Thaumcraft:ItemShard:3>], "praecantatio 4", <Prunoideae:chalk>, 0);
mods.thaumcraft.Research.addInfusionPage("CHALK",<Prunoideae:chalk>);
mods.thaumcraft.Research.addPage("CHALK", "derp.research_page.CHALK2");
mods.thaumcraft.Research.addPrereq("CHALK", "INFUSION");

#Purified shard
