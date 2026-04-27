local Rune = {
	Settings = {
		["RuneName"] = "Pirate",
		["RuneCost"] = 25,
		["RuneStat"] = "Transcension",
		["RuneWorld"] = "PirateCove",
		["RuneOrder"] = 6
	},

	Runes = {
		{
			Name = "Barnacle",
			Chance = 1/2,
			Number = 1,
			Luck = {add = 0.0005, max = 11, noDebuff = true},
			RP = {add = 0.0003, max = 11, noDebuff = true},
			UP = {add = 0.00014776123, max = 11, noDebuff = true},
			Transcension = {add = 1.1, max = 150},
			Radiance = {add = 0.00004, max = 6, noDebuff = true},
		},

		{
			Name = "Doubloon",
			Chance = 1/75,
			Number = 2,
			Luck = {add = 0.075, max = 6, noDebuff = true},
			RP = {add = 0.035, max = 4.5, noDebuff = true},
			Transcension = {add = 0.15, max = 225},
		},

		{
			Name = "Treasure Map",
			Chance = 1/275,
			Number = 3,
			Ash = {add = 0.025, max = 3.5, noDebuff = true},
			Transcension = {add = 0.015, max = 4.5, noDebuff = true},
			Radiance = {add = 0.002, max = 3.5, noDebuff = true},
		},

		{
			Name = "Parrot Feather",
			Chance = 1/885,
			Number = 4,
			Luck = {add = 0.15, max = 31, noDebuff = true},
			Transcension = {add = 0.015, max = 4.5, noDebuff = true},
			AP = {add = 0.075, max = 6, noDebuff = true},
		},

		{
			Name = "Buried Chest",
			Chance = 1/4_000,
			Number = 5,
			Luck = {add = 0.01, max = 11, noDebuff = true},
			Transcension = {add = 0.06665, max = 8.5, noDebuff = true},
			Radiance = {add = 0.015, max = 6, noDebuff = true},
		},

		{
			Name = "Captains Compass",
			Chance = 1/45_000,
			Number = 6,
			Luck = {add = 35, max = 1000},
			Revision = {add = 22, max = 250},
			Cash = {add = 17, max = 250},
			Transcension = {add = 0.045, max = 6, noDebuff = true},
			Radiance = {add = 0.015, max = 6, noDebuff = true},
		},

		{
			Name = "Golden Cutlass",
			Chance = 1/85_000,
			Number = 7,
			Luck = {add = 115, max = 1000},
			Ash = {add = 0.9, max = 2.875, noDebuff = true},
			Transcension = {add = 1.5, max = 6, noDebuff = true},
			Radiance = {add = 0.5, max = 2, noDebuff = true},
		},

		{
			Name = "Kraken Idol",
			Chance = 1/375_000,
			Number = 8,
			Secret = true,
			Luck = {add = 200, max = 1500},
			RP = {add = 150, max = 1500},
			Ash = {add = 0.77, max = 2, noDebuff = true},
			Revision = {add = 0.15, max = 3, noDebuff = true},
			Cash = {add = 35, max = 225},
			Crystals = {add = 23, max = 225},
			Transcension = {add = 20, max = 500},
			Radiance = {add = 10, max = 500},
			RuneLuck = {add = 0.035, max = 1.5, noDebuff = true, overrideText = "Rune Luck"},
		},

		{
			Name = "Pirate Treasure",
			Chance = 1/1_000_000,
			Number = 9,
			Secret = true,
			Luck = {add = 385, max = 10_000},
			RP = {add = 300, max = 10_000},
			UP = {add = 265, max = 10_000},
			Prestige = {add = 210, max = 10_000},
			AP = {add = 145, max = 10_000},
			Ash = {add = 85, max = 10_000},
			Revision = {add = 65, max = 10_000},
			Cash = {add = 55, max = 10_000},
			Crystals = {add = 47.5, max = 10_000},
			Transcension = {add = 40, max = 10_000},
			Radiance = {add = 30, max = 10_000},
		},

		{
			Name = "Heart of the Kraken",
			Chance = 1/44_444_444,
			Number = 10,
			Secret = true,
			Luck = {add = 125, max = 21, noDebuff = true},
			Transcension = {add = 40, max = 11, noDebuff = true},
			Radiance = {add = 25, max = 8.5, noDebuff = true},
			RuneLuck = {add = 5, max = 1.5, noDebuff = true, overrideText = "Rune Luck"},
			RuneBulk = {add = 1, max = 2, noDebuff = true, overrideText = "Rune Bulk"},
		},

		{
			Name = "the best pirate.",
			Chance = 1/125_000_000,
			Number = 11,
			Secret = true,
			Luck = {add = 250, max = 26, noDebuff = true},
			Prestige = {add = 100, max = 11, noDebuff = true},
			AP = {add = 100, max = 22.5, noDebuff = true},
			Radiance = {add = 75, max = 21, noDebuff = true},
			Transcension = {add = 150, max = 26, noDebuff = true},
			RuneLuck = {add = 5, max = 1.5, noDebuff = true, overrideText = "Rune Luck"},
		},
	}
}

return Rune