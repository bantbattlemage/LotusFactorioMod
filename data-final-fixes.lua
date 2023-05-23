

data:extend({
	{
    type = "autoplace-control",
    category = "resource",
    name = "deep_oil",
    richness = false,
    frequency = true,
    size = false,
    order = "d-e"
	}
})

--- copy of Aircraft's function to assign sprites, but with a scale property added
local airplaneScale = 1.0 --- default 0.5

local ICONPATH = "__Aircraft__/graphics/icons/"
local ENTITYPATH = "__Aircraft__/graphics/entity/"

local function addcommonanimlines(anim)
  for _,layer in pairs(anim.layers) do
    layer.width, layer.height = 224, 224
    layer.hr_version.width, layer.hr_version.height = 448, 448
    layer.hr_version.scale = airplaneScale
    layer.frame_count, layer.hr_version.frame_count = 1, 1
    layer.direction_count, layer.hr_version.direction_count = 36, 36
    layer.line_length, layer.hr_version.line_length = 6, 6
    layer.max_advance, layer.hr_version.max_advance = 1, 1
  end
  return anim
end

local function airplaneAnimation(name)
  local anim = {}
  anim.layers = {
    {
      filename = ENTITYPATH .. name .. "/" .. name .. "_spritesheet.png",
      shift = util.by_pixel(9, -10),
      hr_version = {
        filename = ENTITYPATH .. name .. "/hr-" .. name .. "_spritesheet.png",
        shift = util.by_pixel(9, -10),
      }
    },
    {
      filename = ENTITYPATH .. name .. "/" .. name .. "_spritesheet-shadow.png",
      shift = util.by_pixel(54, 35),
      draw_as_shadow = true,
      hr_version = {
        filename = ENTITYPATH .. name .. "/hr-" .. name .. "_spritesheet-shadow.png",
        shift = util.by_pixel(54, 35),
        draw_as_shadow = true,
      }
    }
  }
  addcommonanimlines(anim)
  return anim
end


data.raw["car"]["cargo-plane"].animation = airplaneAnimation("cargo_plane")
