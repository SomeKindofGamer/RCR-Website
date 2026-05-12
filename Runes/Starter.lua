local Rune = {
	Settings = {
		["RuneName"] = "Starter",
		["RuneCost"] = 100_000_000,
		["RuneStat"] = "Rebirths",
		["RuneWorld"] = "Spawn",
		["RuneOrder"] = 1
	},

	Runes = {
		{
			Name = "Tree",
			Chance = 1/2,
			Number = 1, 
			Luck = {add = 1.5, max = 100},
		},

		{
			Name = "Dirt",
			Chance = 1/5,
			Number = 2, 
			Luck = {add = 3, max = 125},
		},

		{
			Name = "Bush",
			Chance = 1/25,
			Number = 3,
			RP = {add = 1.5, max = 100},
		},

		{
			Name = "Rock",
			Chance = 1/75,
			Number = 4, 
			RP = {add = 5, max = 250},
		},

		{
			Name = "Flower",
			Chance = 1/200, 
			Number = 5,
			Luck = {add = 10, max = 400},
			RP = {add = 10, max = 400},
		},

		{
			Name = "Secret",
			Chance = 1/15_000,
			Number = 6,
			Luck = {add = 35, max = 650},
			RP = {add = 25, max = 400},
			UP = {add = 5, max = 150},
		},

		{
			Name = "Ultimate",
			Chance = 1/100_000,
			Number = 7,
			Secret = true,
			Luck = {add = 65, max = 1000},
			RP = {add = 40, max = 750},
			UP = {add = 25, max = 300},
		},
		
		{
			Name = "really secret...",
			Chance = 1/500_000,
			Number = 8,
			Secret = true,
			Luck = {add = 150, max = 10_000},
			RP = {add = 125, max = 10_000},
			UP = {add = 100, max = 10_000},
			Prestige = {add = 75, max = 10_000},
			AP = {add = 50, max = 10_000},
			Ash = {add = 25, max = 10_000},
		},
		
		{
			Name = "a VERY secret rune...",
			Chance = 1/15_000_000,
			Number = 9,
			Secret = true,
			Luck = {add = 200, max = 21, noDebuff = true},
			RP = {add = 200, max = 21, noDebuff = true},
			AP = {add = 100, max = 8.5, noDebuff = true},
			Revision = {add = 50, max = 6, noDebuff = true},
			RuneBulk = { setAmounts = { [1] = 1, [100] = 2 }, add = 0, max = 2, noDebuff = true, overrideText = "Rune Bulk" },
		},
		
		{
			Name = "are we sane enough",
			Chance = 1/150_000_000,
			Number = 10,
			Secret = true,
			LuckMulti = {add = 0.5, max = 1},
			RPMulti = {add = 0.5, max = 1},
			RevisionMulti = {add = 0.5, max = 1},
			CrystalsMulti = {add = 0.5, max = 1},
			RuneLuck = {add = 10, max = 1.5, overrideText = "Rune Luck", noDebuff = true},
			RuneBulk = { setAmounts = { [1] = 1, [15] = 2, [50] = 3 }, add = 0, max = 3, noDebuff = true, overrideText = "Rune Bulk" },
		}
	}
}

return Rune
