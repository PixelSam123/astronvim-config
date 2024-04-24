-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        guifont = jit.os == "OSX" and "MonaspiceNe Nerd Font:h17" or "Iosevka SS17,Iosevka Nerd Font:h12",
      },
      g = { -- vim.g.<key>
        catppuccin_flavour = "mocha",
        autoformat_enabled = true,
        neovide_transparency = 0.945,
      },
    },
  },
}
