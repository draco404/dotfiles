local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Keymap for save with CTRL-S
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Keymap for undo with CTRL-Z
map("n", "<C-z>", "u", opts)
map("i", "<C-z>", "<Esc>u", opts)

-- NVim Menus
opts.desc = "Open Lazy"
map("n", "<leader>ol", "<Cmd>Lazy<CR>", opts)
opts.desc = "Open Mason"
map("n", "<leader>om", "<Cmd>Mason<CR>", opts)

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>")
map("n", "<c-j>", ":wincmd j<CR>")
map("n", "<c-h>", ":wincmd h<CR>")
map("n", "<c-l>", ":wincmd l<CR>")

map("n", "<Tab>", "<C-w>w", opts)

opts.desc = "Close all except this"
map("n", "<leader>ho", ":only<CR>", opts)

opts.desc = "Remove searched text"
map("n", "<leader>hh", ":nohlsearch<CR>", opts)

-- LSP
-- Diagnostics
opts.desc = "Open diagnostic"
map("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
opts.desc = "Next diagnostic"
map("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
opts.desc = "Previous diagnostic"
map("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
opts.desc = "Get diagnostic"
map("n", "<leader>da", "<cmd>lua vim.diagnostic.get()<CR>", opts)

map("n", "K", vim.lsp.buf.hover, opts)
opts.desc = "Format"
map("n", "<leader>gf", vim.lsp.buf.format, opts)
opts.desc = "Open definitions"
map("n", "<leader>gd", vim.lsp.buf.definition, opts)
opts.desc = "Open references"
map("n", "<leader>gr", vim.lsp.buf.references, opts)
opts.desc = "Open code actions"
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
opts.desc = "Smart rename"
map("n", "<leader>na", vim.lsp.buf.rename, opts)

opts.desc = "Close"
map("n", "<leader>q", ":close<CR>", opts)

-- Neotree
opts.desc = "Toggle FE"
map("n", "<leader>e", ":Neotree filesystem toggle<CR>", opts)
-- opts.desc = "Show buffers"
-- map("n", "<leader>bf", ":Neotree buffers reveal float<CR>", opts)

-- Oil
opts.desc = "Open Oil"
vim.keymap.set("n", "<leader>oo", "<cmd>lua require('oil').toggle_float()<CR>", opts)

-- Telescope
opts.desc = "Find files"
map("n", "<C-p>", ":Telescope find_files<CR>", opts)
opts.desc = "Live grep"
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
opts.desc = "File browser"
map("n", "<space>fb", ":Telescope file_browser<CR>", opts)
opts.desc = "Files"
map("n", "<leader><leader>", ":Telescope oldfiles<CR>", opts)

opts.desc = "Path Buffers"
map("n", "<space>bf", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)
opts.desc = "Nvim Files"
map("n", "<leader>fnv", "<cmd>lua require('telescope.builtin').find_files({ cwd = '~/.config/nvim' })<CR>", opts)
opts.desc = "Config Files"
map(
	"n",
	"<leader>fnc",
	"<cmd>lua require('telescope.builtin').find_files({ cwd = '/Users/alejandrovieyra/.config' })<CR>",
	opts
)

map("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
map("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
