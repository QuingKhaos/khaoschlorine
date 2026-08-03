local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "pcb",
  subgroup = "intermediate-product",
  order = "b[circuits]-b2[pcb]",
  stack_size = 200,
} :set_icons {{icon = "__khaoschlorine__/graphics/icons/pcb.png", icon_size = 64}}
  :commit()
