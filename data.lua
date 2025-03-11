local mythic_quality = table.deepcopy(data.raw["quality"]["legendary"])

data.raw["quality"]["legendary"]["next"] = "mythic"
data.raw["quality"]["legendary"]["next_probability"] = 0.1

mythic_quality['name'] = 'mythic'
mythic_quality['icon'] = '__end-game-mythic-quality__/icon/mythic-quality.png'
mythic_quality['level'] = 7
mythic_quality['beacon_power_usage_multiplier'] = 1/12
mythic_quality['mining_drill_resource_drain_multiplier'] = 1/12
mythic_quality['science_pack_drain_multiplier'] = 1/9
mythic_quality['color'] = {194, 144, 0}
mythic_quality['next_probability'] = 0.1

data.raw["quality"]["mythic"] = mythic_quality

qualingredients = {
	{ "automation-science-pack", 1 },
	{ "logistic-science-pack", 1 },
	{ "chemical-science-pack", 1 },
	{ "production-science-pack", 1 },
	{ "utility-science-pack", 1 },
	{ "space-science-pack", 1 },
}

if mods["space-age"] then
qualingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
		    { "metallurgic-science-pack", 1 },
		    { "electromagnetic-science-pack", 1 },
		    { "agricultural-science-pack", 1 },
		    { "cryogenic-science-pack", 1 },
		    { "promethium-science-pack", 1 },
}
end

data:extend({
  {
    type = "technology",
    name = "mythic-quality",
    icon_size = 256,
    icon = "__end-game-mythic-quality__/icon/mythic-quality-research.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-quality",
        quality = "mythic"
      },
    },
    prerequisites = { "space-science-pack", "legendary-quality" },
    unit =
    {
      count = 10000,
      ingredients = qualingredients,
      time = 60
    }
  }
})