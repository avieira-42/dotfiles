local builtin = require('telescope.builtin')

--normal mode
--
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- all file search
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- git file search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
