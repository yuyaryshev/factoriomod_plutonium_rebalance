-- settings.lua
local config = require("tables")

local settings = {}

-- Generate depleted weight factor setting
table.insert(settings, {
    type = "double-setting",
    name = "setting-depleted-weight-factor",
    setting_type = "startup",
    default_value = 0.5,
    minimum_value = 0.1,
    maximum_value = 1.0,
})

-- Generate weight settings
for _, cell in ipairs(config.cells) do
    table.insert(settings, {
        type = "double-setting",
        name = "setting-weight-" .. cell.id,
        setting_type = "startup",
        default_value = cell.default_weight,
        minimum_value = 1.0,
        maximum_value = 1000.0,
    })
end

-- Generate energy capacity settings
for _, cell in ipairs(config.cells) do
    table.insert(settings, {
        type = "double-setting",
        name = "setting-capacity-" .. cell.id,
        setting_type = "startup",
        default_value = cell.default_capacity,
        minimum_value = 0.1,
        maximum_value = 10000.0,
    })
end

-- Generate neighbor bonus settings
for _, reactor in ipairs(config.reactors) do
    table.insert(settings, {
        type = "double-setting",
        name = "setting-neighbor-bonus-" .. reactor.id,
        setting_type = "startup",
        default_value = reactor.default_neighbor_bonus,
        minimum_value = 0.0,
        maximum_value = 100.0,
    })
end

data:extend(settings)
