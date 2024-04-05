return {
  'ThePrimeagen/harpoon',
  config = function()
    vim.keymap.set('n', '<leader>z', function() require('harpoon.mark').add_file() end)
    vim.keymap.set('n', '<leader>ha', function() require('harpoon.ui').toggle_quick_menu() end)
    vim.keymap.set('n', '<C-h>', function() require('harpoon.ui').nav_file(1) end)
    vim.keymap.set('n', '<C-t>', function() require('harpoon.ui').nav_file(2) end)
  end
}
