local Rune = {
	Settings = {
		["RuneName"] = "Desert",
		["RuneCost"] = 30,
		["RuneStat"] = "Ultra",
		["RuneWorld"] = "Desert",
		["RuneOrder"] = 2
	},

	Runes = {
		{
			Name = "Tumbleweed",
			Chance = 1/2,
			Number = 1, 
			Luck = {add = 1.25, max = 250},
		},

		{
			Name = "Cactus",
			Chance = 1/15,
			Number = 2, 
			RP = {add = 3.5, max = 300},
		},

		{
			Name = "Sandstone",
			Chance = 1/40,
			Number = 3,
			Luck = {add = 7.5, max = 500},
			RP = {add = 7.5, max = 500},
		},

		{
			Name = "Scorpion",
			Chance = 1/75,
			Number = 4,
			Luck = {add = 13, max = 500},
			RP = {add = 13, max = 500},
			UP = {add = 1.5, max = 150},
		},

		{
			Name = "Obelisk",
			Chance = 1/200,
			Number = 5,
			Luck = {add = 20, max = 650},
			RP = {add = 20, max = 650},
			UP = {add = 5, max = 350},
		},
		
		{
			Name = "Desert Breath",
			Chance = 1/6_500,
			Number = 6,
			Luck = {add = 45, max = 1000},
			RP = {add = 35, max = 1000},
			UP = {add = 12.5, max = 500},
		},
		
		{
			Name = "Cactus God",
			Chance = 1/125_000,
			Number = 7, 
			Secret = true,
			Luck = {add = 100, max = 1500},
			RP = {add = 100, max = 1500},
			UP = {add = 55, max = 850},
			Prestige = {add = 15, max = 150},
		},
		
		{
			Name = "POCKET SAND!!",
			Chance = 1/555_555,
			Number = 8, 
			Secret = true,
			Luck = {add = 275, max = 10_000},
			RP = {add = 234, max = 10_000},
			UP = {add = 111, max = 10_000},
			Prestige = {add = 76, max = 10_000},
			AP = {add = 65, max = 10_000},
			Ash = {add = 35, max = 10_000},
			Revision = {add = 5.55, max = 10_000},
		},
		
		{
			Name = "desert cat",
			Chance = 1/45_000_000,
			Number = 9,
			Secret = true,
			Luck = {add = 250, max = 21, noDebuff = true},
			RP = {add = 225, max = 21, noDebuff = true},
			UP = {add = 200, max = 21, noDebuff = true},
			Prestige = {add = 150, max = 21, noDebuff = true},
			Ash = {add = 100, max = 16, noDebuff = true},
			Revision = {add = 50, max = 11, noDebuff = true},
			RuneBulk = {add = 1, max = 2, overrideText = "Rune Bulk", noDebuff = true}
		}
	}
}

return Rune
