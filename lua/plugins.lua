-- cyberdream theme
vim.pack.add({
	{ src = "https://github.com/scottmckendry/cyberdream.nvim" },
})

-- additional settings
require("cyberdream").setup({})

-- mason
vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
})

require("mason").setup({})

-- lualine
vim.pack.add({
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
})

require("lualine").setup({
	options = {
		theme = "base16"
	}
})

-- devicons
vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})


-- blink.cmp
vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})

require("blink.cmp").setup({
	fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        -- ["<C-n>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-y>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
        -- ["<C-e>"] = { "hide" },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },

    sources = { default = { "lsp" } }
})

--fff.nvim
vim.pack.add({
	{ src = "https://github.com/dmtrKovalenko/fff.nvim" },
})
