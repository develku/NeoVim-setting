return {
  -- plugin that provides a statusline for NeoVim.
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup({
            options = {
                theme = "gruvbox",
            }
        })
    end
}
