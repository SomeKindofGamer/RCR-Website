local Rune = {
	Settings = {
		["RuneName"] = "Trixie",
		["RuneCost"] = 10,
		["RuneStat"] = "Stat",
		["RuneWorld"] = "April Fools",
		["RuneOrder"] = 52,
		["Event"] = true,
	},

	Runes = {
		{
			Name = "trixie?",
			Chance = 1/2,
			Number = 1,
			Luck = { add = 0.00001, max = 1.5, noDebuff = true },
			ValentinesLuck = { add = 0.000077, max = 10, noDebuff = true },
			AprilStat = { add = 0.377, max = 999_999_999, noDebuff = true, overrideText = "stat" },
			EventRuneBulk = { setAmounts = { [10_000] = 1, [100_000] = 2, [1_000_000] = 3, [10_000_000] = 4, [100_000_000] = 5 }, add = 0, max = 5, noDebuff = true, overrideText = "Event Rune Bulk" },
			EventRuneSpeed = { add = 0.0001, max = 2.5, noDebuff = true, overrideText = "Event Rune Speed" },
		},
		
		{
			Name = "lucky!",
			Chance = 1/10_000_000,
			Number = 2,
			Luck = { add = 1, max = 2, noDebuff = true },
			ValentinesLuck = { add = 1, max = 999_999_999, noDebuff = true },
			AprilStat = { add = 25, max = 999, noDebuff = true, overrideText = "stat" },
			EventRuneBulk = { setAmounts = { [10] = 1, [100] = 2, [1_000] = 3, [10_000] = 4, [100_000] = 5 }, add = 0, max = 5, noDebuff = true, overrideText = "Event Rune Bulk" },
		},
		
		{
			Name = "rocky!",
			Chance = 1/100_000_000,
			Number = 3,
			Secret = true,
			Luck = { add = 1, max = 11, noDebuff = true },
			ValentinesLuck = { add = 5, max = 999_999_999, noDebuff = true },
			AprilStat = { add = 150, max = 999, noDebuff = true, overrideText = "stat" },
			EventRuneBulk = { setAmounts = { [1] = 1, [10] = 2, [100] = 3, [1_000] = 4, [10_000] = 5 }, add = 0, max = 5, noDebuff = true, overrideText = "Event Rune Bulk" },
		},
		
		{
			Name = "gatekeeping.",
			Chance = 1/999_999_999_999,
			Number = 4,
			Secret = true,
			AprilStat = { add = 9999999, max =999999999, noDebuff = true, overrideText = "gatekeeping this stat" },
		},
	}
}

return Rune
