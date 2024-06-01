local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.globals") -- load the globals file
require("config.options")
require("config.keymaps")
require("config.custom_functions") -- load the custom functions file

local plugins = "plugins" -- load all plugins in the plugins directory.
local opts = {}

require("lazy").setup(plugins, opts)

