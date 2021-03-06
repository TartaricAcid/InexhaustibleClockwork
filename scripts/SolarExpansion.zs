#Name: SolarExpansion.zs
#Author: Si_hen

print("Initializing 'SolarExpansion.zs'...");

recipes.remove(<SolarExpansion:photovoltaicCell>);
recipes.addShaped(<SolarExpansion:photovoltaicCell>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);

recipes.remove(<SolarExpansion:solarPanelLeadstone>);
recipes.addShaped(<SolarExpansion:solarPanelLeadstone>, [[<StevesCarts:ModuleComponents:58>, <StevesCarts:ModuleComponents:58>, <StevesCarts:ModuleComponents:58>], [<ProjRed|Core:projectred.core.part:13>, <SolarExpansion:solarCoreLeadstone>, <ProjRed|Core:projectred.core.part:13>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

print("Initialized 'SolarExpansion.zs'");