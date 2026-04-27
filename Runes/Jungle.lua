local Rune = {
	Settings = {
		["RuneName"] = "Jungle",
		["RuneCost"] = 10_000,
		["RuneStat"] = "Revision",
		["RuneWorld"] = "Jungle",
		["RuneOrder"] = 4
	},

	Runes = {
		{
			Name = "Mud",
			Chance = 1/2,
			Number = 1, 
			Luck = {add = 0.15, max = 500},
			Revision = {add = 0.01, max = 100},
		},

		{
			Name = "Vine",
			Chance = 1/25,
			Number = 2, 
			Luck = {add = 0.75, max = 450},
			RP = {add = 0.35, max = 350},
			Revision = {add = 0.05, max = 100},
		},

		{
			Name = "Bamboo",
			Chance = 1/75,
			Number = 3, 
			Luck = {add = 1.25, max = 500},
			UP = {add = 0.15, max = 250},
			Revision = {add = 0.035, max = 150},
		},

		{
			Name = "Jungle Bat",
			Chance = 1/300,
			Number = 4, 
			Luck = {add = 0.75, max = 650},
			Prestige = {add = 0.25, max = 650},
		},
		
		{
			Name = "Jungle Fungi",
			Chance = 1/1_250,
			Number = 5, 
			Luck = {add = 1.25, max = 500},
			RP = {add = 1.5, max = 500},
			Revision = {add = 0.5, max = 150},
		},

		{
			Name = "Ancient Totem",
			Chance = 1/20_000,
			Number = 6, 
			Luck = {add = 45, max = 1000},
			RP = {add = 25, max = 1000},
			UP = {add = 8.5, max = 1000},
			Prestige = {add = 5, max = 1000},
			Revision = {add = 1.75, max = 150},
		},

		{
			Name = "Overgrown Relic",
			Chance = 1/75_000,
			Number = 7, 
			Prestige = {add = 10.5, max = 1500},
			AP = {add = 2.5, max = 125},
			Ash = {add = 0.75, max = 65},
			Revision = {add = 5, max = 300},
		},

		{
			Name = "Heart of the Jungle",
			Chance = 1/200_000,
			Number = 8,
			Secret = true,
			Luck = {add = 120, max = 1500},
			RP = {add = 75, max = 1500},
			UP = {add = 45, max = 1500},
			Prestige = {add = 35, max = 1200},
			AP = {add = 12.5, max = 255},
			Ash = {add = 5, max = 255},
			Revision = {add = 15, max = 355},
		},

		{
			Name = "Primordial Jungle",
			Chance = 1/650_000,
			Number = 9,
			Secret = true,
			Luck = {add = 200, max = 10_000},
			RP = {add = 175, max = 10_000},
			UP = {add = 150, max = 10_000},
			Prestige = {add = 120, max = 10_000},
			AP = {add = 65, max = 10_000},
			Ash = {add = 35, max = 10_000},
			Revision = {add = 25, max = 10_000},
		},
		
		{
			Name = "a comically large tree",
			Chance = 1/33_333_333,
			Number = 10,
			Secret = true,
			Luck = {add = 250, max = 16, noDebuff = true},
			Ash = {add = 15, max = 6, noDebuff = true},
			Revision = {add = 350, max = 16, noDebuff = true},
			Cash = {add = 10, max = 6, noDebuff = true},
			RuneBulk = {add = 1, max = 2, overrideText = "Rune Bulk", noDebuff = true}
		}
	}
}

return Rune
