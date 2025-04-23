return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim", -- Biblioteca necesaria
		"rcarriga/nvim-notify", -- Opcional para notificaciones avanzadas
	},
	event = "VeryLazy",
	config = function()
		require("noice").setup({
			views = {
				popup = {
					border = {
						style = "rounded",
						padding = { 1, 1 },
					},
				},
			},
		})
	end,
}
