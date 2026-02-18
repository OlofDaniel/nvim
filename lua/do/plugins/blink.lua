return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",

	config = function()
		require("blink.cmp").setup({

			keymap = {
				["<C-CR>"] = { "select_and_accept" },
				["<C-j>"] = { "select_next", "fallback" },
				["<C-k>"] = { "select_prev", "fallback" },
				["<CR>"] = { "accept", "fallback" },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = { documentation = { auto_show = false } },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},



		})

		local capabilities = require("blink.cmp").get_lsp_capabilities()
		vim.lsp.config("*", {
			capabilities = capabilities,
		})
	end,




}
