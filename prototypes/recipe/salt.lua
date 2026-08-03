local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "salt",
  localised_name = {"entity-name.salt"},
  subgroup = "raw-resource",
  order = "d1[salt]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 2,
  main_product = "salt",
} :set_categories {"crafting-with-fluid"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/salt.png", icon_size = 64}}
  :set_ingredients {
    {type = "fluid", name = "water", amount = 100},
  }
  :set_results {
    {type = "item", name = "salt", amount = 1},
  }
  :add_unlock("automation")
  :commit()
