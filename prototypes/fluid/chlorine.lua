local khaoslib_fluid = require("__khaoslib__.prototypes.fluid")

khaoslib_fluid:load {
  type = "fluid",
  name = "chlorine",
  subgroup = "fluid",
  order = "a[fluid]-f[chlorine]-a[chlorine]",
  default_temperature = 25,
  heat_capacity = "100J",
  base_color = {r = 0.6, g = 0.9, b = 0.5},
  flow_color = {r = 0.6, g = 1, b = 0.5},
} :set_icons {{icon = "__khaoschlorine__/graphics/icons/chlorine.png", icon_size = 64}}
  :commit()
