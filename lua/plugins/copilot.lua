return {
    {
        "github/copilot.vim",
        config = function()
            -- Disable default Tab mapping for Copilot
            vim.g.copilot_no_tab_map = true

            -- Control Keybindings, for accepting and dismissing suggestions.
            vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-]>", '<Plug>(copilot-dismiss)', { desc = "Dismiss the current suggestion"})

            -- Alt Keybindings, for cycling through suggestions.
            vim.api.nvim_set_keymap("i", "<M-]>", '<Plug>(copilot-next)', { desc = "Cycle to the next suggestion"})
            vim.api.nvim_set_keymap("i", "<M-[>", '<Plug>(copilot-previous)', { desc = "Cycle to the previous suggestion"})
            vim.api.nvim_set_keymap("i", "<M-\\>", '<Plug>(copilot-suggest)', { desc = "Alt + '\', request a suggestion even if Copilot is disabled"})

            -- Accept the current suggestion by word or line
            vim.api.nvim_set_keymap("i", "<C-l>", '<Plug>(copilot-accept-word)', { desc = "Accept one word of the current suggestion" })
            vim.api.nvim_set_keymap("i", "<M-C-l>", '<Plug>(copilot-accept-line)', { desc = "Accept the entire line of the current suggestion" })
        end
    }
}

