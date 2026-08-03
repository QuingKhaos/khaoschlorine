local khaoslib_fluid = require("__khaoslib__.prototypes.fluid")

khaoslib_fluid:load {
  type = "fluid",
  name = "epoxy",
  subgroup = "fluid",
  order = "a[fluid]-f[chlorine]-d[epoxy]",
  default_temperature = 25,
  heat_capacity = "100J",
  base_color = {r = 0.9, g = 0.95, b = 0.9},
  flow_color = {r = 0.9, g = 1, b = 0.9},
} :set_icons {{icon = "__khaoschlorine__/graphics/icons/epoxy.png", icon_size = 64}}
  :commit()
