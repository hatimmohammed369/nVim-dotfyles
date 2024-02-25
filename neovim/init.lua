vim.cmd.colorscheme('peachpuff')

-- Disable <SPACE> key
vim.keymap.set('n', '<SPACE>', '<Nop>')

-- Use <SPACE> as leader key
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- Make neovim act less like vi
vim.opt.compatible = false

-- Enable plugin Termdebug
vim.cmd('packadd termdebug')

-- Use shared data file
vim.opt.shadafile = "/home/hatim/.config/nvim/shada/main.shada"

-- Store swaps
vim.opt.dir = "/home/hatim/.config/nvim/swap"

-- Store backups
vim.opt.backup = true
vim.opt.backupdir = "/home/hatim/.config/nvim/backup"

-- Store undo files
vim.opt.undofile = true
vim.opt.undodir = "/home/hatim/.config/nvim/undo"

-- Source other config files
require('hatim.autocommands')
require('hatim.keymaps')
require('hatim.options')
