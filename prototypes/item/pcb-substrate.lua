local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "pcb-substrate",
  subgroup = "intermediate-product",
  order = "b[circuits]-b1[pcb-substrate]",
  stack_size = 200,
} :set_icons {{icon = "__khaoschlorine__/graphics/icons/pcb-substrate.png", icon_size = 64}}
  :commit()
