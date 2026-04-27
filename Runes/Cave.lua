local Rune = {
	Settings = {
		["RuneName"] = "Cave",
		["RuneCost"] = 2_500,
		["RuneStat"] = "Cash",
		["RuneWorld"] = "Cave",
		["RuneOrder"] = 5
	},

	Runes = {
		{
			Name = "Pebble",
			Chance = 1/2,
			Number = 1, 
			Cash = {add = 0.01, max = 2, noDebuff = true},
		},

		{
			Name = "Stone Fragment",
			Chance = 1/35,
			Number = 2, 
			Luck = {add = 0.75, max = 6, noDebuff = true},
			Ash = {add = 0.05, max = 2, noDebuff = true},
			Cash = {add = 0.05, max = 2, noDebuff = true},
		},

		{
			Name = "Copper Vein",
			Chance = 1/100,
			Number = 3, 
			Luck = {add = 1.25, max = 500},
			Cash = {add = 0.095, max = 2, noDebuff = true},
			Crystals = {add = 0.01, max = 1.5, noDebuff = true},
		},

		{
			Name = "Cave Bat",
			Chance = 1/500,
			Number = 4, 
			Luck = {add = 1.77, max = 650},
			RP = {add = 1.44, max = 650},
			Cash = {add = 0.12, max = 2, noDebuff = true},
			Crystals = {add = 0.025, max = 1.875, noDebuff = true},
		},

		{
			Name = "Crystal Cluster",
			Chance = 1/1_750,
			Number = 5, 
			Luck = {add = 4.5, max = 750},
			RP = {add = 3.5, max = 750},
			Cash = {add = 0.75, max = 150},
			Crystals = {add = 0.1, max = 1.875, noDebuff = true},
		},

		{
			Name = "Crystalized Bedrock",
			Chance = 1/22_222,
			Number = 6, 
			Luck = {add = 45, max = 1000},
			Revision = {add = 15, max = 150},
			Cash = {add = 15, max = 150},
			Crystals = {add = 10, max = 100},
		},

		{
			Name = "Refined Platinum",
			Chance = 1/73_737,
			Number = 7,
			Luck = {add = 100, max = 1000},
			Ash = {add = 0.75, max = 1.875, noDebuff = true},
			Revision = {add = 5, max = 2, noDebuff = true},
			Crystal = {add = 5, max = 2, noDebuff = true},
		},

		{
			Name = "Obsidian Heart",
			Chance = 1/350_000,
			Number = 8,
			Secret = true,
			Luck = {add = 175, max = 1500},
			RP = {add = 125, max = 1500},
			Ash = {add = 7.5, max = 1.875, noDebuff = true},
			Revision = {add = 55, max = 355},
			Cash = {add = 26, max = 225},
			Crystals = {add = 18, max = 225},
		},

		{
			Name = "The Abyss",
			Chance = 1/850_000,
			Number = 9,
			Secret = true,
			Luck = {add = 300, max = 10_000},
			RP = {add = 225, max = 10_000},
			UP = {add = 200, max = 10_000},
			Prestige = {add = 165, max = 10_000},
			AP = {add = 100, max = 10_000},
			Ash = {add = 55, max = 10_000},
			Revision = {add = 45, max = 10_000},
			Cash = {add = 40, max = 10_000},
			Crystals = {add = 30, max = 10_000},
		},
		
		{
			Name = "Eternal Geode",
			Chance = 1/35_000_000,
			Number = 10,
			Secret = true,
			Luck = {add = 200, max = 21, noDebuff = true},
			RP = {add = 200, max = 21, noDebuff = true},
			Cash = {add = 100, max = 16, noDebuff = true},
			Crystals = {add = 50, max = 11, noDebuff = true},
			RuneLuck = {add = 10, max = 1.5, overrideText = "Rune Luck", noDebuff = true},
		},
	}
}

return Rune