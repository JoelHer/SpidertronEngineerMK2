-- MK 1 & 2 (indices 0 & 1) do not have equipment grids
if settings.startup["custom-grid-size"].value then
    grid2 = settings.startup["spidertron-grid-2"].value
	grid3 = settings.startup["spidertron-grid-3"].value
	grid4 = settings.startup["spidertron-grid-4"].value
	grid5 = settings.startup["spidertron-grid-5"].value
	grid6 = settings.startup["spidertron-grid-6"].value
	grid7 = settings.startup["spidertron-grid-7"].value
	grid8 = settings.startup["spidertron-grid-8"].value
	grid9 = settings.startup["spidertron-grid-9"].value
else
	grid2 = 7
	grid3 = 10
	grid4 = 12
	grid5 = 14
	grid6 = 18
	grid7 = 20
	grid8 = 30
	grid9 = 50
end
local equipment_grid2 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid2.name = "spidertron-engineer-equipment-grid-2"
equipment_grid2.width = grid2
equipment_grid2.height = grid2

local equipment_grid3 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid3.name = "spidertron-engineer-equipment-grid-3"
equipment_grid3.width = grid3
equipment_grid3.height = grid3

local equipment_grid4 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid4.name = "spidertron-engineer-equipment-grid-4"
equipment_grid4.width = grid4
equipment_grid4.height = grid4

local equipment_grid5 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid5.name = "spidertron-engineer-equipment-grid-5"
equipment_grid5.width = grid5
equipment_grid5.height = grid5

local equipment_grid6 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid6.name = "spidertron-engineer-equipment-grid-6"
equipment_grid6.width = grid6
equipment_grid6.height = grid6

local equipment_grid7 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid7.name = "spidertron-engineer-equipment-grid-7"
equipment_grid7.width = grid7
equipment_grid7.height = grid7

local equipment_grid8 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid8.name = "spidertron-engineer-equipment-grid-8"
equipment_grid8.width = grid8
equipment_grid8.height = grid8

local equipment_grid9 = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])
equipment_grid9.name = "spidertron-engineer-equipment-grid-9"
equipment_grid9.width = grid9
equipment_grid9.height = grid9
-- In vanilla this is just "armor"
local grid_categories = equipment_grid2.equipment_categories

if mods["bobvehicleequipment"] then
    table.insert(grid_categories, "spidertron")
    table.insert(grid_categories, "vehicle")
    table.insert(grid_categories, "armoured-vehicle")
end

if mods["Krastorio2"] then
    table.insert(grid_categories, "universal-equipment")
    table.insert(grid_categories, "vehicle-equipment")
    table.insert(grid_categories, "vehicle-motor")
    table.insert(grid_categories, "spidertron-only")
    table.insert(grid_categories, "robot-interaction-equipment")
    table.insert(grid_categories, "vehicle-robot-interaction-equipment")
end

if mods["vtk-armor-plating"] then
    table.insert(grid_categories, "vtk-armor-plating")
end

equipment_grid2.equipment_categories = grid_categories
equipment_grid3.equipment_categories = grid_categories
equipment_grid4.equipment_categories = grid_categories
equipment_grid5.equipment_categories = grid_categories
equipment_grid6.equipment_categories = grid_categories
equipment_grid7.equipment_categories = grid_categories
equipment_grid8.equipment_categories = grid_categories
equipment_grid9.equipment_categories = grid_categories

data:extend{equipment_grid2, equipment_grid3, equipment_grid4, equipment_grid5, equipment_grid6, equipment_grid7, equipment_grid8, equipment_grid9}