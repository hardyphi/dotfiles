local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>pw", function()
    builtin.grep_string { search = vim.fn.expand("<cword>") }
end)

vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

vim.keymap.set("n", "<leader>vrc", function()
    require('config.telescope').search_dotfiles({ hidden = true })
end)
vim.keymap.set("n", "<leader>gc", function()
    require('config.telescope').git_branches()
end)
vim.keymap.set("n", "<leader>gw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end)
vim.keymap.set("n", "<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end)
vim.keymap.set("n", "<leader>td", function()
    require('config.telescope').dev()
end)


