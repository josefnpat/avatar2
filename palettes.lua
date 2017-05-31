local palettes = {
  remix = {
    note = "Romance Bloody Romance: Remixes & B-Sides",
    colors = {
      body        = "#f3b390",
      body_edge   = "#262b31",
      background  = "#5fbfde",
      lines_dark  = "#e94496",
      lines_light = "#f1cce0",
    }
  },
  love = {
    note = "LÖVE",
    colors = {
      body        = "#AAE2F9",
      body_edge   = "#23A3D7",
      background  = "#E0F4FC",
      lines_dark  = "#EB2D6F",
      lines_light = "#F08CBA",
    }
  },
  lp = {
    note = "You're a Woman, I'm a Machine",
    colors = {
      body        = "#ffffff",
      body_edge   = "#000000",
      background  = "#f0a4be",
      lines_dark  = "#f0a4be",
      lines_light = "#f0a4be",
    }
  },
  ep = {
    note = "Heads Up",
    colors = {
      body        = "#ffffff",
      body_edge   = "#000000",
      background  = "#ef8812",
      lines_dark  = "#ef8812",
      lines_light = "#ef8812",
    }
  },
  single2 = {
    note = "Blood on Our Hands",
    colors = {
      body        = "#ffffff",
      body_edge   = "#190E09",
      background  = "#bb241d",
      lines_dark  = "#bb241d",
      lines_light = "#bb241d",
    }
  },
  single3 = {
    note = "Black History Month",
    colors = {
      body        = "#ffffff",
      body_edge   = "#383838",
      background  = "#383838",
      lines_dark  = "#383838",
      lines_light = "#383838",
    }
  },
  physicalworld = {
    note = "The Physical World",
    colors = {
      body        = "#F9F2E0",
      body_edge   = "#010101",
      background  = "#CCBFAF",
      lines_dark  = "#CCBFAF",
      lines_light = "#CCBFAF",
    }
  },
  physicalworldlogo = {
    note = "The Physical World",
    colors = {
      body        = "#F9F2E0",
      body_edge   = "#010101",
      background  = "#010101",
      lines_dark  = "#010101",
      lines_light = "#010101",
    }
  },
  trainwreck1979 = {
    note = "Trainwreck 1979",
    colors = {
      body        = "#FC4C56",
      body_edge   = "#090002",
      background  = "#FC4C56",
      lines_dark  = "#FC4C56",
      lines_light = "#FC4C56",
    }
  },
  governmenttrash = {
    note = "Government Trash",
    colors = {
      body        = "#F6F6EE",
      body_edge   = "#0C0C0C",
      background  = "#F6F6EE",
      lines_dark  = "#F6F6EE",
      lines_light = "#F6F6EE",
    }
  },
  dmg_default = {
    note = "DMG-01 Default",
    colors = {
      body         = "#9BBC0F",
      body_edge    = "#0F380F",
      background   = "#9BBC0F",
      lines_dark   = "#8BAC0F",
      lines_light  = "#306230",
    }
  },
  dmg_pocket = {
    note = "MGB-001 Default",
    colors = {
      body         = "#E3E6C9",
      body_edge    = "#6C6C4E",
      background   = "#E3E6C9",
      lines_dark   = "#8E8B57",
      lines_light  = "#C3C4A5",
    }
  },
  nes = {
    note = "Famicom/NES",
    colors = {
      body        = "#F0D0B0",
      body_edge   = "#004058",
      background  = "#A4E4FC",
      lines_dark  = "#F85898",
      lines_light = "#F8B8F8",
    }
  },
  zx_spectrum = {
    note = "ZX Spectrum",
    colors = {
      body        = "#FFFFFF",
      body_edge   = "#000000",
      background  = "#00FFFF",
      lines_dark  = "#FF00FF",
      lines_light = "#f1cce0",
    }
  },
  cga4m4hi = {
    note = "CGA 4-color Mode 4 palette #1 low intensity",
    colors = {
      body        = "#FF55FF",
      body_edge   = "#000000",
      background  = "#FFFFFF",
      lines_dark  = "#FF55FF",
      lines_light = "#55FFFF",
    }
  },
  pikachu = {
    note = "Pikachu",
    colors = {
      body        = "#FBCD3C",
      body_edge   = "#323232",
      background  = "#FBCD3C",
      lines_dark  = "#802527",
      lines_light = "#DD666A",
    }
  },
  halloween = {
    note = "Halloween",
    colors = {
      body        = "#FFDF00",
      body_edge   = "#1A1506",
      background  = "#000000",
      lines_dark  = "#DB7001",
      lines_light = "#FFB700",
    }
  },
  xmas = {
    note = "X-Mas",
    colors = {
      body        = "#FFFFFF",
      body_edge   = "#DE0003",
      background  = "#2AB800",
      lines_dark  = "#FFFFFF",
      lines_light = "#FF9600",
    }
  },
  givepulse = {
    note = "GivePulse",
    colors = {
      body = "#FFFFFF",
      body_edge = "#212121",
      background = "#212121",
      lines_dark = "#489def",
      lines_light = "#00d8ca",
    }
  },
  pico8 = {
    note = "Pico8",
    colors = {
      body = "#ffccaa",
      body_edge = "#000000",
      background = "#29adff",
      lines_dark = "#ff004d",
      lines_light = "#ff77a8",
    }
  },
  mss = {
    note = "Missing Sentinel Software",
    colors = {
      body        = "#FFFFFF",
      body_edge   = "#000000",
      background  = "#000000",
      lines_dark  = "#52429D",
      lines_light = "#52429D",
    }
  },
  ac = {
    note = "Certain Affinity",
    colors = {
      body        = "#FFFFFF",
      body_edge   = "#000000",
      background  = "#000000",
      lines_dark  = "#ee1b24",
      lines_light = "#ee1b24",
    }
  },
}

for _,section in pairs({"body","body_edge","background","lines_dark","lines_light"}) do
  local temp = {
    note = "_gen for "..section,
    colors = {
      body        = "#ffffff",
      body_opacity = 0,
      body_edge   = "#ffffff",
      body_edge_opacity = 0,
      background  = "#ffffff",
      background_opacity = 0,
      lines_dark  = "#ffffff",
      lines_dark_opacity = 0,
      lines_light = "#ffffff",
      lines_light_opacity = 0,
    }
  }
  temp.colors[section.."_opacity"] = nil

  palettes["_gen_"..section] = temp

end

return palettes
