local Rune = {
	Settings = {
		["RuneName"] = "Heartfelt",
		["RuneCost"] = 50_000_000,
		["RuneStat"] = "Hearts",
		["RuneWorld"] = "Valentines",
		["RuneOrder"] = 50,
		["Event"] = true,
	},

	Runes = {
		{
			Name = "Loveable",
			Chance = 1/2,
			Number = 1, 
			ValentinesLuck = {add = 0.05, overrideText = "Valentines Luck", max = 100, noDebuff = true},
			Hearts = {add = 0.05, max = 100, noDebuff = true},
			Luck = {add = 0.05, max = 100},
		},
		
		{
			Name = "Romanticial",
			Chance = 1/15,
			Number = 2, 
			ValentinesLuck = {add = 0.125, overrideText = "Valentines Luck", max = 125, noDebuff = true},
			Hearts = {add = 0.125, max = 125, noDebuff = true},
			RP = {add = 0.125, max = 100},
		},
		
		{
			Name = "Heartthrob",
			Chance = 1/75,
			Number = 3, 
			ValentinesLuck = {add = 0.45, overrideText = "Valentines Luck", max = 175, noDebuff = true},
			Hearts = {add = 0.45, max = 175, noDebuff = true},
			UP = {add = 0.15, max = 100},
		},

		{
			Name = "Soulbound",
			Chance = 1/300,
			Number = 4,
			ValentinesLuck = {add = 0.85, overrideText = "Valentines Luck", max = 150, noDebuff = true},
			Hearts = {add = 0.85, max = 150, noDebuff = true},
			Prestige = {add = 0.45, max = 100},
		},

		{
			Name = "Cupid's Mark",
			Chance = 1/1_250,
			Number = 5,
			ValentinesLuck = {add = 1.60, overrideText = "Valentines Luck", max = 150, noDebuff = true},
			Hearts = {add = 1.60, max = 150, noDebuff = true},
			Ascension = {add = 0.65, max = 100},
			Ash = {add = 0.45, max = 100},
		},

		{
			Name = "Eternal Devotion",
			Chance = 1/7_500,
			Number = 6,
			ValentinesLuck = {add = 5.555, overrideText = "Valentines Luck", max = 200, noDebuff = true},
			Hearts = {add = 5.555, max = 200, noDebuff = true},
			Revision = {add = 1, max = 100},
		},

		{
			Name = "Crimson Fate",
			Chance = 1/150_000,
			Number = 7,
			Secret = true,
			ValentinesLuck = {add = 300, overrideText = "Valentines Luck", max = 2_000},
			Hearts = {add = 150, max = 2_000},
			Luck = {add = 25, max = 100},
			RP = {add = 25, max = 100},
			UP = {add = 25, max = 100},
		},

		{
			Name = "Twin Flame",
			Chance = 1/500_000,
			Number = 8,
			Secret = true,
			ValentinesLuck = {add = 500, overrideText = "Valentines Luck", max = 5_000},
			Hearts = {add = 350, max = 5_000, noDebuff = true},
			EventRuneBulk = {add = 1, max = 2, overrideText = "Event Rune Bulk", noDebuff = true},
			Prestige = {add = 25, max = 100},
			Ascension = {add = 25, max = 100},
			Ash = {add = 25, max = 100},
		},

		{
			Name = "Divine Matchmaking",
			Chance = 1/3_000_000,
			Number = 9,
			Secret = true,
			ValentinesLuck = {add = 500, overrideText = "Valentines Luck", max = 2_500, noDebuff = true},
			Hearts = {add = 500, max = 2_500, noDebuff = true},
			EventRuneBulk = {add = 1, max = 3, overrideText = "Event Rune Bulk", noDebuff = true},
			Revision = {add = 25, max = 100},
		},
		
		{
			Name = "the one.",
			Chance = 1/7_500_000,
			Number = 10,
			Secret = true,
			ValentinesLuck = {add = 500, overrideText = "Valentines Luck", max = 2_500, noDebuff = true},
			Hearts = {add = 500, max = 2_500, noDebuff = true},
			EventRuneBulk = {add = 1, max = 5, overrideText = "Event Rune Bulk", noDebuff = true},
			Revision = {add = 25, max = 100},
		},
	}
}

return Rune
