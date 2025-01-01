-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

local jit = require "jit"

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        shell = jit.os == "Windows" and "nu" or nil,
        shellcmdflag = jit.os == "Windows" and "-c" or nil,
        shellxquote = jit.os == "Windows" and "" or nil,
        guifont = jit.os == "Windows" and "Iosevka SS03,Iosevka Nerd Font:h12"
          or jit.os == "OSX" and "MonaspiceNe Nerd Font:h16"
          or "Iosevka SS17,Iosevka Nerd Font:h12",
      },
      g = { -- vim.g.<key>
        catppuccin_flavour = "mocha",
        neovide_transparency = 0.945,
      },
    },
  },
}
