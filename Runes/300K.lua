local Rune = {
	Settings = {
		["RuneName"] = "300K",
		["RuneCost"] = 3.333e33,
		["RuneStat"] = "Rebirths",
		["RuneWorld"] = "Spawn",
		["RuneOrder"] = 999,
		["Event"] = true,
	},

	Runes = {
		{
			Name = "300K Starter",
			Chance = 1/2,
			Number = 1,
			Luck = { add = 0.0005, max = 3.5, noDebuff = true },
			Transcension = { add = 0.000005, max = 4.5, noDebuff = true },
			Radiance = { add = 0.0000035, max = 11, noDebuff = true },
			RuneLuck = { add = 0.000000165, max = 1.5, noDebuff = true, overrideText = "Rune Luck" },
			Hearts = { add = 0.0035, max = 10_000 },
			ValentinesLuck = { add = 0.0000077, max = 10, noDebuff = true },
		},

		{
			Name = "300K Intermediate",
			Chance = 1/1_111,
			Number = 2,
			Luck = { add = 0.015, max = 250 },
			RP = { add = 0.00035, max = 3.5, noDebuff = true },
			Ash = { add = 0.000295523, max = 3, noDebuff = true },
			Hearts = { add = 0.0002652342, max = 10, noDebuff = true },
		},

		{
			Name = "300K Rare",
			Chance = 1/5_555,
			Number = 3,
			Luck = { add = 0.000753, max = 200 },
			Cash = { add = 0.00125, max = 200 },
			Radiance = { add = 0.001295, max = 250 },
			RuneBulk = { setAmounts = { [20_000] = 1, [500_000] = 2, [25_000_000] = 3 }, add = 1, max = 3, noDebuff = true, overrideText = "Rune Bulk" },
		},

		{
			Name = "300K Awesome",
			Chance = 1/33_333,
			Number = 4,
			Ash = { add = 2.25, max = 1_000 },
			Transcension = { add = 1.15, max = 1_000 },
			Radiance = { add = 0.65, max = 750 },
		},

		{
			Name = "300K Insane",
			Chance = 1/115_000,
			Number = 5,
			RuneLuck = { add = 0.01, max = 2, noDebuff = true, overrideText = "Rune Luck" },
			RuneBulk = { setAmounts = { [1] = 1, [20_000] = 2, [250_000] = 3 }, max = 3, noDebuff = true, overrideText = "Rune Bulk" },
			AP = { add = 0.155555, max = 350 },
			Radiance = { add = 0.055555, max = 500 },
		},

		{
			Name = "300K Ultimate",
			Chance = 1/350_000,
			Number = 6,
			Secret = true,
			Luck = { add = 35, max = 500 },
			RP = { add = 15, max = 333 },
			UP = { add = 5, max = 250 },
		},

		{
			Name = "300K Powered",
			Chance = 1/1_350_000,
			Number = 7,
			Secret = true,
			Luck = { add = 12.6666, max = 350 },
			Ash = { add = 5.5, max = 100 },
			RuneLuck = { add = 0.0077, max = 1.5, noDebuff = true, overrideText = "Rune Luck" },
		},

		{
			Name = "300K Voidlight",
			Chance = 1/25_555_555,
			Number = 8,
			Secret = true,
			Luck = { add = 15, max = 11, noDebuff = true },
			Prestige = { add = 125, max = 100 },
			Hearts = { add = 3_235, max = 100_000 },
			ValentinesLuck = { add = 10, max = 3.5, noDebuff = true },
		},
	}
}

return Rune