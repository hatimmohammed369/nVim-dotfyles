-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-tree/nvim-web-devicons',
  {
    'iamcco/markdown-preview.nvim',
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.keymap.set('n', '<leader>mp', vim.cmd.MarkdownPreview)
      vim.keymap.set('n', '<leader>mt', vim.cmd.MarkdownPreviewToggle)
      vim.keymap.set('n', '<leader>ms', vim.cmd.MarkdownPreviewStop)
    end
  },
  {
    "ej-shafran/compile-mode.nvim",
    branch = "latest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "m00qek/baleia.nvim", tag = "v1.3.0" },
    },
    opts = {
      -- default_command = "npm run build",
    }
  }
}
