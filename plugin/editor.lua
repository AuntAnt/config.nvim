-- editor
vim.pack.add({
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/windwp/nvim-autopairs"},
	{ src = "https://github.com/folke/which-key.nvim" },
})

require("nvim-autopairs").setup {
	event = "InsertEnter"
}

require("lualine").setup({
	options = {
		theme = "base16"
	}
})
