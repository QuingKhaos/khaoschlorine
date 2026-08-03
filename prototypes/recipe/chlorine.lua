local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "chlorine",
  subgroup = "fluid-recipes",
  order = "c[chlorine]-a[chlorine]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "chlorine",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/chlorine.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "salt", amount = 2},
  }
  :set_results {
    {type = "fluid", name = "chlorine", amount = 10},
  }
  :commit()
