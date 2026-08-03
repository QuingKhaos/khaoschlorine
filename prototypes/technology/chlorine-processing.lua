local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "chlorine-processing",
  order = "b-b",
  ignore_tech_cost_multiplier = true,
} :set_icons {{icon = "__khaoschlorine__/graphics/technology/chlorine-processing.png", icon_size = 256, tint = {1, 1, 1, 0.75}}}
  :set_prerequisites {"fluid-handling"}
  :set_unit {
    time = 30,
    count = 70,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("chlorine")
  :add_unlock_recipe("hydrogen-chloride")
  :add_unlock_recipe("hydrogen-chloride-salt")
  :commit()
