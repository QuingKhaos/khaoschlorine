local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "hydrogen-chloride",
  subgroup = "fluid-recipes",
  order = "c[chlorine]-b[hydrogen-chloride]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 10,
  main_product = "hydrogen-chloride",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/hydrogen-chloride.png", icon_size = 64}}
  :set_ingredients {
    {type = "fluid", name = "water", amount = 10},
    {type = "fluid", name = "chlorine", amount = 10},
  }
  :set_results {
    {type = "fluid", name = "hydrogen-chloride", amount = 20},
  }
  :commit()
