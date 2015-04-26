#!/usr/bin/lua

local scale=1
if arg and arg[1] then
  scale = arg[1]
end

local prefix=""
if arg and arg[2] then
  prefix = arg[2]
end

local width=1600*scale
local height=1600*scale

-- Main
os.execute("inkscape -z -e "..prefix.."-avatar.png"..
  " -w "..width..
  " -h "..height..
  " "..prefix.."-avatar.svg")
