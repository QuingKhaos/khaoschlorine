local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoschlorine-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "vinyl-chloride",
    subgroup = "fluid-recipes",
    order = "c[chlorine]-d[vinyl-chloride]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 3,
    main_product = "vinyl-chloride",
  } :set_categories {"chemistry"}
    :set_icons{{icon = "__khaoschlorine__/graphics/icons/vinyl-chloride.png", icon_size = 64}}
    :set_ingredients {
      {type = "fluid", name = "chlorine", amount = 10},
      {type = "fluid", name = "petroleum-gas", amount = 20},
    }
    :set_results {
      {type = "fluid", name = "vinyl-chloride", amount = 20},
    }
    :add_unlock("plastics")
    :commit()
end
