local khaoslib_fluid = require("__khaoslib__.prototypes.fluid")

khaoslib_fluid:load {
  type = "fluid",
  name = "hydrogen-chloride",
  subgroup = "fluid",
  order = "a[fluid]-f[chlorine]-a[hydrogen-chloride]",
  default_temperature = 25,
  heat_capacity = "0.1kJ",
  base_color = {r = 0.8, g = 0.9, b = 0.7},
  flow_color = {r = 0.8, g = 1, b = 0.7},
} :set_icons {{icon = "__khaoschlorine__/graphics/icons/hydrogen-chloride.png", icon_size = 64}}
  :commit()
