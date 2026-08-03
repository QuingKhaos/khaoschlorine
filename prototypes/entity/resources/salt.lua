require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

if settings.startup["khaoschlorine-salt-patches"].value then
  data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
    autoplace_controls = {
      ["salt"] = {},
    },
    autoplace_settings = {
      entity = {
        settings = {
          ["salt"] = {},
        },
      },
    },
  }}

  resource_autoplace.initialize_patch_set("salt", true)

  data:extend {
    {
      type = "autoplace-control",
      name = "salt",
      localised_name = {"", "[entity=salt] ", {"entity-name.salt"}},
      category = "resource",
      order = "a-c1",
      richness = true,
    },
  }

  khaoslib_entity:load {
    type = "resource",
    name = "salt",
    flags = {"placeable-neutral"},
    order = "a-b-b",

    map_color = {r = 0.92, g = 1, b = 0.93},
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    tree_removal_probability = 1,
    tree_removal_max_distance = 32 * 32,

    factoriopedia_simulation = {
      init = make_resource("salt"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "salt",
      order = "b",
      base_density = 3,
      base_spots_per_km2 = 2,
      has_starting_area_placement = settings.startup["khaoschlorine-early-salt"].value --[[@as string]]:match("mining") ~= nil,
      regular_rq_factor_multiplier = 2.0,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaoschlorine__/graphics/entity/salt/salt.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
  } :set_icons {{icon = "__khaoschlorine__/graphics/icons/salt.png", icon_size = 64}}
    :set_minable {
      hardness = 1,
      mining_time = 0.5,
      mining_particle = "stone-particle",
      result = "salt"
    }
    :commit()
end
