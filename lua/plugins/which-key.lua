return {
  "folke/which-key.nvim",
  config = function()

      -- Basic settings
      vim.o.timeout = true
      vim.o.timeoutlen = 300

    require("which-key").setup {
      -- Configuration for which-key
      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 30, -- how many suggestions should be shown in the list?
        },
        presets = {
          operators = true, -- adds help for operators like d, y, ...
          motions = true, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },
      -- add operators that will trigger motion and text object completion
      -- to enable all native operators, set the preset / operators to true
      operators = { gc = "Comments" },
      key_labels = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        -- For example:
        -- ["<space>"] = "SPC",
        -- ["<cr>"] = "RET",
        -- ["<tab>"] = "TAB",
      },
      icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
      },
      popup_mappings = {
        scroll_down = '<c-d>', -- binding to scroll down inside the popup
        scroll_up = '<c-u>', -- binding to scroll up inside the popup
      },
      window = {
        border = "none", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 0
      },
      layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
        align = "left", -- align columns left, center or right
      },
      ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate

      show_help = true, -- show help message on the command line when the popup is visible
      triggers = "auto", -- automatically setup triggers
      -- triggers = {"<leader>"} -- or specify a list manually
    }

 -- Register your key mappings
      local wk = require("which-key")
      wk.register({
          s = {
              name = "TeleScope",
              f = { "<cmd>Telescope find_files<cr>", "Find File" },
              g = { "<cmd>Telescope live_grep<cr>", "Grep String" },
              b = { "<cmd>Telescope buffers<cr>", "List Buffers" },
              h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
              k = { "<cmd>Telescope keymaps<cr>", "Find Keymaps" },
              s = { "<cmd>Telescope builtin<cr>", "Find Select" },
              w = { "<cmd>Telescope grep_string<cr>", "Find Word" },
              d = { "<cmd>Telescope diagnostics<cr>", "Find Diagnostics" },
              r = { "<cmd>Telescope resume<cr>", "Find Resume" },
              ["."] = { "<cmd>Telescope oldfiles<cr>", "Find Recent Files" },
              ["<leader>"] = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
          },
      }, { prefix = "<leader>" })
  end
}
