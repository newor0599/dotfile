vim.g.mapleader = " "

-- My keymaps
vim.keymap.set("n",";",":")
vim.keymap.set("n","<ESC>","<Cmd>noh<CR>")
vim.keymap.set("n","<leader>v","<Cmd>vs|terminal<CR>")
vim.keymap.set("t","<C-x>","<C-\\><C-n>")
vim.keymap.set("n","<S-h>","zH")
vim.keymap.set("n","<S-l>","zL")
vim.keymap.set("n","<C-a>","<Cmd>set wrap | set linebreak<CR>")
vim.keymap.set("n","<C-n>","<Cmd>set nowrap<CR>")

-- Nvimtree keymap
vim.keymap.set("n","<C-e>","<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("n","<leader>e","<Cmd>NvimTreeFocus<CR>")

-- Move between split buffer
vim.keymap.set("n","<C-h>","<C-w>h") 
vim.keymap.set("n","<C-j>","<C-w>j")
vim.keymap.set("n","<C-k>","<C-w>k")
vim.keymap.set("n","<C-l>","<C-w>l")

-- Close buffer with confirmation
vim.keymap.set("n","<leader>x",function()
	local b = vim.api.nvim_buf_get_name(0)
	local q = "Close buffer "..b.."? (changes won't we save)"
	n = "default"
	vim.ui.input({prompt = tostring(q)},function(input)
		if tostring(input) == "" then
			vim.cmd("bd!")
			print("Closed "..b)
		else 
			print("Cancelled")
		end
	end)
end)

-- Tabline keymap (barbar)
vim.keymap.set("n","<tab>","<Cmd>BufferNext<CR>")
vim.keymap.set("n","<S-tab>","<Cmd>BufferPrev<CR>")

vim.keymap.set("n","<A-1>","<Cmd>BufferGoto1<CR>")
vim.keymap.set("n","<A-2>","<Cmd>BufferGoto2<CR>")
vim.keymap.set("n","<A-3>","<Cmd>BufferGoto3<CR>")
vim.keymap.set("n","<A-4>","<Cmd>BufferGoto4<CR>")
vim.keymap.set("n","<A-5>","<Cmd>BufferGoto5<CR>")
vim.keymap.set("n","<A-6>","<Cmd>BufferGoto6<CR>")
vim.keymap.set("n","<A-7>","<Cmd>BufferGoto7<CR>")
vim.keymap.set("n","<A-8>","<Cmd>BufferGoto8<CR>")
vim.keymap.set("n","<A-9>","<Cmd>BufferGoto9<CR>")
vim.keymap.set("n","<A-10>","<Cmd>BufferLast<CR>")

vim.keymap.set("n","<leader>X","<Cmd>BufferRestore<CR>")


