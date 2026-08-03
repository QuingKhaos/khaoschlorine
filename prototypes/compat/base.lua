local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("chemical-plant"):remove_unlock("oil-processing"):add_unlock("fluid-handling"):commit()

local advanced_circuit = khaoslib_recipe:load("advanced-circuit")
local advanced_circuit_amount = advanced_circuit:get_result("advanced-circuit") --[[@cast -?]].amount --[[@as integer]]
advanced_circuit:add_ingredient {type = "item", name = "pcb", amount = advanced_circuit_amount}
  :remove_ingredient("plastic-bar")
  :replace_ingredient("copper-cable", function(ingredient) ingredient.amount = advanced_circuit_amount return ingredient end)
  :set {energy_required = advanced_circuit_amount * 2}
  :commit()

if settings.startup["khaoschlorine-more"].value then
  khaoslib_recipe:load("accumulator")
    :add_ingredient {type = "item", name = "ferric-chloride", amount = 2}
    :replace_ingredient("battery", function(ingredient) ingredient.amount = 8 return ingredient end)
    :replace_result("accumulator", function(result) result.amount = 2 return result end)
    :commit()
end

if khaoslib_recipe.has_ingredient("shotgun-shell", "stone") then
  khaoslib_recipe:load("shotgun-shell")
    :replace_ingredient("stone", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "salt", amount = 1}
    :commit()
end

khaoslib_recipe:load("pumpjack"):add_ingredient {type = "item", name = "salt", amount = 10} :commit()
khaoslib_recipe:load("uranium-processing"):add_ingredient {type = "item", name = "salt", amount = 1} :commit()

if mods["khaosfoundry"] then
  khaoslib_recipe:load("steel-plate")
    :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "salt", amount = 1}
    :commit()
end

khaoslib_recipe:load("plastic-bar"):replace_ingredient("petroleum-gas", {type = "fluid", name = "vinyl-chloride", amount = khaoslib_recipe.get_ingredient("plastic-bar", "petroleum-gas").amount * 2/3}):commit()
