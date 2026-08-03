local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "pcb",
  subgroup = "intermediate-product",
  order = "b[circuits]-b2[pcb]",
  enabled = false,
  allow_productivity = true,
  energy_required = 8,
  main_product = "pcb",
} :set_categories {"crafting-with-fluid"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/pcb.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "pcb-substrate", amount = 4},
    {type = "item", name = "copper-plate", amount = 1},
  }
  :set_results {
    {type = "item", name = "pcb", amount = 4},
  }
  :add_unlock("advanced-circuit")

if settings.startup["khaoschlorine-more"].value then
  recipe:add_ingredient {type = "item", name = "ferric-chloride", amount = 2}
    :add_ingredient {type = "fluid", name = "water", amount = 20}
else
  recipe:add_ingredient {type = "fluid", name = "hydrogen-chloride", amount = 30}
end

recipe:commit()
