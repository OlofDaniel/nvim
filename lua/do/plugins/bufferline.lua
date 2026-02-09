return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = function(_, opts)
		opts.options = {
			mode = "buffers",
			separator_style = "thin",
			show_buffer_close_icons = false,
			show_close_icon = false,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
				},
			},
		}

		if (vim.g.colors_name or ""):find("catppuccin") then
			opts.highlights = require("catppuccin.special.bufferline").get_theme()
		else
			opts.highlights = {
				fill = { bg = "none" },
				background = { bg = "none" },
				buffer_selected = { bg = "none", bold = true },
				separator = { fg = "#1e1e2e", bg = "none" },
			}
		end
	end,
}
