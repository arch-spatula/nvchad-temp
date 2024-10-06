-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {
  nvdash = {
    load_on_startup = true,
    header = {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠲⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣀⣠⣤⣄⣀⣠⠔⠚⠉⠀⠀⠙⠒⠤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⢀⣌⠡⠀⣀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠲⢤⣀⡤⢴⡀⠀",
      "⣀⣀⡠⡖⠁⠀⠀⠀⠀⡸⠁⠀⢰⡆⣀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀",
      "⢀⠊⠑⣦⢀⣀⡀⢔⣾⣀⡀⠀⠀⠀⠈⠉⠓⠂⠀⢠⣄⠀⠀⠀⢀⡀⠀⡎⠀⠀",
      "⠻⠠⢀⠈⣶⠒⠒⠉⠀⠀⠈⠉⠑⠒⠲⠤⠤⣀⣀⠀⠀⣀⡤⠞⠁⠀⠀⠙⡄⠀",
      "⢃⠀⠰⢃⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡩⠋⠁⠀⢰⠀⠀⠀⡀⠸⡀",
      "⢸⡀⢑⡒⢚⡿⠃⠀⠀⢀⠤⠶⠭⠦⠤⢐⣈⠉⠉⠑⣒⠆⠒⠁⠳⠤⣄⣠⠞⠓",
      "⠀⠳⢧⣖⡾⠀⠀⠀⠀⢼⡒⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⢄⣠⣊⡤⠞⠉⠀⠀⠀",
      "⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠳⣄⣠⠤⠖⠒⠒⠒⠒⠒⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠜⠀⠀⠀⠀⠀⠀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
  },
  ui = {
    telescope = { style = "bordered" },
    statusline = { separator_style = "round", theme = "minimal" },
  },
}

M.base46 = {
  theme = "catppuccin",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
