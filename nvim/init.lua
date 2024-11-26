vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set rnu")

vim.cmd("nmap + <C-w>-")
vim.cmd("nmap - <C-w>+")
vim.cmd("nmap ä <C-w><")
vim.cmd("nmap # <C-w>>")
vim.cmd("nmap <C-Left> <C-w><Left>")
vim.cmd("nmap <C-Right> <C-w><Right>")
vim.cmd("nmap <C-Up> <C-w><Up>")
vim.cmd("nmap <C-Down> <C-w><Down>")
vim.cmd("nmap <C-h> <C-w>h")
vim.cmd("nmap <C-j> <C-w>j")
vim.cmd("nmap <C-k> <C-w>k")
vim.cmd("nmap <C-l> <C-w>l")
vim.keymap.set("n", "<leader>s<Backspace>", ":noh")

vim.g.mapleader = " "

require("config.lazy")

require("ibl").setup()
require("lualine").setup()

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal right toggle<CR>")

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
