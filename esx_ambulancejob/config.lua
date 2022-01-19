Config                            = {}
Config.DrawDistance               = 15.0
Config.MarkerColor                = { r = 56, g = 197, b = 201 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.Sprite  = 61
Config.Display = 4
Config.Scale   = 1.0
Config.Colour  = 19
Config.ReviveReward               = 1500 -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale = 'en'
Config.RespawnToHospitalDelay		= 300000

bedNames = {
	'v_med_bed2',
}


Config.CenaNaprawki = 3500

local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 5 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = true
Config.RemoveItemsAfterRPDeath      = true

-- Will display a timer that shows RespawnDelayAfterRPDeath as a countdown
Config.ShowDeathTimer               = true

-- Will allow respawn after half of RespawnDelayAfterRPDeath has elapsed.
Config.EarlyRespawn                 = false
-- The player will be fined for respawning early (on bank account)
Config.EarlyRespawnFine                  = false
Config.EarlyRespawnFineAmount            = 500

Config.RespawnPlace = vector3(299.632, -574.7994, 42.40)

Config.Blips = {
	{
		coords = vector3(1817.81 , 3671.48, 44.64)
	},
	{
		coords = vector3(304.90 , -586.41, 42.31)
	},
	{
		--coords = vector3(1143.64 , -1542.54, 51.71)
	},
	{
		coords = vector3(-253.73 , 6322.73, 39.56)
	},
	{
		coords = vector3(-823.14 , -1222.93, 5.98)
	}
}

Config.OnlySamsBlip = {
	{
		Pos     = { x = -718.77, y = -1326.51, z = 1.5 },
		Sprite  = 427,
		Display = 4,
		Scale   = 0.6,
		Colour  = 3
	},
	{
		Pos     = { x = 2836.1272, y = -732.8671, z = 0.416 },
		Sprite  = 427,
		Display = 4,
		Scale   = 0.6,
		Colour  = 3
	},
	{
		Pos     = { x = -3420.7292, y = 955.541, z = 7.3967 },
		Sprite  = 427,
		Display = 4,
		Scale   = 0.6,
		Colour  = 3
	},
	{
		Pos     = { x = 3373.7449, y = 5183.4521, z = 0.5102 },
		Sprite  = 427,
		Display = 4,
		Scale   = 0.6,
		Colour  = 3
	},
	{
		Pos     = { x = 1736.29, y = 3976.24, z = 31.98 },
		Sprite  = 427,
		Display = 4,
		Scale   = 0.6,
		Colour  = 3
	},
	{
		Pos	= { x = -285.01, y = 6627.6, z = 7.2 },
		Sprite  = 427,
		Display = 4,
		Scale   = 0.6,
		Colour  = 3
	},
}

Config.AuthorizedVehicles = {
	{
		model = 'ms_coach',
		label = 'Autobus SAMS',
		livery = 0,
		rank = 0,
	},
	{
		model = 'ms_transformer',
		label = 'Ford F350 SAMS',
		livery = 0,
		rank = 0,
	},
	{
		model = 'ms_tahoe',
		label = 'Shevrolet Tahoe',
		livery = 0,
		rank = 1,
	},
	{
		model = 'ms_impala',
		label = 'Shevrolet Impala',
		livery = 0,
		rank = 2,
	},
	{
		model = 'ms_jeep',
		label = 'Jeep SAMS',
		livery = 0,
		rank = 3,
	},
	{
		model = 'ms_ram19',
		label = 'Dodge Ram SAMS',
		livery = 0,
		rank = 3,
	},
	{
		model = 'ms_explorer',
		label = 'Explorer SAMS',
		livery = 0,
		rank = 4,
	},
	{
		model = 'ms_outlander',
		label = 'Quad SAMS',
		livery = 0,
		rank = 4,
	},
	{
		model = 'ms_tundra',
		label = 'Toyota Tundra SAMS',
		livery = 0,
		rank = 5,
	},
	{
		model = 'ms_tahoe21',
		label = 'Shevrolet Tahoe 2021',
		livery = 0,
		rank = 5,
	},
	{
		model = 'ms_fusion16',
		label = 'Ford Fusion',
		livery = 0,
		rank = 6,
	},
	{
		model = 'ms_charger',
		label = 'Dodge Charger 2018',
		livery = 0,
		rank = 9,
	},
	{
		model = 'ms_m5',
		label = 'BMW M5 SAMS',
		livery = 1,
		rank = 11,
	},
}

Config.AuthorizedHeli = {
	{
	   model = 'ms_heli',
	   label = 'Helikopter'
	},
}
Config.AuthorizedBoats = {
	{
		model = 'dinghy',
		label = 'Łódź'
	},	
}

Config.Ambulance = {
	Cloakrooms = {
		{
			coords = vector3(375.53, -1434.63, 31.61),
		},
		{
			coords = vector3(1825.7, 3674.91, 33.37),
		},
		{
			coords = vector3(1133.86, -1548.72, 34.45),
		},
		{
			coords = vector3(-434.43, -320.67, 33.96),
		},
		{
			coords = vector3(-252.58, 6309.52, 31.53),
		},
		{
			coords = vector3(-826.24, -1237.0, 6.38),
		},
		{
			coords = vector3(298.80, -598.29, 42.33),
		},
	},
	Vehicles = {
		{
			coords = vector3(295.91, -591.23, 42.4),
			spawnPoint = vector3(289.38, -594, 43.18),
			heading = 341.72
		},
		{
			coords = vector3(1171.72, -1527.78, 34.1),
			spawnPoint = vector3(1177.06, -1545.05, 33.74),
			heading = 358.8
		},
		{
			coords = vector3(-483.53, -352.71, 23.28),
			spawnPoint = vector3(-475.83, -349.85, 23.28),
			heading = 206.33
		},
		{
			coords = vector3(1825.14, 3690.48, 33.32),
			spawnPoint = vector3(1826.99, 3693.65, 33.81),
			heading = 299.56
		},
		{
			coords = vector3(-262.35, 6308.11, 31.52),
			spawnPoint = vector3(-265.09, 6306.84, 32.01),
			heading = 225.37
		},
		{
			coords = vector3(-846.13, -1229.19, 5.98),
			spawnPoint = vector3(-844.06, -1231.93, 5.98),
			heading = 318.81
		},
		{
			coords = vector3(338.45, -586.45, 27.84),
			spawnPoint = vector3(329.56, -589.67, 27.84),
			heading = 340.7
		},
	},
	Boats = {
		{
			coords = vector3(-718.77, -1326.51, 0.7),
			spawnPoint = vector3(-724.68, -1328.62, 0.12),
			heading = 229.75
		},
		{
			coords = vector3(1736.29, 3976.24, 31.08),
			spawnPoint = vector3(1736.63, 3986.54, 30.33),
			heading = 17.2
		},
		{
			coords = vector3(-285.01, 6627.6, 6.24),
			spawnPoint = vector3(-287.84, 6624.39, -0.2),
			heading = 47.37
			
		},
		{
			coords = vector3(-3420.4172, 955.6319, 7.3967),
			spawnPoint = vector3(-3434.8318, 945.8564, 0.5458),
			heading = 88.32
			
		},
		{
			coords = vector3(2836.5044, -732.4112, 0.3822),
			spawnPoint = vector3(2853.5557, -728.2502, 0.3811),
			heading = 261.94
			
		},
		{
			coords = vector3(3373.8213, 5183.4863, 0.5161),
			spawnPoint = vector3(3384.6956, 5181.6299, 0.5161),
			heading = 271.24
			
		},
	},
	Helicopters = {
		{
			coords = vector3(314.25, -1453.21, 45.61),
			spawnPoint = vector3(313.37, -1464.98, 46.51),
			heading = 143.87
		},
		{
			coords = vector3(-704.30, 319.73, 139.25),
			spawnPoint = vector3(-703.2, 323.97, 140.15),
			heading = 172.5
		},
		{
			coords = vector3(-256.98, 6314.35, 38.76),
			spawnPoint = vector3(-252.3, 6319.14, 38.76),
			heading = 317.67
		},
		{
			coords = vector3(1201.61, -1535.58, 38.44),
			spawnPoint = vector3(1206.35, -1536.11, 38.45),
			heading = 0.0
		},
		{
			coords = vector3(1832.7971, 3691.7437, 37.4334),
			spawnPoint = vector3(1833.4216, 3680.6487, 39.1894),
			heading = 33.05
		},
		{
			coords = vector3(-855.95, -1233.71, 13.88),
			spawnPoint = vector3(-847.95, -1233.71, 13.88),
			heading = 230.5
		},
		{
			coords = vector3(-783.27, -1200.8, 51.14),
			spawnPoint = vector3(-790.97, -1191.68, 53.02),
			heading = 53.55
		},
		{
			coords = vector3(341.52, -581.72, 73.21),
			spawnPoint = vector3(352.23, -588.06, 73.21),
			heading = 68.83
		},
	},
	VehicleDeleters = {
		{
			coords = vector3(296.25, -574.3, 42.4),
		},
		{
			coords = vector3(-790.97, -1191.68, 53.02),
		},
		{
			coords = vector3(-847.95, -1233.71, 13.88),
		},
		{
			coords = vector3(-3434.8318, 945.8564, 0.5458),
		},
		{
			coords = vector3(2853.5557, -728.2502, 0.3811),
		},
		{
			coords = vector3(1206.35, -1536.11, 38.45),
		},
		{
			coords = vector3(1833.5635, 3680.0391, 39.1894),
		},
		{
			coords = vector3(3384.6956, 5181.6299, 0.5161),
		},
		{
			coords = vector3(-728.14, -1325.99, 0.5),
		},
		{
			coords = vector3(1731.19, 3989.57, 30.25),
		},
		{
			coords = vector3(-470.66, -349.12, 23.28),
		},
		{
			coords = vector3(1178.93, -1518.74, 33.74),
		},
		{
			coords = vector3(-287.64, 6621.62, 0.8),
		},
		{
			coords = vector3(-703.2, 323.97, 139.25),
		},
		{
			coords = vector3(-252.62, 6318.73, 38.76),
		},
		{
			coords = vector3(313.27, -1465.07, 45.61),
		},
		{
			coords = vector3(1827.14, 3693.51, 33.32),
		},
		{
			coords = vector3(-268.8, 6310.72, 31.52),
		},
		{
			coords = vector3(1206.35, -1536.11, 38.45),
		},
		{
			coords = vector3(-844.06, -1231.93, 5.98),
		},
		{
			coords = vector3(329.56, -589.67, 27.84),
		},
		{
			coords = vector3(352.23, -588.06, 73.21),
		},
	},
	Inventories = {
		{
			coords = vector3(-443.66, -312.56, 33.96),
		},
		{
			coords = vector3(359.56, -1425.86, 31.61),
		},
		{
			coords = vector3(1133.12, -1569.7, 34.45),
		},
		{
			coords = vector3(-802.57, -1208.93, 6.38),
		},
		{
			coords = vector3(311.35, -563.36, 42.43),
		},
	},
	Pharmacies = {
		{
			coords = vector3(359.35, -1414.98, 31.61),
		},
		{
			coords = vector3(1133.22, -1557.07, 34.45),
		},
		{
			coords = vector3(-438.83, -318.44, 33.96),
		},
		{
			coords = vector3(1830.63, 3677.38, 33.37),
		},
		{
			coords = vector3(-252.0, 6335.98, 31.53),
		},
		{
			coords = vector3(-805.8, -1212.84, 6.38),
		},
		{
			coords = vector3(309.59, -568.38, 42.33),
		},
	},
	BossActions = {
		-- {
		-- 	coords = vector3(-677.43, 354.64, 82.25),
		-- },
		-- {
		-- 	coords = vector3(1333.15, -1560.55, 34.45),
		-- },
		-- {
		-- 	coords = vector3(365.53, -1420.85, 31.61),
		-- },
		-- {
		-- 	coords = vector3(-432.17, -324.35, 33.96),
		-- },
		-- {
		-- 	coords = vector3(1839.77, 3686.87, 33.37),
		-- },
		-- {
		-- 	coords = vector3(-256.69, 6306.37, 31.53),
		-- },
		{
			coords = vector3(-814.69, -1236.69, 6.38),
		},
		{
			coords = vector3(310.1, -595.01, 42.33),
		},
	},
	SkinMenu = {
		{
			coords = vector3(1133.09, -1545.55, 34.45),
			coords = vector3(-255.7, 6312.68, 31.47),
			coords = vector3(-823.76, -1238.91, 6.38),
			coords = vector3(301.62, -599.12, 42.33),
		},
	}
}

Config.Uniforms = {
	pielegniarz_wear = {
		male = {
			['tshirt_1'] = 19,  ['tshirt_2'] = 1,
			['torso_1'] = 477,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 85,
			['pants_1'] = 146,   ['pants_2'] = 0,
			['shoes_1'] = 47,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['bags_1'] = 21,  ['bags_2'] = 10
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 141,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 109,
			['pants_1'] = 90,   ['pants_2'] = 3,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 21,  ['bags_2'] = 10
		}
	},
	ratownik_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 47,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 85,
			['pants_1'] = 26,   ['pants_2'] = 1,
			['shoes_1'] = 14,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 4,
			['bags_1'] = 21,  ['bags_2'] = 10
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 141,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 109,
			['pants_1'] = 90,   ['pants_2'] = 3,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 21,  ['bags_2'] = 10
		}
	},
	lekarz_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 74,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 85,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 30,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 9,
			['bags_1'] = 0,  ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 25,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 109,
			['pants_1'] = 90,   ['pants_2'] = 0,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		}
	},
	lekarzsoru_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 118,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 86,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 126,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 101,
			['pants_1'] = 90,   ['pants_2'] = 0,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		}
	},
	lekarzspecjalista_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 277,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 85,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 126,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 1,
			['bags_1'] = 0,  ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 290,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 109,
			['pants_1'] = 27,   ['pants_2'] = 0,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 21,  ['bags_2'] = 10
		}
	},
	doktor_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 139,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 88,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 30,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 9,
			['bags_1'] = 0,  ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 149,   ['torso_2'] = 11,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 101,
			['pants_1'] = 11,   ['pants_2'] = 15,
			['shoes_1'] = 62,   ['shoes_2'] = 4,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		}
	},
	chirurg_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 74,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 85,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 126,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 25,   ['torso_2'] = 6,
			['decals_1'] = 0,  ['decals_2'] = 0,
			['arms'] = 109,
			['pants_1'] = 11,   ['pants_2'] = 15,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['mask_1'] = 0,    ['mask_2'] = 0
		}
	},
	neurochirurg_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 118,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 86,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 126,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 18,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 101,
			['pants_1'] = 112,   ['pants_2'] = 2,
			['shoes_1'] = 3,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['glasses_1'] = 4, ['glasses_2'] = 5,
			['bags_1'] = 0,  ['bags_2'] = 0
		}
	},
	nurek_wear = { 
		male = {
			['tshirt_1'] = 123,  ['tshirt_2'] = 0,
			['torso_1'] = 243,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 17,
			['pants_1'] = 94,   ['pants_2'] = 0,
			['shoes_1'] = 67,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['glasses_1'] = 26, ['glasses_2'] = 0
	
		},
		female = {
			['tshirt_1'] = 153,  ['tshirt_2'] = 0,
			['torso_1'] = 251,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 18,
			['pants_1'] = 97,   ['pants_2'] = 0,
			['shoes_1'] = 70,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['bags_1'] = 0,  ['bags_2'] = 0,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['mask_1'] = 52,  ['mask_2'] = 0
	
		}
	},
}