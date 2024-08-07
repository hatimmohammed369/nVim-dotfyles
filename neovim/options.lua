-- Use system clipboard
vim.opt.clipboard:append({ "unnamedplus", "unnamed" })

-- Use line numbers
vim.opt.number = true

-- Use relative line numbering
vim.opt.relativenumber = true

-- Indent smartly
vim.cmd('set nocindent')
vim.cmd('set autoindent')
vim.cmd('set smartindent')

-- Use Python-style indenting
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set softtabstop=4')
vim.cmd('set expandtab')
vim.cmd('set shiftround')

-- Highlight line containing cursor
vim.opt.cursorline = true

-- Re-read file if changed in disk
vim.opt.autoread = true

-- Jump briefly to matching character
vim.opt.showmatch = true

-- Show information on status line
vim.opt.laststatus = 2

-- Use tilde ~ as operator, much like c or d or y
vim.opt.tildeop = true

-- Ignore case while searching
vim.opt.ignorecase = true

-- Do not highlight search matches
vim.opt.hlsearch = false

-- Autosave?
vim.opt.autowrite = true
vim.opt.autowriteall = true

-- Always use block cursor, but make it blink is insert mode
vim.opt.guicursor = "n-v-c:block,sm-i-ci-ve:block-blinkwait100-blinkon250-blinkoff500,r-cr-o:hor20"

-- Netrw buffer settings
vim.g.netrw_bufsettings = "nu rnu" -- line numbers and relative line numbering

-- Echo partially typed commands
vim.g.showcmd = true

-- Some visuals
vim.cmd('hi CursorLineNr term=bold cterm=bold ctermfg=Black ctermbg=Red')
vim.cmd('hi CursorLine term=none cterm=none ctermbg=LightGrey')
vim.cmd('hi Visual ctermbg=LightBlue')
vim.cmd('hi clear MatchParen')
