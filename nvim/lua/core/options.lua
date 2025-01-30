vim.opt.wrap = false
vim.opt.shiftwidth = 4

-- Allows obsidian.nvim to conceal certain markdown formatting
vim.opt.conceallevel = 1

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Highlight yanked text for better visual feedback
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
	vim.highlight.on_yank()
    end
})
