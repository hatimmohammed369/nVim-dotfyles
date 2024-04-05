function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

return {
  'nvim-telescope/telescope-file-browser.nvim',
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local fb_actions = require('telescope').extensions.file_browser.actions
    telescope.setup {
      extensions = {
        file_browser = {
          theme = 'dropdown',
          hijack_netrw = true,
          mappings = {
            ['n'] = {
              ['%'] = fb_actions.create,
              ['-'] = fb_actions.goto_parent_dir,
            }
          }
        }
      }
    }

    telescope.load_extension('file_browser')

    vim.keymap.set('n', '<leader>tx',
      '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = "normal" })<CR>')
  end
}
