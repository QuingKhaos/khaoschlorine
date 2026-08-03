local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "salt",
  localised_name = {"entity-name.salt"},
  subgroup = "raw-resource",
  order = "d1[salt]",
  stack_size = 50,
  weight = 20 * kg,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaoschlorine__/graphics/icons/salt.png", size = 64, scale = 0.5},
    {filename = "__khaoschlorine__/graphics/icons/salt-1.png", size = 64, scale = 0.5},
    {filename = "__khaoschlorine__/graphics/icons/salt-2.png", size = 64, scale = 0.5},
    {filename = "__khaoschlorine__/graphics/icons/salt-3.png", size = 64, scale = 0.5},
    {filename = "__khaoschlorine__/graphics/icons/salt-4.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaoschlorine__/graphics/icons/salt.png", icon_size = 64}}
  :commit()
