data:extend({ 
  {
    type = "item",
    name = "purple-circuit",
    icon = "__SpidertronEngineer2__/graphics/icons/purple.png",
    icon_size = 64,
	group = "intermediate-products",
    order = "g[purple-circuit]",
    stack_size = 100
  }
})

data:extend({
	{
		type = "recipe",
		enabled = false,
		name = "purple-circuit",
		category = "crafting",
		group = "intermediate-products",
		subgroup = "intermediate-product",
		order = "g[purple-circuit]",
		ingredients = {{"electronic-circuit",2},{"advanced-circuit",2},{"processing-unit",2}},
		result = "purple-circuit"
	}
})

data:extend({ 
  {
    type = "tool",
    name = "spidertron-science-pack",
    icon = "__SpidertronEngineer2__/graphics/icons/science.png",
    icon_size = 32,
	durability = 1,
	group = "intermediate-products",
	subgroup = "science-pack",
    order = "g[spidertron-science-pack]",
    stack_size = 200
  }
})

data:extend({
	{
		type = "recipe",
		enabled = false,
		name = "spidertron-science-pack",
		category = "crafting",
		group = "intermediate-products",
		subgroup = "science-pack",
		order = "g[spidertron-science-pack]",
		ingredients = {{"spidertron",1},{"purple-circuit",1},{"electric-engine-unit",2}},
		result = "spidertron-science-pack"
	}
})