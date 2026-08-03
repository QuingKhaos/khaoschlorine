local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "pcb-substrate",
  subgroup = "intermediate-product",
  order = "b[circuits]-b1[pcb-substrate]",
  enabled = false,
  allow_productivity = true,
  energy_required = 6,
  main_product = "pcb-substrate",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaoschlorine__/graphics/icons/pcb-substrate.png", icon_size = 64}}
  :set_ingredients {
    {type = "fluid", name = "epoxy", amount = 30},
    {type = "item", name = "plastic-bar", amount = 3},
  }
  :set_results {
    {type = "item", name = "pcb-substrate", amount = 12},
  }
  :add_unlock("advanced-circuit")

if mods["khaossilicon"] then
  recipe:replace_ingredient("plastic-bar", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "silica", amount = 3}
end

recipe:commit()
