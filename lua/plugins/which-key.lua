return {
  "folke/which-key.nvim",
  config = function()

    -- Set the timeout for key bindings
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    -- Setup for which-key plugin
    require("which-key").setup({
      -- Plugin configuration
      preset = "classic",  -- or "modern" / "helix" for different layouts
      plugins = {
        marks = true,           -- Show a list of your marks when pressing ' or `
        registers = true,       -- Show your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true,       -- Show spelling suggestions when pressing z=
          suggestions = 30,     -- Number of spelling suggestions to show
        },
        presets = {
          operators = true,     -- Adds help for operators like d, y, etc.
          motions = true,       -- Adds help for motion-related commands
          text_objects = true,  -- Adds help for text objects
          windows = true,       -- Default bindings for <c-w> (window management)
          nav = true,           -- Miscellaneous bindings for window navigation
          z = true,             -- Bindings for folds, spelling, etc., prefixed with 'z'
          g = true,             -- Bindings prefixed with 'g' (like 'gq', 'gg', etc.)
        },
      },

      -- Defer certain mappings
      defer = function(ctx)
        -- Delay only for visual or blockwise visual modes
        return vim.list_contains({ "V", "<C-V>" }, ctx.mode)
      end,

      -- Customize key labels in the help popup
      replace = {
        key = {
          { "<space>", "SPC" }, -- Show "<space>" as "SPC"
          { "<cr>", "RET" },    -- Show "<cr>" (Enter) as "RET"
          { "<tab>", "TAB" },   -- Show "<tab>" as "TAB"
        },
      },

      -- Customize layout
      win = {
        padding = { 1, 2 },    -- Extra padding
        title = true,          -- Show title
        title_pos = "center",  -- Center the title
        zindex = 1000,         -- Z-index priority
      },

      -- Layout properties
      layout = {
        width = { min = 20 }, -- Minimum width for the columns
        spacing = 3,          -- Spacing between columns
      },

      -- Key mappings for scrolling inside the popup window
      keys = {
        scroll_down = '<c-d>', -- Bind Ctrl-D to scroll down inside the popup
        scroll_up = '<c-u>',   -- Bind Ctrl-U to scroll up inside the popup
      },

      -- Show help message on the command line when the popup is visible
      show_help = true,

      -- Automatically setup triggers for leader-based mappings
      triggers = { "<auto>" }, -- This can be customized based on your needs
    })

    -- Register your key mappings
    local wk = require("which-key")
    wk.add({
      { "<leader>s", group = "file" }, -- Group name for file-related operations
    })
  end,
}
