return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	lazy = false, -- Do NOT load the lazy
	config = function()
		vim.cmd([[colorscheme gruvbox]])
	end,
}
