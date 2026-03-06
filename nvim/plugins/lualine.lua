-- return {
--   {
--     "nvim-lualine/lualine.nvim",
--     opts = function(_, opts)
--       local palette = require("brians-theme")

--       local function mode_color(bg)
--         return {
--           a = { fg = palette.bg_main, bg = bg, gui = "bold" },
--           b = { fg = palette.fg_main, bg = palette.white },
--           c = { fg = palette.fg_main, bg = palette.bg_main },
--         }
--       end

--       opts.options.theme = {
--         normal = mode_color(palette.base_pink),
--         insert = mode_color(palette.cyan),
--         visual = mode_color(palette.green),
--         replace = mode_color(palette.red),
--         command = mode_color(palette.yellow),
--         terminal = mode_color(palette.purple),
--       }

--       return opts
--     end,
--   },
-- }

-- return {
--   {
--     "nvim-lualine/lualine.nvim",
--     opts = function(_, opts)
--       local palette = require("brians-theme")
--       local theme = require("lualine.themes.gruvbox")

--       theme.normal.a.bg  = palette.base_pink
--       -- theme.insert.a.bg  = palette.cyan
--       -- theme.visual.a.bg  = palette.green
--       -- theme.replace.a.bg = palette.red
--       -- theme.command.a.bg = palette.yellow
--       -- theme.terminal.a.bg = palette.purple

--       opts.options.theme = theme

--       return opts
--     end,
--   },
-- }

-- return {
--   {
--     "nvim-lualine/lualine.nvim",
--     opts = {
--       options = {
--         theme = function()
--           local palette = require("brians-theme")

--           local function mode(bg)
--             return {
--               a = { fg = palette.bg_main, bg = bg, gui = "bold" },
--               b = { fg = palette.fg_main, bg = palette.bg_secondary },
--               c = { fg = palette.fg_main, bg = palette.bg_main },
--             }
--           end

--           return {
--             normal   = mode(palette.base_pink),
--             insert   = mode(palette.cyan),
--             visual   = mode(palette.green),
--             replace  = mode(palette.red),
--             command  = mode(palette.yellow),
--             terminal = mode(palette.purple),
--             inactive = mode(palette.bg_secondary),
--           }
--         end,
--       },
--     },
--   },
-- }

local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#F2A2D6',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}
return {
  normal = {
    a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
  insert = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.white},
    c = {bg = colors.lightgray, fg = colors.white}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.white},
    c = {bg = colors.inactivegray, fg = colors.black}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.white},
    c = {bg = colors.black, fg = colors.white}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.white},
    c = {bg = colors.inactivegray, fg = colors.black}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.gray},
    c = {bg = colors.darkgray, fg = colors.gray}
  }
}
require('lualine').setup {options = {theme = gruvbox}}
