local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("chemical-plant"):remove_unlock("oil-processing"):add_unlock("fluid-handling"):commit()
