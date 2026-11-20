vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local opts = { buffer = bufnr, silent = true }

    -- Define a helper function for setting key mappings
    local function buf_set_keymap(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Set up key mappings for LSP features
    --buf_set_keymap("n", "gd", vim.lsp.buf.definition)
    buf_set_keymap("n", "K", vim.lsp.buf.hover)
    --buf_set_keymap("n", "gi", vim.lsp.buf.implementation)
    --buf_set_keymap("n", "<C-k>", vim.lsp.buf.signature_help)
    --buf_set_keymap("n", "<leader>rn", vim.lsp.buf.rename)
    --buf_set_keymap("n", "gr", vim.lsp.buf.references)
    buf_set_keymap("n", "<leader>ca", vim.lsp.buf.code_action)
    --[[
        -- Neovim auto completion
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
        vim.keymap.set("i", "<C-CR>", "<C-x><C-o>", { noremap = true, silent = true })
        ]] --
  end,
})
