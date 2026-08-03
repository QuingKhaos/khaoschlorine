local khaoslib_entity = require("__khaoslib__.prototypes.entity")

require("__khaoschlorine__.prototypes.map-gen-preset-updates")

if settings.startup["khaoschlorine-early-salt"].value --[[@as string]]:match("assembler") then
  khaoslib_entity:load("assembling-machine", "assembling-machine-1")
    :set {crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"}}
    :set {fluid_boxes = khaoslib_entity.get("assembling-machine", "assembling-machine-2") --[[@as data.CraftingMachinePrototype]].fluid_boxes}
    :commit()
end
