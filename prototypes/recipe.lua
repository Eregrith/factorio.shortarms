data:extend({
	
	{
		type = "recipe",
		name = "burner-short-inserter",
		ingredients = {{"iron-plate", 1}, {"iron-gear-wheel", 1}},
		result = "burner-short-inserter",
		requester_paste_multiplier = 4
	},
	{
		type = "recipe",
		name = "short-inserter",
		ingredients = {{"electronic-circuit", 1}, {"iron-plate", 1}, {"iron-gear-wheel", 1}},
		result = "short-inserter",
		requester_paste_multiplier = 4
	},
    {
   	    type = "recipe",
   	    name = "fast-short-inserter",
   	    enabled = false,
   	    ingredients =
   	    {
   	      {"electronic-circuit", 2},
   	      {"iron-plate", 2},
   	      {"short-inserter", 1}
   	    },
   	    result = "fast-short-inserter",
   	    requester_paste_multiplier = 4
    },
	
})