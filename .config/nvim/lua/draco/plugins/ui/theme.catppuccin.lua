return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- vim.cmd.colorscheme "catppuccin-macchiato"
		require("catppuccin").setup({
			integrations = {
				cmp = true,
				treesitter = true,
				notify = true,
				noice = true,
				which_key = true,
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})
	end,
}
