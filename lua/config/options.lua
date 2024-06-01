local opt = vim.opt -- load the vim options

-- tab/indentation
opt.tabstop = 2
opt.shiftwidth = 2 -- number of spaces to use for each step of (auto)indent
opt.softtabstop = 2 -- number of spaces that a <Tab> in the file counts for
opt.expandtab = true -- use spaces instead of tabs
opt.wrap = false -- display long lines as just one line
opt.showbreak = "↪ " -- line wrap character
opt.smartindent = true -- automatically inserts indentation in some cases
opt.breakindent = true -- start wrapped lines indented

-- search
opt.hlsearch = true -- Set highligh on search, but clear on pressing <esc> in normal mode
opt.incsearch = true -- show the search matches as you type
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- ignore case if the search pattern is all lowercase, case-sensitive otherwise

-- Clipboard (Copy and Paste)
opt.clipboard = 'unnamedplus' -- use system clipboard for vim commands

-- visual
opt.number = true -- show line numbers
opt.relativenumber = true -- show relative line numbers
opt.termguicolors = true -- enable 24-bit RGB color in the terminal
opt.signcolumn = "yes" -- always show the sign column
-- opt.showmode = false -- don't show the mode we're in the status line.

-- Cursor related options
opt.cursorline = true -- highlight the current line
opt.cursorcolumn = false -- highlight the current column
opt.scrolloff = 10 -- minimum number of lines to keep above and below the cursor
opt.updatetime = 250 -- time in ms to wait for events to trigger CursorHold

-- Configure how new splits should be opened
opt.splitright = true -- vertical splits will be to the right
opt.splitbelow = true -- horizontal splits will be below


-- etc
opt.encoding = "utf-8" -- set the encoding
opt.cmdheight = 1 -- height of the command bar
opt.mouse = "a" -- enable the mouse in all modes
opt.undofile = true -- Save undo history.
opt.timeoutlen = 500 -- Decrease mapped sequence timeout (default is 1000 ms), Display which-key popup sooner
opt.inccommand = "nosplit" -- show the effects of a command incrementally, as you type


-- Sets how neovim will display certain whitespace characters in the editor
--  see `:help 'list'` for more info, and `:help 'listchars'` for more options
-- opt.list = true -- show some invisible characters
-- opt.listchars = { tab = "▸ ", trail = "·", extends = ">", precedes = "<", nbsp = "␣" }
