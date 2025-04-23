return {
	"nvimtools/none-ls.nvim",
	enabled = false,
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = true,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.diagnostics.selene,
				-- null_ls.builtins.diagnostics.trivy,
				null_ls.builtins.diagnostics.flake8,
			},
		})
	end,
}

-- BUILTINS
-- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md

