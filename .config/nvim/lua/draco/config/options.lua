-- tabs & indent
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true

-- line wrapping
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1

-- cursor line
vim.opt.cursorline = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
-- vim.opt.clipboard:append("unamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.mapleader = " "
vim.opt.iskeyword:append("-")

-- vim.opt.swapfile = false

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	float = {
		border = "single",
		source = "if_many",
		header = "Diagnostics",
	},
})

-- vim.opt.signcolumn = "auto"
