local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoschlorine-salt-patches",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-a[salt-patches]",
} :commit()

khaoslib_setting:load {
  type = "string-setting",
  name = "khaoschlorine-early-salt",
  setting_type = "startup",
  default_value = "assembler",
  allowed_values = {"assembler", "mining", "assembler-mining"},
  order = "a[settings]-b[early-salt]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoschlorine-more",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-c[more]",
} :commit()
