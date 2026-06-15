-- cyberdream theme
vim.pack.add({
	{ src = "https://github.com/scottmckendry/cyberdream.nvim" },
})

vim.cmd.colorscheme('cyberdream')

-- additional settings
require("cyberdream").setup({})
