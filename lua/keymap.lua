-- Open explore on Leader+E
vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")

-- Comment line on CTRL+C
vim.keymap.set({"n", "v"}, "<C-c>", "gcc", { remap = true })


vim.keymap.set({"n", "v"}, "gh", "g^", { desc = "End of line" })
vim.keymap.set({"n", "v"}, "gl", "g_", { desc = "Start of line" })

-- fff find files
vim.keymap.set("n", "ff", function()
	require("fff").find_files()
end, { desc = "FFFind files" })

