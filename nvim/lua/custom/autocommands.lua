vim.api.nvim_create_autocmd({ 'User', 'BufWritePost', 'BufReadPost', 'BufWinEnter' }, {
    pattern = 'GitSignsUpdate',
    callback = function()
        vim.cmd('redrawstatus')
    end
})
