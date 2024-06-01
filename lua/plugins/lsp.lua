local keyMapper = require('utils.keyMapper').mapKey
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "tsserver",
                    "rust_analyzer",
                    "pyright",
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
          local lspconfig = require("lspconfig")

          -- LSP servers setup
          lspconfig.lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" }
                }
              }
            }
          })
          lspconfig.tsserver.setup({})
          lspconfig.rust_analyzer.setup({})
          lspconfig.pyright.setup({})

          -- Key mappings
          keyMapper('K', vim.lsp.buf.hover, 'n', { desc = 'Show hover information'})
          keyMapper('gd', vim.lsp.buf.definition, 'n', { desc = 'Go to definition'})
          keyMapper('<leader>ca', vim.lsp.buf.code_action, 'n', { desc = 'Code action'})

        end
    }
}
