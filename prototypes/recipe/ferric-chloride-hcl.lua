local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoschlorine-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "ferric-chloride-hcl",
    localised_name = {"item-name.ferric-chloride"},
    subgroup = "raw-material",
    order = "b[chemistry]-c2[ferric-chloride-hcl]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 3,
    main_product = "ferric-chloride",
  } :set_categories {"chemistry"}
    :set_icons{
      {icon = "__khaoschlorine__/graphics/icons/ferric-chloride.png", icon_size = 64},
      {icon = "__khaoschlorine__/graphics/icons/hydrogen-chloride.png", icon_size = 64, scale = 0.25, shift = {8, -8}},
    }
    :set_ingredients {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "fluid", name = "hydrogen-chloride", amount = 120},
    }
    :set_results {
      {type = "item", name = "ferric-chloride", amount = 4},
    }
    :commit()
end
