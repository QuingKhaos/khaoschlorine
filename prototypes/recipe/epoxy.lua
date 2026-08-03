local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load {
  type = "recipe",
  name = "epoxy",
  subgroup = "fluid-recipes",
  order = "c[chlorine]-e[epoxy]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 3,
  main_product = "epoxy",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/epoxy.png", icon_size = 64}}
  :set_ingredients {
    {type = "fluid", name = "chlorine", amount = 10},
    {type = "fluid", name = "petroleum-gas", amount = 10},
  }
  :set_results {
    {type = "fluid", name = "epoxy", amount = 10},
    {type = "item", name = "salt", amount = 1},
  }
  :commit()

khaoslib_technology:load("plastics")
  :add_prerequisite("chlorine-processing")
  :add_unlock_recipe("epoxy")
  :commit()
