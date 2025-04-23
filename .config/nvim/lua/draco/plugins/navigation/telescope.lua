return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			require("telescope").setup({
				style = "nvchad",
				window = {
					border = "double", -- Cambia 'single', 'double', 'rounded', 'none'
					winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
