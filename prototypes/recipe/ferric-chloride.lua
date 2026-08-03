local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoschlorine-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "ferric-chloride",
    subgroup = "raw-material",
    order = "b[chemistry]-c1[ferric-chloride]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 3,
    main_product = "ferric-chloride",
  } :set_categories {"chemistry"}
    :set_icons{{icon = "__khaoschlorine__/graphics/icons/ferric-chloride.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "iron-plate", amount = 2},
      {type = "fluid", name = "chlorine", amount = 30},
    }
    :set_results {
      {type = "item", name = "ferric-chloride", amount = 2},
    }
    :commit()
end
