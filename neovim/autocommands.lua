vim.api.nvim_create_autocmd( {"BufEnter", "BufWinEnter"}, {
    callback = function()
	-- Show line numbers and use relative line numbers
        vim.opt_local.number = true
        vim.opt_local.relativenumber = true
    end
})

-- Enable `showmatch` for <> in rust files
vim.api.nvim_create_autocmd( {"FileType"}, {
    pattern = "rust",
    callback = function()
	-- Use rust-gdb instead of gdb in plugin Termdebug
        vim.g.termdebug_config = {command = 'rust-gdb'}
        vim.g.termdebugger = "rust-gdb"
	-- Enable `showmatch` for <> in rust files
        vim.opt_local.matchpairs:append("<:>")
    end
})

