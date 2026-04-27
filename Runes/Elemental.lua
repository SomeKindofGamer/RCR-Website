local Rune = {
	Settings = {
		["RuneName"] = "Elemental",
		["RuneCost"] = "1e9999",
		["RuneStat"] = "Rebirths",
		["RuneWorld"] = "Exclusive",
		["Exclusive"] = true,
		["RuneOrder"] = 101
	},

	Runes = {
		{
			Name = "Ember",
			Chance = 1/2,
			Number = 1,
			LuckMulti = {add = 0.0085, max = 1},
			RPMulti = {add = 0.004, max = 1},
			UPMulti = {add = 0.002, max = 1},
			Cash = {add = 0.5, max = 2, noDebuff = true}
		},

		{
			Name = "Tidal",
			Chance = 1/5,
			Number = 2,
			Luck = {add = 5, max = 2.75, noDebuff = true},
			Prestige = {add = 1.5, max = 2, noDebuff = true},
			AP = {add = 1, max = 2.75, noDebuff = true},
		},

		{
			Name = "Zephyr",
			Chance = 1/25,
			Number = 3,
			Luck = {add = 15, max = 2.75, noDebuff = true},
			RP = {add = 15, max = 2.75, noDebuff = true},
			Cash = {add = 1, max = 2, noDebuff = true},
		},

		{
			Name = "Plasmatic",
			Chance = 1/100,
			Number = 4,
			LuckMulti = {add = 0.05, max = 1.5},
			RPMulti = {add = 0.25, max = 0.5},
			APMulti = {add = 0.01, max = 0.5},
			AshMulti = {add = 0.005, max = 0.5},
			Revision = {add = 15, max = 2, noDebuff = true},
			Cash = {add = 5, max = 2, noDebuff = true},
			Crystals = {add = 1, max = 2, noDebuff = true},
		},

		{
			Name = "Frostbite",
			Chance = 1/250,
			Number = 5,
			PrestigeMulti = {add = 0.25, max = 1},
			APMulti = {add = 0.1, max = 1},
			AshMulti = {add = 0.05, max = 1},
			RevisionMulti = {add = 0.025, max = 1},
			Crystals = {add = 5, max = 2, noDebuff = true},
		},

		{
			Name = "Aetherstorm",
			Chance = 1/1_000,
			Number = 6,
			LuckMulti = {add = 0.35, max = 1.5},
			RPMulti = {add = 0.15, max = 1},
			Revision = {add = 25, max = 3.5, noDebuff = true},
			Crystals = {add = 10, max = 2, noDebuff = true},
			RuneLuck = {add = 10, max = 1.5, overrideText = "Rune Luck", noDebuff = true},
			RuneBulk = {add = 1, max = 2, overrideText = "Rune Bulk", noDebuff = true}
		},
	}
}

return Rune