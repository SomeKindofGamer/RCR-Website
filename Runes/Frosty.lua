local Rune = {
	Settings = {
		["RuneName"] = "Frosty",
		["RuneCost"] = 250,
		["RuneStat"] = "Prestige",
		["RuneWorld"] = "Winter",
		["RuneOrder"] = 3
	},

	Runes = {
		{
			Name = "Snowflake",
			Chance = 1/2,
			Number = 1, 
			Luck = {add = 3.6767, max = 750},
			RP = {add = 1.775, max = 500},
		},

		{
			Name = "Icicle",
			Chance = 1/30,
			Number = 2, 
			Luck = {add = 7.5, max = 1000},
			RP = {add = 5, max = 800},
			UP = {add = 2, max = 450},
		},

		{
			Name = "Ice Shard",
			Chance = 1/75,
			Number = 3, 
			Luck = {add = 25, max = 1250},
			RP = {add = 15, max = 1200},
			UP = {add = 5.25, max = 650},
		},

		{
			Name = "Polar Star",
			Chance = 1/300,
			Number = 4, 
			Luck = {add = 35, max = 1500},
			RP = {add = 35, max = 1600},
			UP = {add = 7.77, max = 700},
			Prestige = {add = 1.5, max = 200},
		},

		{
			Name = "Eternal Frost",
			Chance = 1/15_000,
			Number = 5, 
			Luck = {add = 80, max = 2000},
			RP = {add = 77, max = 2000},
			UP = {add = 35, max = 1200},
			Prestige = {add = 19, max = 600},
			AP = {add = 2.5, max = 50},
		},

		{
			Name = "Subzero",
			Chance = 1/65_000,
			Number = 6, 
			Prestige = {add = 25, max = 750},
			AP = {add = 7.5, max = 100},
			Ash = {add = 1.25, max = 50},
		},

		{
			Name = "Blizzard Core",
			Chance = 1/150_000,
			Number = 7,
			Secret = true,
			Luck = {add = 125, max = 4500},
			RP = {add = 75, max = 4500},
			UP = {add = 75, max = 2500},
			Prestige = {add = 75, max = 1250},
			AP = {add = 20, max = 100},
			Ash = {add = 10, max = 100},
		},

		{
			Name = "Super Frozen",
			Chance = 1/500_000,
			Number = 8,
			Secret = true,
			Luck = {add = 175, max = 10_000},
			RP = {add = 135, max = 10_000},
			UP = {add = 35, max = 10_000},
			Prestige = {add = 65, max = 10_000},
			AP = {add = 20, max = 10_000},
			Ash = {add = 20, max = 10_000},
		},

		{
			Name = "snow loving god",
			Chance = 1/75_000_000,
			Number = 9,
			Secret = true,
			Luck = {add = 350, max = 21, noDebuff = true},
			RP = {add = 300, max = 11, noDebuff = true},
			Ash = {add = 350, max = 21, noDebuff = true},
			Revision = {add = 350, max = 21, noDebuff = true},
			Cash = {add = 15, max = 6, noDebuff = true},
			RuneBulk = {add = 1, max = 3, overrideText = "Rune Bulk", noDebuff = true}
		}
	}
}

return Rune