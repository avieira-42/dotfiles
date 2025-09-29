-- Leader key
vim.g.mapleader = " "

-- normal mode
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- remap Ex to be leader<pv>

-- insert mode
vim.keymap.set('i', 'jj', '<Esc>') -- remap esc to be jj
