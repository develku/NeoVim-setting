local mapKey = require("utils.keyMapper").mapKey  -- Ensure the keyMapper function is correctly named

return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      -- Telescope shortcuts
      mapKey('<leader>ff', builtin.find_files, 'n', { desc = '[F]ind [F]iles' })
      mapKey('<leader>fg', builtin.live_grep, 'n', { desc = '[F]ind by Live [G]rep' })
      mapKey('<leader>fb', builtin.buffers, 'n', { desc = '[F]ind [B]uffers' }) -- buffers
      mapKey('<leader>fh', builtin.help_tags, 'n', { desc = '[F]ind [H]elp Tags' }) -- help tags
      mapKey('<leader>fh', builtin.help_tags, 'n', { desc = '[F]ind [H]elp' })
      mapKey('<leader>fk', builtin.keymaps, 'n', { desc = '[F]ind [K]eymaps' })
      mapKey('<leader>fs', builtin.builtin, 'n', { desc = '[F]ind [S]elect Telescope' })
      mapKey('<leader>fw', builtin.grep_string, 'n', { desc = '[F]ind current [W]ord' })
      mapKey('<leader>fd', builtin.diagnostics, 'n', { desc = '[F]ind [D]iagnostics' })
      mapKey('<leader>fr', builtin.resume, 'n', { desc = '[F]ind [R]esume' })
      mapKey('<leader>f.', builtin.oldfiles, 'n', { desc = '[F]ind Recent Files ("." for repeat)' })
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
