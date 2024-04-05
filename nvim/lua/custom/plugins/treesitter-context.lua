return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    vim.cmd('TSContextDisable')
  end
}
