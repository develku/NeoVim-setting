local mapKey = require("utils.keyMapper").mapKey  -- Ensure the keyMapper function is correctly named

return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      -- Telescope shortcuts
      mapKey('<leader>sf', builtin.find_files, 'n', { desc = '[S]earch [F]iles' })
      mapKey('<leader>sg', builtin.live_grep, 'n', { desc = '[S]earch by [G]rep' })
      mapKey('<leader>fb', builtin.buffers, 'n', { desc = '[S]earch [B]uffers' }) -- buffers
      mapKey('<leader>fh', builtin.help_tags, 'n', { desc = '[S]earch [H]elp Tags' }) -- help tags
      mapKey('<leader>sh', builtin.help_tags, 'n', { desc = '[S]earch [H]elp' })
      mapKey('<leader>sk', builtin.keymaps, 'n', { desc = '[S]earch [K]eymaps' })
      mapKey('<leader>ss', builtin.builtin, 'n', { desc = '[S]earch [S]elect Telescope' })
      mapKey('<leader>sw', builtin.grep_string, 'n', { desc = '[S]earch current [W]ord' })
      mapKey('<leader>sd', builtin.diagnostics, 'n', { desc = '[S]earch [D]iagnostics' })
      mapKey('<leader>sr', builtin.resume, 'n', { desc = '[S]earch [R]esume' })
      mapKey('<leader>s.', builtin.oldfiles, 'n', { desc = '[S]earch Recent Files ("." for repeat)' })
      mapKey('<leader><leader>', builtin.buffers, 'n', { desc = '[ ] Find existing buffers' })
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown{}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
