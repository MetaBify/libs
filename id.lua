local Item = {

    Wood = {Recipes = {"Wood"}, Item = "Wood Arrow", Required = 15, Amounts = {Wood = 70}, Notes = "Needs to be split", u1 = 700, u2 = 701, c = false},

    Stone = {Recipes = {"Stone"}, Item = "Shiv", Required = 15, Amounts = {Stone = 15}, u1 = 702, u2 = 703, c = false},

    Iron = {Recipes = {"Iron"}, Item = "Lighter", Required = 5, Amounts = {Iron = 5}, u1 = 704, u2 = 705, c = false},

    Steel = {Recipes = {"Steel", }, Item = "Steel Window", Required = 5, Amounts = {Steel = 5}, Station = "Drill press", u1 = 706, u2=707, c = false},

    Cloth = {Recipes = {"Cloth"}, Item = "Rope", Required = 18, Amounts = {Cloth = 18}, u1 = 707, u2=708, c = false},

    Rope = {Recipes = {"Cloth"}, Item = "Rope", Required = 18, Amounts = {Cloth = 18}, u1 = 707, u2=708, c = true, w = 3},

    Brimstone = {Recipes = {"Brimstone", "Charcoal"}, Item = "Gunpowder", Required = 30, Amounts = {Brimstone = 30, Charcoal = 30}, Workbench = true, u1 = 708, u2=709, c = false, w = 3},

    Gunpowder = {Recipes = {"Gunpowder", "Stone"}, Item = "Makeshift Cartridge", Required = 10, Amounts = {Gunpowder = 10, Stone = 10}, Workbench = false, Notes = "No workbench needed", u1 = 709, u2=710, c = false, w = 5},

    Salvaged = {Recipes = {"Salvaged", "Iron"}, Item = "Research Table", Required = 175, Amounts = {Salvaged = 175, Iron = 175}, u1 = 710, u2=711, c = false, w = 5},

    C4 = {Recipes = {"Explosive Base", "Cloth", "Circuits"}, Item = "Packed Explosive", Required = 11, Amounts = {["Explosive Base"] = 11, Cloth = 11, Circuits = 11}, Station = "Drill press or anvil", Notes = "Station needs verification", u1 = 711, u2=712, c = true, w = 5},

    C4_C = {Recipes = {"Explosive Base", "Cloth", "Circuits"}, Item = "Packed Explosive", Required = 11, Amounts = {["Explosive Base"] = 11, Cloth = 11, Circuits = 11}, Station = "Drill press or anvil", Notes = "Gives C4 recipe; station needs verification", u1 = 712, u2=713, c = false, w = 5},

    Campfire = {Recipes = {"Stone", "Wood"}, Item = "Campfire", Required = 150, u1 = 712, u2=713, c = false, w = 5},

    Vending = {Recipes = {"Steel", "Gears"}, Item = "Trade Post", Required = 2, Amounts = {Steel = 25, Gears = 2}, Workbench = true, Notes = "Gives vending recipe", u1 = 712, u2=713, c = false, w = 5},

    Firework = {Recipes = {"Gasoline", "Gunpowder", "Iron"}, Item = "Green Firework Launcher", Required = 2, u1 = 712, u2=713, c = false, w = 5},

}

return Item
