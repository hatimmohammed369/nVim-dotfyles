-- Disable all traditional nagivation keys
vim.keymap.set("n", "<Up>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Down>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Right>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Left>", "<Nop>", { silent = true })
vim.keymap.set("n", "<PageUp>", "<Nop>", { silent = true })
vim.keymap.set("n", "<PageDown>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Home>", "<Nop>", { silent = true })
vim.keymap.set("n", "<End>", "<Nop>", { silent = true })

---------------------------------------------------------------------------

-- from the Primeagen

-- Move visual blocks and auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines and restore old cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll and keep cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- Find next search and keep cursor in the middle of the screen
--vim.keymap.set('n', 'n', "nzzzv")
--vim.keymap.set('n', 'N', "nzzzv")

-- Replace visual block without yanking it (not Neovim default)
vim.keymap.set("x", "<leader>p", '"_dP')

-- Issue a substitute command for word under cursor
vim.keymap.set("n", "<leader>rw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

---------------------------------------------------------------------------

-- Move right in insert mode
vim.keymap.set("i", "<C-f>", "<Right>", { silent = true })

-- Move left in insert mode
vim.keymap.set("i", "<C-b>", "<Left>", { silent = true })

-- Move right by word in insert mode
vim.keymap.set("i", "<A-f>", "<C-Right>", { silent = true })

-- Move left by word in insert mode
vim.keymap.set("i", "<A-b>", "<C-Left>", { silent = true })

-- Delete character under cursor in insert mode
vim.keymap.set("i", "<C-d>", "<Del>", { silent = true })

vim.keymap.set("i", "<C-a>", "<BS>", { silent = true })

-- De-indent line in insert mode
vim.keymap.set("i", "<C-s>", "<C-d>", { silent = true })

---------------------------------------------------------------------------

-- Explore current directory
-- replace buffer file with directory buffer
vim.keymap.set("n", "<leader>x", vim.cmd.Ex)

-- Explore in a vertical split
vim.keymap.set("n", "<leader>vx", vim.cmd.Vex)

-- Explore in horizental split
vim.keymap.set("n", "<leader>hx", vim.cmd.Hex)

-- Source current buffer
vim.keymap.set("n", "<leader>so", ":w | so<CR>")

-- Explore neovim configuration directory
vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim<CR>", { silent = true })

-- Edit init.lua
vim.keymap.set("n", "<leader>irc", ":e ~/.config/nvim/init.lua<CR>", { silent = true })

---------------------------------------------------------------------------

-- Make N blank lines below current line
vim.keymap.set("n", "<leader>j", function()
	local current_line = vim.fn["line"](".")
	local count = vim.v.count1
	for k = 1, count do
		vim.call("append", current_line, "")
	end
end)

-- Make N blank lines below current line and move to top created blank line
vim.keymap.set("n", "<leader>nj", function()
	local current_line = vim.fn["line"](".")
	local count = vim.v.count1
	for k = 1, count do
		vim.fn["append"](current_line, "")
	end
	vim.cmd(":+" .. count)
end)

-- Make N blank lines above current line
vim.keymap.set("n", "<leader>k", function()
	local current_line = vim.fn["line"](".") - 1
	local count = vim.v.count1
	for k = 1, count do
		vim.call("append", current_line, "")
	end
end)

-- Make N blank lines above current line and move to bottom created blank line
vim.keymap.set("n", "<leader>nk", function()
	local current_line = vim.fn["line"](".") - 1
	local count = vim.v.count1
	for k = 1, count do
		vim.fn["append"](current_line, "")
	end
	vim.cmd(":-" .. count)
end)

---------------------------------------------------------------------------
