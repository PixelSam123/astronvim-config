-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "nordic",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      ["catppuccin-mocha"] = function()
        local C = require("catppuccin.palettes").get_palette()
        local telescope_green = C.green
        local telescope_red = C.red
        local telescope_fg = C.text
        local telescope_bg = C.mantle
        local telescope_bg_alt = C.surface0

        return {
          TelescopeBorder = { fg = telescope_bg_alt, bg = telescope_bg },
          TelescopeNormal = { bg = telescope_bg },
          TelescopePreviewBorder = { fg = telescope_bg, bg = telescope_bg },
          TelescopePreviewNormal = { bg = telescope_bg },
          TelescopePreviewTitle = { fg = telescope_bg, bg = telescope_green },
          TelescopePromptBorder = { fg = telescope_bg_alt, bg = telescope_bg_alt },
          TelescopePromptNormal = { fg = telescope_fg, bg = telescope_bg_alt },
          TelescopePromptPrefix = { fg = telescope_red, bg = telescope_bg_alt },
          TelescopePromptTitle = { fg = telescope_bg, bg = telescope_red },
          TelescopeResultsBorder = { fg = telescope_bg, bg = telescope_bg },
          TelescopeResultsNormal = { bg = telescope_bg },
          TelescopeResultsTitle = { fg = telescope_bg, bg = telescope_bg },
        }
      end,
    },
  },
}
