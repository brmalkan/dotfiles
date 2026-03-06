  local palette = require("brians-theme").colors

return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      on_highlights = function(hl, c)
        -- syntax
        hl.Keyword = { fg = palette.purple }
        hl.Function = { fg = palette.light_blue }
        hl.String = { fg = palette.green }
        hl.Comment = { fg = palette.fg_faded, italic = true }

        hl["@function"] = { fg = palette.light_blue }

        hl["@keyword"] = { fg = palette.purple }
        hl["@keyword.import"] = { fg = palette.dark_blue }
        hl["@keyword.function"] = { fg = palette.dark_blue }
        hl["@keyword.return"] = { fg = palette.dark_blue }
        hl["@keyword.operator"] = { fg = palette.dark_blue }
        hl["@keyword.conditional"] = { fg = palette.dark_blue }
        hl["@keyword.repeat"] = { fg = palette.dark_blue }
        hl["@keyword.exception"] = { fg = palette.dark_blue }
        hl["@keyword.type"] = { fg = palette.dark_blue }
        hl["@constant.builtin"] = { fg = palette.dark_blue }
        hl["@boolean"] = { fg = palette.dark_blue }

        hl["@string"] = { fg = palette.green }

        hl["@variable"] = { fg = palette.fg_main }
        hl["@variable.member"] = { fg = palette.base_pink }
        hl["@variable.builtin"] = { fg = palette.purple }
        hl["@variable.parameter"] = { fg = palette.purple }

        hl["@parameter"] = { fg = palette.purple }

        hl["@constant"] = { fg = palette.yellow }
        hl["@number"] = { fg = palette.yellow }
        hl["@number.float"] = { fg = palette.yellow }

        hl["@type"] = { fg = palette.cyan }
        hl["@type.builtin"] = { fg = palette.cyan }
        hl["@module"] = { fg = palette.cyan }
        hl["@module.builtin"] = { fg = palette.cyan }
        hl["@namespace"] = { fg = palette.cyan }
        hl["@constructor"] = { fg = palette.cyan }
        hl["@function.builtin"] = { fg = palette.cyan }

        hl["@punctuation.bracket"] = { fg = palette.yellow_bold }
        hl["@punctuation.delimiter"] = { fg = palette.white }
        hl["@operator"] = { fg = palette.base_pink }

        hl["@comment"] = { fg = palette.grey, italic = true }
        hl["@string.documentation"] = { fg = palette.grey, italic = true }

        -- UI
        hl.Normal = { fg = palette.fg_main, bg = "none" }
        hl.NormalFloat = { bg = "none" }
        hl.CursorLine = { bg = palette.bg_dark }

        hl.LineNr = { fg = palette.fg_faded }
        hl.CursorLineNr = { fg = palette.fg_highlight }
        hl.VertSplit = { fg = palette.bg_darkest }
        hl.StatusLine = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.StatusLineNC = { fg = palette.fg_faded, bg = palette.bg_dark }

        -- Dashboard
        hl.DashboardHeader = { fg = palette.base_pink }
        hl.DashboardCenter = { fg = palette.base_pink }
        hl.DashboardFooter = { fg = palette.grey }
        hl.DashboardKey = { fg = palette.base_pink }
        hl.DashboardDesc = { fg = palette.cyan }
        hl.DashboardIcon = { fg = palette.cyan }

        -- Command-line / Popups
        hl.Cmdline = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.CmdlinePrompt = { fg = palette.purple }
        hl.MsgArea = { fg = palette.fg_main, bg = palette.bg_main }
        hl.ModeMsg = { fg = palette.fg_highlight }

        hl.NormalFloat = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.FloatBorder = { fg = palette.fg_faded, bg = palette.bg_dark }

        hl.Pmenu = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.PmenuSel = { fg = palette.bg_main, bg = palette.fg_highlight }
        hl.PmenuSbar = { bg = palette.bg_darkest }
        hl.PmenuThumb = { bg = palette.bg_faded }

        -- Telescope (search popups)
        hl.TelescopeNormal = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.TelescopeBorder = { fg = palette.fg_faded }
        hl.TelescopePromptNormal = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.TelescopePromptBorder = { fg = palette.fg_highlight }
        hl.TelescopePromptPrefix = { fg = palette.purple }
        hl.TelescopeSelection = { fg = palette.bg_main, bg = palette.fg_highlight }
        hl.TelescopeMatching = { fg = palette.yellow }
        hl.TelescopePreviewBorder = { fg = palette.fg_faded }
        hl.TelescopePreviewNormal = { fg = palette.fg_main, bg = palette.bg_dark }
        hl.TelescopePreviewTitle = { fg = palette.purple }
        hl.TelescopePromptTitle = { fg = palette.purple }
        hl.TelescopeResultsTitle = { fg = palette.purple }

        -- Diagnostics / LSP
        hl.DiagnosticError = { fg = palette.purple }
        hl.DiagnosticWarn = { fg = palette.yellow }
        hl.DiagnosticInfo = { fg = palette.cyan }
        hl.DiagnosticHint = { fg = palette.green }
        hl.DiagnosticUnderlineError = { undercurl = true, sp = palette.purple }
        hl.DiagnosticUnderlineWarn = { undercurl = true, sp = palette.yellow }
        hl.DiagnosticUnderlineInfo = { undercurl = true, sp = palette.cyan }
        hl.DiagnosticUnderlineHint = { undercurl = true, sp = palette.green }

        -- Git signs
        hl.GitSignsAdd = { fg = palette.green }
        hl.GitSignsChange = { fg = palette.yellow }
        hl.GitSignsDelete = { fg = palette.purple }
      end,
    },
  },
}
