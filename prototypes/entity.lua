data:extend({

	{
		type = "inserter",
		name = "burner-short-inserter",
		icon = "__short-arms__/graphics/icons/burner-short-inserter.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "burner-short-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		pickup_position = {0, -1},
		insert_position = {0, 1},
		hand_size = 0.5,
		resistances =
		{
		  {
			type = "fire",
			percent = 90
		  }
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		energy_per_movement = 100000,
		energy_per_rotation = 100000,
		energy_source =
		{
		  type = "burner",
		  effectivity = 1,
		  fuel_inventory_size = 1,
		  smoke =
		  {
			{
			  name = "smoke",
			  deviation = {0.1, 0.1},
			  frequency = 9
			}
		  }
		},
		extension_speed = 0.0214,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
		  match_progress_to_activity = true,
		  sound =
		  {
			{
			  filename = "__base__/sound/inserter-basic-1.ogg",
			  volume = 0.75
			},
			{
			  filename = "__base__/sound/inserter-basic-2.ogg",
			  volume = 0.75
			},
			{
			  filename = "__base__/sound/inserter-basic-3.ogg",
			  volume = 0.75
			},
			{
			  filename = "__base__/sound/inserter-basic-4.ogg",
			  volume = 0.75
			},
			{
			  filename = "__base__/sound/inserter-basic-5.ogg",
			  volume = 0.75
			}
		  }
		},
		hand_base_picture =
		{
		  filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-base.png",
		  priority = "extra-high",
		  width = 4,
		  height = 17
		},
		hand_closed_picture =
		{
		  filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-closed.png",
		  priority = "extra-high",
		  width = 9,
		  height = 21
		},
		hand_open_picture =
		{
		  filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-open.png",
		  priority = "extra-high",
		  width = 9,
		  height = 21
		},
		hand_base_shadow =
		{
		  filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-base-shadow.png",
		  priority = "extra-high",
		  width = 4,
		  height = 17
		},
		hand_closed_shadow =
		{
		  filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-closed-shadow.png",
		  priority = "extra-high",
		  width = 9,
		  height = 21
		},
		hand_open_shadow =
		{
		  filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-open-shadow.png",
		  priority = "extra-high",
		  width = 9,
		  height = 21
		},
		platform_picture =
		{
		  sheet =
		  {
			filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-platform.png",
			priority = "extra-high",
			width = 46,
			height = 46,
			shift = {0.09375, 0}
		  }
		},
		rotation_speed = 0.01,
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },
	{
    type = "inserter",
    name = "short-inserter",
    icon = "__short-arms__/graphics/icons/short-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "short-inserter"},
    max_health = 40,
    corpse = "small-remnants",
	hand_size = 0.5,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.03,
    rotation_speed = 0.014,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-basic-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__short-arms__/graphics/entity/short-inserter/short-inserter-hand-base.png",
      priority = "extra-high",
      width = 4,
      height = 16
    },
    hand_closed_picture =
    {
      filename = "__short-arms__/graphics/entity/short-inserter/short-inserter-hand-closed.png",
      priority = "extra-high",
      width = 9,
      height = 21
    },
    hand_open_picture =
    {
      filename = "__short-arms__/graphics/entity/short-inserter/short-inserter-hand-open.png",
      priority = "extra-high",
      width = 9,
      height = 21
    },
    hand_base_shadow =
    {
      filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 4,
      height = 17
    },
    hand_closed_shadow =
    {
      filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 9,
      height = 21
    },
    hand_open_shadow =
    {
      filename = "__short-arms__/graphics/entity/burner-short-inserter/burner-short-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 9,
      height = 21
    },
    pickup_position = {0, -1},
    insert_position = {0, 1},
    platform_picture =
    {
      sheet =
      {
        filename = "__short-arms__/graphics/entity/short-inserter/short-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0}
      }
    },
    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },

})