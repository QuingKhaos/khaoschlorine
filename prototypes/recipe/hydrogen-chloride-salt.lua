local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "hydrogen-chloride-salt",
  localised_name = {"fluid-name.hydrogen-chloride"},
  subgroup = "fluid-recipes",
  order = "c[chlorine]-c[hydrogen-chloride-salt]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 1,
  main_product = "hydrogen-chloride",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/hydrogen-chloride.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "salt", amount = 1},
    {type = "fluid", name = "water", amount = 5},
    {type = "fluid", name = "sulfuric-acid", amount = 5},
  }
  :set_results {
    {type = "fluid", name = "hydrogen-chloride", amount = 10},
  }
  :commit()
