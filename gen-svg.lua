#!/usr/bin/lua

palettes = require("palettes")

function string.ends(String,End)
  return End=='' or string.sub(String,-string.len(End))==End
end

-- Default opacity parameters
for pi,pv in pairs(palettes) do
  for ci,cv in pairs(pv.colors) do
    if not string.ends(ci,"_opacity") then
      pv.colors[ci.."_opacity"] = pv.colors[ci.."_opacity"] or 1
    end
  end
end

reverse = arg[2] == "reverse"
if arg and arg[1] and palettes[arg[1]] then
  palette_name = arg[1]
else
  print("Invalid palette. Please choose one of the following:")
    print("\t[name]\t\t[note]")
  for i,v in pairs(palettes) do
    print("\t"..i.."\t\t"..v.note)
  end
  print("")
  print("Use `"..arg[0].." [palette] reverse` to reverse the colors from svg to src")
  return
end

for _,v in pairs({"avatar","avatar-classic"}) do

  if reverse then
    print("rendering palette `"..palette_name.."` in reverse.")
    os.execute("cp "..palette_name.."-"..v..".svg "..v..".src")
    for name,color in pairs(palettes[palette_name].colors) do
      os.execute("sed -i 's/"..color.."/%%"..name.."%%/' "..v..".src")
    end
  else
    print("rendering palette `"..palette_name.."`")
    os.execute("cp "..v..".src "..palette_name.."-"..v..".svg")
    for name,color in pairs(palettes[palette_name].colors) do
      os.execute("sed -i 's/%%"..name.."%%/"..color.."/' "..palette_name.."-"..v..".svg")
    end
  end

end
