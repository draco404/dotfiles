return {
	"folke/which-key.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		window = {
			border = "double", -- Cambia 'single', 'double', 'rounded', 'none'
			winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
		},
		filter = {
			ignore_missing = true, -- Hide mappings with no label
		},
	},
	config = function()
		require("which-key").setup({
			---@type false | "classic" | "modern" | "helix"
			preset = "helix",
			plugins = {
				marks = true, -- Show marks
				registers = true, -- Show registers
				spelling = {
					enabled = true, -- Enable spelling suggestions
					suggestions = 20, -- Number of suggestions
				},
			},
			show_help = true, -- Show help message on the popup
		})
	end,
}

