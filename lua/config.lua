local options = {
	nu = true,
	relativenumber = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	colorcolumn = "120",
	winborder = "rounded",
	clipboard = "unnamedplus",
	cursorline = true,
	mouse = "a",
}

for option, value in pairs(options) do
	vim.opt[option] = value
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "
