-- data-final-fixes.lua
local config = require("tables")
local settings = settings.startup
local depleted_weight_factor = settings["setting-depleted-weight-factor"].value

for _, cell in ipairs(config.cells) do
    if data.raw["item"][cell.id] then
        data.raw["item"][cell.id].weight = settings["setting-weight-" .. cell.id].value * 1000
        data.raw["item"][cell.id].fuel_value = tostring(settings["setting-capacity-" .. cell.id].value) .. "GJ"
		if data.raw["item"]["depleted-" .. cell.id] then
			data.raw["item"]["depleted-" .. cell.id].weight = settings["setting-weight-" .. cell.id].value * depleted_weight_factor * 1000
		end		
	end
end

-- Apply adjustments for reactors
for _, reactor in ipairs(config.reactors) do
    local neighbor_bonus_setting_name = "setting-neighbor-bonus-" .. reactor.id
    if data.raw["reactor"][reactor.id] then
        data.raw["reactor"][reactor.id].neighbour_bonus = settings[neighbor_bonus_setting_name].value / 100
    end
end
