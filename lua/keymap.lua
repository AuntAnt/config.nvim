-- Open explore on Leader+E
vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")

-- Comment line on CTRL+C
vim.keymap.set({"n", "v"}, "<C-c>", "gcc", { remap = true })

-- fff find files
vim.keymap.set("n", "ff", function()
	require("fff").find_files()
end, { desc = "FFFind files" })

