function hex2rgb(hex)
  hex = hex:gsub("#","")
  return tonumber("0x"..hex:sub(1,2)),
    tonumber("0x"..hex:sub(3,4)),
    tonumber("0x"..hex:sub(5,6))
end

function love.load()

  modes = {"avatar"}

  current_mode = modes[1]

  current_palette = arg[2] or "remix"

  reload_palette()
  reload_title()

end

function love.draw()
  for _,layer in pairs(data[current_mode]) do
    love.graphics.setColor(layer.color)
    love.graphics.draw(layer.img,0,0,0,
      love.graphics.getWidth()/layer.img:getWidth(),
      love.graphics.getHeight()/layer.img:getHeight())
  end
end

function love.keypressed(key)
  if key == "left" then
    reload_title()
  elseif key == "right" then
    reload_title()
  elseif key == "r" then
    reload_palette()
  end
end

function reload_palette()
  package.loaded['palettes'] = nil
  palettes = require 'palettes'

  data = {}
  for _,mode in pairs(modes) do
    data[mode] = {}
    for z,section in pairs({"background","lines_dark","lines_light","body","body_edge"}) do
      assert(palettes[current_palette],
        "Palette `"..tostring(current_palette).."` does not exist.")
      data[mode][z] = {
        img = love.graphics.newImage("_gen_"..section.."-"..mode..".png"),
        color = { hex2rgb(palettes[current_palette].colors[section]) },
      }
    end
  end

  print('palette loaded')
end

function reload_title()
  love.window.setTitle(current_palette.."-"..current_mode)
end
