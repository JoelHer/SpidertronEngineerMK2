local function generate_legs(spidertron, number)
  local spider_legs = {}
  for _, leg in pairs(spidertron.spider_engine.legs) do
    local spider_leg = table.deepcopy(data.raw['spider-leg'][leg.leg])
    spider_leg.name = spider_leg.name .. "-copy-" .. number
    leg.leg = spider_leg.name
    table.insert(spider_legs, spider_leg)
  end
  return spider_legs
end

local spiderneer = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])
-- Generic prototype
spiderneer.fast_replaceable_group = "spidertron"
spiderneer.minimap_representation = nil
spiderneer.selected_minimap_representation = nil
spiderneer.alert_when_damaged = false
spiderneer.minable = nil
spiderneer.automatic_weapon_cycling = false

spiderneer.name = "spidertron-engineer"

local spiderneer0 = table.deepcopy(spiderneer)
spiderneer0.name = "spidertron-engineer-0"
spiderneer0.max_health = 250
spiderneer0.equipment_grid = nil  -- Redone in data-final-fixes
spiderneer0.inventory_size = 0
spiderneer0.guns = {"pistol"}

spiderneer0.resistances = {
  {
      type = "physical",
      decrease = 3,
      percent = 20
  },
  {
      type = "acid",
      decrease = 0,
      percent = 20
  },
  {
      type = "explosion",
      decrease = 2,
      percent = 20
  },
  {
      type = "fire",
      decrease = 0,
      percent = 10
  }
}


local spiderneer1 = table.deepcopy(spiderneer)
spiderneer1.name = "spidertron-engineer-1"
spiderneer1.max_health = 250
spiderneer1.equipment_grid = nil  -- Redone in data-final-fixes
spiderneer1.inventory_size = 0
spiderneer1.guns = {"submachine-gun", "shotgun"}

spiderneer1.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 30
  },
  {
    type = "explosion",
    decrease = 20,
    percent = 30
  },
  {
    type = "acid",
    decrease = 0,
    percent = 40
  },
  {
    type = "fire",
    decrease = 0,
    percent = 30
  }
}


local spiderneer2 = table.deepcopy(spiderneer)
spiderneer2.name = "spidertron-engineer-2"
spiderneer2.max_health = 350
spiderneer2.equipment_grid = "spidertron-engineer-equipment-grid-2"
spiderneer2.inventory_size = 20
spiderneer2.guns = {"submachine-gun", "shotgun", "tank-flamethrower", "rocket-launcher"}

spiderneer2.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 30
  },
  {
    type = "acid",
    decrease = 0,
    percent = 50
  },
  {
    type = "explosion",
    decrease = 30,
    percent = 35
  },
  {
    type = "fire",
    decrease = 0,
    percent = 40
  }
}


local spiderneer3 = table.deepcopy(spiderneer)
spiderneer3.name = "spidertron-engineer-3"
spiderneer3.max_health = 500
spiderneer3.equipment_grid = "spidertron-engineer-equipment-grid-3"
spiderneer3.inventory_size = 30
spiderneer3.guns = {"submachine-gun", "combat-shotgun", "tank-flamethrower", "rocket-launcher", "rocket-launcher"}

spiderneer3.resistances = {
  {
    type = "physical",
    decrease = 8,
    percent = 30
  },
  {
    type = "acid",
    decrease = 0,
    percent = 60
  },
  {
    type = "explosion",
    decrease = 40,
    percent = 40
  },
  {
    type = "fire",
    decrease = 0,
    percent = 60
  }
}

local spiderneer4 = table.deepcopy(spiderneer)
spiderneer4.name = "spidertron-engineer-4"
spiderneer4.max_health = 1000
spiderneer4.equipment_grid = "spidertron-engineer-equipment-grid-4"
spiderneer4.inventory_size = 40
spiderneer4.guns = {"submachine-gun", "combat-shotgun", "tank-flamethrower", "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-3"}

spiderneer4.resistances =  {
  {
    type = "physical",
    decrease = 10,
    percent = 40
  },
  {
    type = "acid",
    decrease = 0,
    percent = 70
  },
  {
    type = "explosion",
    decrease = 60,
    percent = 50
  },
  {
    type = "fire",
    decrease = 0,
    percent = 70
  }
}


local spiderneer5 = table.deepcopy(spiderneer4)
spiderneer5.name = "spidertron-engineer-5"
spiderneer5.max_health = 3000
spiderneer5.equipment_grid = "spidertron-engineer-equipment-grid-5"
spiderneer5.inventory_size = 50
table.insert(spiderneer5.guns, "spidertron-rocket-launcher-4")

local spiderneer6 = table.deepcopy(spiderneer5)
spiderneer6.name = "spidertron-engineer-6"
spiderneer6.max_health = 4000
spiderneer6.equipment_grid = "spidertron-engineer-equipment-grid-6"
spiderneer6.inventory_size = 60

local spiderneer7 = table.deepcopy(spiderneer6)
spiderneer7.name = "spidertron-engineer-7"
spiderneer7.max_health = 4500
spiderneer7.equipment_grid = "spidertron-engineer-equipment-grid-7"
spiderneer7.inventory_size = 70

spiderneer7.resistances =  {
  {
    type = "physical",
    decrease = 10,
    percent = 75
  },
  {
    type = "acid",
    decrease = 0,
    percent = 80
  },
  {
    type = "explosion",
    decrease = 60,
    percent = 75
  },
  {
    type = "fire",
    decrease = 0,
    percent = 90
  }
}

local spiderneer8 = table.deepcopy(spiderneer7)
spiderneer8.name = "spidertron-engineer-8"
spiderneer8.max_health = 5000
spiderneer8.equipment_grid = "spidertron-engineer-equipment-grid-8"
spiderneer8.inventory_size = 80

local spiderneer9 = table.deepcopy(spiderneer8)
spiderneer9.name = "spidertron-engineer-9"
spiderneer9.max_health = 8000
spiderneer9.equipment_grid = "spidertron-engineer-equipment-grid-9"
spiderneer9.inventory_size = 100

spiderneer9.resistances =  {
  {
    type = "physical",
    decrease = 10,
    percent = 80
  },
  {
    type = "acid",
    decrease = 0,
    percent = 90
  },
  {
    type = "explosion",
    decrease = 60,
    percent = 80
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}

-- Created so that there is always a spidertron that can be switched to
local spiderneer9a = table.deepcopy(spiderneer9)
spiderneer9a.name = "spidertron-engineer-9a"


-- Nano emitters cannot actually be used though
if mods["Nanobots"] then
  table.insert(spiderneer1.guns, "gun-nano-emitter")
  table.insert(spiderneer2.guns, "gun-nano-emitter")
  table.insert(spiderneer3.guns, "gun-nano-emitter")
  table.insert(spiderneer4.guns, "gun-nano-emitter")
  table.insert(spiderneer5.guns, "gun-nano-emitter")
  table.insert(spiderneer6.guns, "gun-nano-emitter")
  table.insert(spiderneer7.guns, "gun-nano-emitter")
  table.insert(spiderneer8.guns, "gun-nano-emitter")
  table.insert(spiderneer9.guns, "gun-nano-emitter")
  table.insert(spiderneer9a.guns, "gun-nano-emitter")
end

data:extend{spiderneer0, spiderneer1, spiderneer2, spiderneer3, spiderneer4, spiderneer5, spiderneer6, spiderneer7, spiderneer8, spiderneer9, spiderneer9a}

legs = {generate_legs(spiderneer0, "0"),
        generate_legs(spiderneer1, "1"),
        generate_legs(spiderneer2, "2"),
        generate_legs(spiderneer3, "3"),
        generate_legs(spiderneer4, "4"),
        generate_legs(spiderneer5, "5"),
		generate_legs(spiderneer6, "6"),
		generate_legs(spiderneer7, "7"),
		generate_legs(spiderneer8, "8"),
		generate_legs(spiderneer9, "9"),
        generate_legs(spiderneer9a, "9a")
      }
for i, leg in pairs(legs) do
  data:extend(legs[i])
end

if settings.startup["spidertron-engineer-enable-upgrade-size"].value then
  if settings.startup["spidertron-engineer-enable-upgrade-size-with-scale"].value then
    scale = settings.startup["spidertron-engineer-constant-size-scale"].value
    spidertron_scale{spidertron = spiderneer0, scale = scale * 0.6}
    spidertron_scale{spidertron = spiderneer1, scale = scale * 0.7}
    spidertron_scale{spidertron = spiderneer2, scale = scale * 0.8}
    spidertron_scale{spidertron = spiderneer3, scale = scale * 0.9}
    spidertron_scale{spidertron = spiderneer5, scale = scale * 1.2}
	spidertron_scale{spidertron = spiderneer6, scale = scale * 1.5}
	spidertron_scale{spidertron = spiderneer7, scale = scale * 1.7}
	spidertron_scale{spidertron = spiderneer8, scale = scale * 2.0}
	spidertron_scale{spidertron = spiderneer9, scale = scale * 2.8}
    spidertron_scale{spidertron = spiderneer9a, scale = scale * 2.8}
  else
    spidertron_scale{spidertron = spiderneer0, scale = 0.6}
    spidertron_scale{spidertron = spiderneer1, scale = 0.7}
    spidertron_scale{spidertron = spiderneer2, scale = 0.8}
    spidertron_scale{spidertron = spiderneer3, scale = 0.9}
    spidertron_scale{spidertron = spiderneer5, scale = 1.2}
	spidertron_scale{spidertron = spiderneer6, scale = 1.5}
	spidertron_scale{spidertron = spiderneer7, scale = 1.7}
	spidertron_scale{spidertron = spiderneer8, scale = 2.0}
	spidertron_scale{spidertron = spiderneer9, scale = 2.8}
    spidertron_scale{spidertron = spiderneer9a, scale = 2.8}
  end
else
  scale = settings.startup["spidertron-engineer-constant-size-scale"].value
  spidertron_scale{spidertron = spiderneer0, scale = scale}
  spidertron_scale{spidertron = spiderneer1, scale = scale}
  spidertron_scale{spidertron = spiderneer2, scale = scale}
  spidertron_scale{spidertron = spiderneer3, scale = scale}
  spidertron_scale{spidertron = spiderneer5, scale = scale}
  spidertron_scale{spidertron = spiderneer6, scale = scale}
  spidertron_scale{spidertron = spiderneer7, scale = scale}
  spidertron_scale{spidertron = spiderneer8, scale = scale}
  spidertron_scale{spidertron = spiderneer9, scale = scale}
  spidertron_scale{spidertron = spiderneer9a, scale = scale}
end
-- Create lots of items to allow displaying them in the technology tree
local spiderneer_item = table.deepcopy(data.raw["item-with-entity-data"]["spidertron"])
spiderneer_item.flags = {"hidden"}
spiderneer_item0 = table.deepcopy(spiderneer_item)
spiderneer_item1 = table.deepcopy(spiderneer_item)
spiderneer_item2 = table.deepcopy(spiderneer_item)
spiderneer_item3 = table.deepcopy(spiderneer_item)
spiderneer_item4 = table.deepcopy(spiderneer_item)
spiderneer_item5 = table.deepcopy(spiderneer_item)
spiderneer_item6 = table.deepcopy(spiderneer_item)
spiderneer_item7 = table.deepcopy(spiderneer_item)
spiderneer_item8 = table.deepcopy(spiderneer_item)
spiderneer_item9 = table.deepcopy(spiderneer_item)
spiderneer_item9a = table.deepcopy(spiderneer_item)
spiderneer_item0.name = "spidertron-engineer-0"
spiderneer_item1.name = "spidertron-engineer-1"
spiderneer_item2.name = "spidertron-engineer-2"
spiderneer_item3.name = "spidertron-engineer-3"
spiderneer_item4.name = "spidertron-engineer-4"
spiderneer_item5.name = "spidertron-engineer-5"
spiderneer_item6.name = "spidertron-engineer-6"
spiderneer_item7.name = "spidertron-engineer-7"
spiderneer_item8.name = "spidertron-engineer-8"
spiderneer_item9.name = "spidertron-engineer-9"
spiderneer_item9a.name = "spidertron-engineer-9a"
spiderneer_item0.place_result = "spidertron-engineer-0"
spiderneer_item1.place_result = "spidertron-engineer-1"
spiderneer_item2.place_result = "spidertron-engineer-2"
spiderneer_item3.place_result = "spidertron-engineer-3"
spiderneer_item4.place_result = "spidertron-engineer-4"
spiderneer_item5.place_result = "spidertron-engineer-5"
spiderneer_item6.place_result = "spidertron-engineer-6"
spiderneer_item7.place_result = "spidertron-engineer-7"
spiderneer_item8.place_result = "spidertron-engineer-8"
spiderneer_item9.place_result = "spidertron-engineer-9"
spiderneer_item9a.place_result = "spidertron-engineer-9a"

data:extend{spiderneer_item0, spiderneer_item1, spiderneer_item2, spiderneer_item3, spiderneer_item4, spiderneer_item5, spiderneer_item6, spiderneer_item7, spiderneer_item8, spiderneer_item9, spiderneer_item9a}
