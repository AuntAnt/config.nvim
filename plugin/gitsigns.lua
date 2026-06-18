vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim" }
})

require("gitsigns").setup {
	on_attach = function(bufrn)
		local gitsigns = require("gitsigns")
		local wk = require("which-key")

		wk.add({
			{
				buffer = bufrn,

				{ "<leader>g", group = "Git" },

				{ "<leader>gr", gitsigns.reset_hunk, desc = "Reset hunk" },
				{ "<leader>gR", gitsigns.reset_buffer, desc = "Reset buffer" },
				{ "<leader>gi", gitsigns.preview_hunk_inline, desc = "Preview hunk inline" },
				{
					"<leader>gb",
					function() gitsigns.blame_line({ full = true }) end,
					desc = "Blame line"
				},
				{
					"<leader>gB",
					function() gitsigns.blame() end,
					desc = "Blame"
				},
				{
                    "<leader>gtb",
                    gitsigns.toggle_current_line_blame,
                    desc = "Toggle current line blame"
                },
				{ "<leader>gd", gitsigns.diffthis, desc = "Diff" }
			}
		})
	end
}
