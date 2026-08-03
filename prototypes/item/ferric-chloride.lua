local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaoschlorine-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "ferric-chloride",
    subgroup = "raw-material",
    order = "b[chemistry]-c1[ferric-chloride]",
    stack_size = 100,
  } :set_icons {{icon = "__khaoschlorine__/graphics/icons/ferric-chloride.png", icon_size = 64}}
    :commit()
end
