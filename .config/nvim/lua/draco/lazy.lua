local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "draco.plugins" },
	{ import = "draco.plugins.ui" },
	{ import = "draco.plugins.lsp" },
	{ import = "draco.plugins.navigation" },
	{ import = "draco.plugins.utils" },
}, {
	checker = {
		enabled = true,
	},
})
vim.cmd.colorscheme("catppuccin")
