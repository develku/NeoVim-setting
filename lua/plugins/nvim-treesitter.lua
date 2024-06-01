return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "javascript", "html"}, -- list of languages that will be installed automatically
            sync_install = false, -- install all the languages with `:TSInstall`
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
