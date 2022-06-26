
-- Mil 1 gives heavy-armor, MG, Shotgun
table.insert(data.raw.technology["military"].effects, 1, {
  type = "give-item",
  item = "spidertron-engineer-1"
})


-- Mil 2 gives modular-armor, rocket launcher, flamethrower
table.insert(data.raw.technology["military-2"].effects, 1, {
  type = "give-item",
  item = "spidertron-engineer-2"
})

add_prerequisites("military-2", {"advanced-electronics"})
add_prerequisites("rocketry", {"military-2"})
add_prerequisites("flamethrower", {"military-2"})


-- Power Armor gives power-armor, combat-shotgun, second rocket slot
table.insert(data.raw.technology["power-armor"].effects, 1, {
  type = "give-item",
  item = "spidertron-engineer-3"
})
--add_prerequisites("power-armor", {"military-2"})


-- Power Armor 2 gives power-armor-mk2, 3rd rocket slot
table.insert(data.raw.technology["power-armor-mk2"].effects, 1, {
  type = "give-item",
  item = "spidertron-engineer-4"
})

-- Spidertron gives MK6
table.insert(data.raw.technology["spidertron"].effects, 1,{
  type = "give-item",
  item = "spidertron-engineer-5"
})
add_prerequisites("spidertron", {"power-armor-mk2"})

--technology-custom
data:extend({
{
  type = "technology",
  name = "spidertron-mk7",
  icon_size = 256,
  icon_mipmaps = 4,
  icon = "__base__/graphics/technology/spidertron.png",
  effects =
  {
    {
      type = "give-item",
      item = "spidertron-engineer-6"
    }
  },
  unit =
  {
    count = 2100,
    ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}},
    time = 30
  },
  order = "c-b"
  }
})
add_prerequisites("spidertron-mk7", {"spidertron"})

data:extend({
{
  type = "technology",
  name = "spidertron-mk8",
  icon_size = 256,
  icon_mipmaps = 4,
  icon = "__base__/graphics/technology/spidertron.png",
  effects =
  {
    {
      type = "give-item",
      item = "spidertron-engineer-7"
    }
  },
  unit =
  {
    count = 2100,
    ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}},
    time = 30
  },
  order = "c-c"
  }
})
add_prerequisites("spidertron-mk8", {"spidertron-mk7"})

data:extend({
  {
    type = "technology",
    name = "spidertron-science",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__SpidertronEngineer2__/graphics/icons/science2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "spidertron-science-pack"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          },
      time = 15
    },
    order = "c-a"
  }
})
add_prerequisites("spidertron-science", {"spidertron-mk8"})

data:extend({
{
  type = "technology",
  name = "spidertron-mk9",
  icon_size = 256,
  icon_mipmaps = 4,
  icon = "__base__/graphics/technology/spidertron.png",
  effects =
  {
    {
      type = "give-item",
      item = "spidertron-engineer-8"
    }
  },
  unit =
  {
    count = 2100,
    ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"spidertron-science-pack", 1}
		},
    time = 30
  },
  order = "c-d"
  }
})
add_prerequisites("spidertron-mk9", {"spidertron-science"})

data:extend({
{
  type = "technology",
  name = "spidertron-mk10",
  icon_size = 256,
  icon_mipmaps = 4,
  icon = "__base__/graphics/technology/spidertron.png",
  effects =
  {
    {
      type = "give-item",
      item = "spidertron-engineer-9"
    }
  },
  unit =
  {
    count = 2100,
    ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"spidertron-science-pack", 1},
		{"space-science-pack", 1}
		},
    time = 30
  },
  order = "c-e"
  }
})
add_prerequisites("spidertron-mk10", {"spidertron-mk9"})


