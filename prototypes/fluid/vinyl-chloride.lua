local khaoslib_fluid = require("__khaoslib__.prototypes.fluid")

if settings.startup["khaoschlorine-more"].value then
  khaoslib_fluid:load {
    type = "fluid",
    name = "vinyl-chloride",
    subgroup = "fluid",
    order = "a[fluid]-f[chlorine]-c[vinyl-chloride]",
    default_temperature = 25,
    heat_capacity = "100J",
    base_color = {r = 0.9, g = 0.9, b = 0.75},
    flow_color = {r = 0.9, g = 1, b = 0.75},
  } :set_icons {{icon = "__khaoschlorine__/graphics/icons/vinyl-chloride.png", icon_size = 64}}
    :commit()
end
