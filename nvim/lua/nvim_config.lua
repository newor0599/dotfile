-- Line number
vim.cmd("set relativenumber")
vim.cmd("set number")

-- Textwrap
vim.cmd("set nowrap")

-- Tab to spaces
vim.opt.tabstop = 2      -- Tab key inserts 2 spaces
vim.opt.shiftwidth = 2   -- Indent is 2 spaces
vim.opt.expandtab = true -- Convert tabs to spaces

-- GUI
vim.o.winborder = "rounded"
