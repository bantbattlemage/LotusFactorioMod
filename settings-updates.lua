data.raw["int-setting"]["rso-region-size"].default_value = 16
data.raw["double-setting"]["rso-starting-richness-mult"].default_value = 2
data.raw["bool-setting"]["rso-oil-in-start-area"].default_value = false
data.raw["double-setting"]["rso-global-richness-mult"].default_value = 0.25
data.raw["double-setting"]["rso-resource-chance"].default_value = 0.5
data.raw["string-setting"]["oil_richness"].default_value = "very-good"
data.raw["bool-setting"]["start-with-random-color"].default_value = true
data.raw["bool-setting"]["aai-remove-ai-on-mine"].default_value = true

if(data.raw["bool-setting"]["aai-fuel-processor"]) then
	data.raw["bool-setting"]["aai-fuel-processor"].default_value = false
end