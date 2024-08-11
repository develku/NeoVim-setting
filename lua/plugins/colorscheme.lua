return {
  -- gruvbox colorscheme
	--"ellisonleao/gruvbox.nvim",
	--priority = 1000,
	--lazy = false, -- Do NOT load the lazy
	--config = function()
  -- vim.o.background = "light"
  --   vim.cmd([[colorscheme gruvbox]])
	--end,
  --
  -- catppuccino colorscheme
  -- catppuccin colorscheme
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false, -- Do NOT load the lazy
  config = function()
    require("catppuccin").setup({
      flavour = "latte", -- Options: "latte" (light), "frappe" (medium contrast), "macchiato" (darker), "mocha" (darkest)
      -- You can customize other settings here
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}
