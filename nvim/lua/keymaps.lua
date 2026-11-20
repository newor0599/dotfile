-- Remap
vim.g.mapleader = " "
local k = vim.keymap.set

-- Window manipulations
k({ "n" }, "<C-k>", "<C-W><C-k>", { noremap = true })
k({ "n" }, "<C-l>", "<C-W><C-l>", { noremap = true })
k({ "n" }, "<C-j>", "<C-W><C-j>", { noremap = true })
k({ "n" }, "<C-h>", "<C-W><C-h>", { noremap = true })
k({ "n" }, "<leader>sv", "<Cmd>vs<CR>") -- Vertical
k({ "n" }, "<leader>sh", "<Cmd>sp<CR>") -- Horizontal

-- I'm very lazy
k({ "n", "v" }, ";", ":")
k({ "n", "v" }, "'", "\"")
k({ "n", "v" }, "' ", "<Cmd>reg<CR>")
k({ "n" }, "<Esc>", "<Cmd>noh<CR>")
k({ "n" }, "<C-s>", "<Cmd>lua vim.lsp.buf.format()<CR>")

-- Oil
k({ "n" }, "<leader>e", "<Cmd>Oil<CR>")

-- Terminal
k({ "n" }, "<leader>t", "<Cmd>terminal<CR>")
k({ "t" }, "<C-x>", "<C-\\><C-n>")

-- System clipboard
k({ 'n' }, "<A-y>", '"+Y<Cmd>lua vim.notify(\'Copied text to clipboard\')<CR>')
k({ 'v' }, "<A-y>", '"+y<Cmd>lua vim.notify(\'Copied text to clipboard\')<CR>')
k({ 'n' }, "<A-p>", '"+P<Cmd>lua vim.notify(\'Pasted text from clipboard\')<CR>')
k({ 'v' }, "<A-p>", '"+p<Cmd>lua vim.notify(\'Pasted text from clipboard\')<CR>')

-- Telescope
k({ 'n' }, "<C-p>", '<Cmd>Telescope<CR>')

-- Horizontal movement
k('n', 'L', 'zl')
k('n', 'H', 'zh')

-- Lsp
k("n", "K", vim.lsp.buf.hover)
k("n", "<leader>cr", vim.lsp.buf.rename)
k("n", "<leader>cR", vim.lsp.buf.references)
k("n", "<leader>ca", vim.lsp.buf.code_action)
k("n", "<leader>cd", vim.lsp.buf.definition)
k("n", "<leader>cf", vim.lsp.buf.format)
