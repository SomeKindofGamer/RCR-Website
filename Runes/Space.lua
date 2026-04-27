local Rune = {
	Settings = {
		["RuneName"] = "Space",
		["RuneCost"] = "1e9999",
		["RuneStat"] = "Rebirths",
		["RuneWorld"] = "Exclusive",
		["Exclusive"] = true,
		["RuneOrder"] = 100
	},

	Runes = {
		{
			Name = "Stardust",
			Chance = 1/2,
			Number = 1,
			LuckMulti = {add = 0.0085, max = 1.5},
			RPMulti = {add = 0.004, max = 0.75},
			UPMulti = {add = 0.002, max = 0.75}
		},

		{
			Name = "Starlight",
			Chance = 1/5,
			Number = 2,
			Luck = {add = 15, max = 350},
			UP = {add = 5, max = 175},
			AP = {add = 1, max = 75},
		},

		{
			Name = "Dark Matter",
			Chance = 1/25,
			Number = 3,
			Luck = {add = 55, max = 1000},
			RP = {add = 55, max = 1000},
			Prestige = {add = 1.5, max = 100},
		},

		{
			Name = "Supernova",
			Chance = 1/100,
			Number = 4,
			LuckMulti = {add = 0.05, max = 1.5},
			RPMulti = {add = 0.025, max = 1},
			UPMulti = {add = 0.01, max = 0.75},
			PrestigeMulti = {add = 0.0075, max = 0.5},
		},

		{
			Name = "Event Horizon",
			Chance = 1/250,
			Number = 5,
			UPMulti = {add = 0.25, max = 1},
			PrestigeMulti = {add = 0.25, max = 0.75},
			AP = {add = 45, max = 200},
			Ash = {add = 25, max = 175},
		},

		{
			Name = "Singularity",
			Chance = 1/1_000,
			Number = 6,
			LuckMulti = {add = 0.35, max = 1.5},
			RPMulti = {add = 0.15, max = 1},
			Ash = {add = 25, max = 250},
			AP = {add = 100, max = 500},
			RuneBulk = {add = 1, max = 2, overrideText = "Rune Bulk", noDebuff = true}
		},
	}
}

return Rune