return {

  -- gruvbox colorscheme
  --"ellisonleao/gruvbox.nvim",
  -- lazy = false, -- make sure we load this during startup if it is your main colorscheme.
  -- priority = 1000, -- make sure to load this before all the other start plugins
  --config = function()
  -- vim.o.background = "light"
  --   vim.cmd([[colorscheme gruvbox]])
  --end,

  -- catppuccin colorscheme
  -- "catppuccin/nvim",
  -- name = "catppuccin",
  -- lazy = false, -- make sure we load this during startup if it is your main colorscheme.
  -- priority = 1000, -- make sure to load this before all the other start plugins
  -- lazy = false, -- Do NOT load the lazy
  -- config = function()
  --   require("catppuccin").setup({
  --     flavour = "latte", -- Options: "latte" (light), "frappe" (medium contrast), "macchiato" (darker), "mocha" (darkest)
  --     -- You can customize other settings here
  --   })
  --   vim.cmd([[colorscheme catppuccin]])
  -- end,

  -- github colorscheme
  -- https://github.com/projekt0n/github-nvim-theme
  "projekt0n/github-nvim-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme.
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("github-theme").setup({})
    vim.cmd("colorscheme github_light_default")
  end,
}
