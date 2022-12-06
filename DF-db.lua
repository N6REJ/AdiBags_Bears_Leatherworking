-- AdiBags Bears Leatherworking - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Leatherworking"
db.desc = "Items & Reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Leather"] = {
		uiName = Expansion .. " Leather",
		uiDesc = "Leather found in " .. Expansion,
		title = "Leather",
		items = {-- ID,	--Item name
			[193252] = true, -- Salamanther Scales
			[193254] = true, -- Rockfang Leather
			[193261] = true, -- Bite-Sized Morsel
			[193262] = true, -- Exceptional Morsel
			[193360] = true, -- Centaur's Trophy Necklace
			[193253] = true, -- Cacophonous Thunderscale
			[201399] = true, -- Primal Bear Spine
			[201404] = true, -- Tallstrider Sinew
			[201405] = true, -- Tuft of Primal Wool
			[201403] = true, -- Mastodon Tusk
			[193251] = true, -- Crystalspine Fur
			[193255] = true, -- Pristine Vorquin Horn
			[193256] = true, -- Windsong Plumage
			[193259] = true, -- Flawless Proto Dragon Scale
			[193258] = true, -- Fire-Infused Hide
			[193216] = true, -- Dense Hide 1
			[193218] = true, -- Dense Hide 2
			[193216] = true, -- Dense Hide 3
			[193208] = true, -- Resilient Leather 1
			[193210] = true, -- Resilient Leather 2
			[193211] = true, -- Resilient Leather 3
			[193222] = true, -- Lusterous Scaled Hide 1
			[193223] = true, -- Lusterous Scaled Hide 2
			[193224] = true, -- Lusterous Scaled Hide 3
			[193226] = true, -- Stonecrust Hide 1
			[193227] = true, -- Stonecrust Hide 2
			[193228] = true, -- Stonecrust Hide 3
			[193253] = true, -- Cacophonous Thunderscale
			[193229] = true, -- Mireslush Hide 1
			[193230] = true, -- Mireslush Hide 2
			[193231] = true, -- Mireslush Hide 3
			[193242] = true, -- Earthshine Scales 1
			[193243] = true, -- Earthshine Scales 2
			[193244] = true, -- Earthshine Scales 3
			[193245] = true, -- Frostbite Scales 1
			[193246] = true, -- Frostbite Scales 2
			[193247] = true, -- Frostbite Scales 3
			[193236] = true, -- Infurious Hide 1
			[193237] = true, -- Infurious Hide 2
			[193238] = true, -- Infurious Hide 3
			[193248] = true, -- Infurious Scales 1
			[193249] = true, -- Infurious Scales 2
			[193250] = true, -- Infurious Scales 3
			[193213] = true, -- Adamant Scales 1
			[193214] = true, -- Adamant Scales 2
			[193215] = true, -- Adamant Scales 3
			[193232] = true, -- Deathchill Hide 1
			[193233] = true, -- Deathchill Hide 2
			[193234] = true, -- Deathchill Hide 3
			[193239] = true, -- Drygrate Scales 1
			[193240] = true, -- Drygrate Scales 2
			[193241] = true, -- Drygrate Scales 3
		}
	},

	["Crafted_Reagents"] = {
		uiName = Expansion .. " Crafted Reagents",
		uiDesc = "Assorted crafted reagents used in " .. Expansion,
		title = "Crafted",
		items = {
			-- ID  = true,		--Item name
			[197736] = true, -- Finished Prototype Regal Barding
			[197735] = true, -- Finished Prototype Explorers Barding
			[193469] = true, -- Toxified Armor Patch 1
			[193552] = true, -- Toxified Armor Patch 2
			[193555] = true, -- Toxified Armor Patch 3
			[193468] = true, -- Fang Adornments 1
			[193551] = true, -- Fang Adornments 2
			[193554] = true, -- Fang Adornments 3
			[191529] = true, -- Illustrious Insight
		}
	},
	["Elemental"] = {
		uiName = Expansion .. " Elemental",
		uiDesc = "Elemental reagents found in " .. Expansion,
		title = "Elemental",
		items = {
			-- ID  = true,		--Item name
			[190326] = true, -- Rousing Air
			[190315] = true, -- Rousing Earth
			[190320] = true, -- Rousing Fire
			[190451] = true, -- Rousing Ire
			[190328] = true, -- Rousing Frost
			[190322] = true, -- Rousing Order
			[190321] = true, -- Awakened Fire
			[190327] = true, -- Awakened Air
			[190329] = true, -- Awakened Frost
			[190316] = true, -- Awakened Fire
			[190324] = true, -- Awakened Order
		}
	},
	["Fish_Reagents"] = {
		uiName = Expansion .. " Leatherworking Fish Reagents",
		uiDesc = "Leatherworking Fish reagents from vendors used in " .. Expansion,
		title = "Fish",
		items = {
			-- ID    = true,    --Item name
			[201400] = true, -- Aquatic Maw
		}
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Leatherworking Reagents",
		uiDesc = "Leatherworking reagents from vendors used in " .. Expansion,
		title = "Vendor",
		items = {
			-- ID    = true,    --Item name
			[198615] = true, -- Pentagold Seal
		}
	},
	["Zone_Reagents"] = {
		uiName = "Special Reagents",
		uiDesc = "Special reagents from " .. Expansion,
		title = "DF Mats",
		items = {
			-- ID  = true,		--Item name
			[190454] = true, -- Primal Chaos
			[202122] = true, -- Primal Chaos Cluster
			[200686] = true, -- Primal Focus
			[190456] = true, -- Artisan's Mettle
			[201405] = true, -- Tuft of Primal Wool -- Used by many professions
			[201406] = true, -- Glowing Titan Orb   -- Used by many professions
			[190453] = true, -- Spark of Ingenuity
			[199197] = true, -- Bottled Essence
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
