require("harpoon").setup({
	tabline = true,
	menu = {
		width = vim.api.nvim_win_get_width(0) - 20,
	},
})
vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=GRAY')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=GRAY')
vim.cmd('highlight! TabLineFill guibg=#00000000 guifg=white')
