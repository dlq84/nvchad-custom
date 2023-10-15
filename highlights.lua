-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
    fg = "#9e9e9e",
  },
  CursorLine = {
    bg = "one_bg",
  },
  CursorLineNr = {
    bg = "one_bg",
  },
  LineNr = {
    fg = { "grey", 25 },
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
