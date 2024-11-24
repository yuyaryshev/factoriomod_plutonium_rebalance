-- tables.lua
return {
    cells = {
        {
            id = "uranium-fuel-cell",
            default_weight = 4.0,
            default_capacity = 10.0,
        },	
        {
            id = "plutonium-fuel-cell",
            default_weight = 4.0,
            default_capacity = 50.0,
        },
        {
            id = "MOX-fuel-cell",
            default_weight = 4.0,
            default_capacity = 7.0,
        },
        {
            id = "breeder-fuel-cell",
            default_weight = 4.0,
            default_capacity = 15.0,
        },
        {
            id = "fusion-power-cell",
            default_weight = 4.0,
            default_capacity = 500.0,
        },
    },
    reactors = {		
		{
			id = "nuclear-reactor",
			default_neighbor_bonus = 100.0,
        },
		{
			id = "MOX-reactor",
			default_neighbor_bonus = 100.0,
        },
        {
            id = "MOX-reactor",
            default_neighbor_bonus = 100.0,
        },
        {
            id = "breeder-reactor",
            default_neighbor_bonus = 100.0,
        },
    },
}
