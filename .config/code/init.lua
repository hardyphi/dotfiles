local vs = require 'vscode-neovim'

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.keymap.set("n", "<leader>t", function() vs.call('workbench.view.explorer') end)

vim.keymap.set("n", "<leader>sf", function() vs.call('workbench.action.quickOpen') end)
vim.keymap.set("n", "<leader>sg", function() vs.call('workbench.action.findInFiles') end)
vim.keymap.set("n", "<leader>s.", function() vs.call('workbench.action.openRecent') end)
vim.keymap.set("n", "<leader><leader>", function() vs.call('workbench.action.showAllEditors') end)
vim.keymap.set("n", "<leader>sw", function() vs.action('workbench.action.findInFiles', { args = { query = vim.fn.expand('<cword>') } }) end)
vim.keymap.set("v", "<leader>sw", function() vs.call('workbench.action.findInFiles') end)


vim.keymap.set("n", "<C-j>", function() vs.call('workbench.action.focusBelowGroup') end)
vim.keymap.set("n", "<C-k>", function() vs.call('workbench.action.focusAboveGroup') end)
vim.keymap.set("n", "<C-l>", function() vs.call('workbench.action.focusRightGroup') end)
vim.keymap.set("n", "<C-h>", function() vs.call('workbench.action.focusLeftGroup') end)

vim.keymap.set("n", "]d", function() vs.call('editor.action.marker.next') end)
vim.keymap.set("n", "[d", function() vs.call('editor.action.marker.previous') end)
--NOTE leaving vscode default of <C-.> for open quickfix
--TODO add <C-/> for show problem

--NOTE leaving gd mapping as is
vim.keymap.set("n", "gr", function() vs.call('editor.action.goToReferences') end)
vim.keymap.set("n", "gI", function() vs.call('editor.action.goToImplementation') end)
vim.keymap.set("n", "<leader>D", function() vs.call('editor.action.goToTypeDefinition') end)
-- find symbols (functions, variables, etc...)
vim.keymap.set("n", "<leader>ds", function() vs.call('workbench.action.gotoSymbol') end)
vim.keymap.set("n", "<leader>ws", function() vs.call('workbench.action.showAllSymbols') end)

vim.keymap.set("n", "<leader>rn", function() vs.call('editor.action.rename') end)
--NOTE no idea what code action is
--NOTE K seems to implemented by default

vim.keymap.set("n", "gD", function() vs.call('editor.action.goToDeclaration') end)

-- <C-y> to accept autocomplete set in keybindings due to being insert mode specific


vim.keymap.set("n", "<leader>a", function() vs.call('vscode-harpoon.addEditor') end)
vim.keymap.set("n", "<C-e>", function() vs.call('vscode-harpoon.editorQuickPick') end)
vim.keymap.set("n", "<C-i>", function() vs.call('vscode-harpoon.editEditors') end)
vim.keymap.set("n", "mn", function() vs.call('vscode-harpoon.addEditor1') end)
vim.keymap.set("n", "me", function() vs.call('vscode-harpoon.addEditor2') end)
vim.keymap.set("n", "mi", function() vs.call('vscode-harpoon.addEditor3') end)
vim.keymap.set("n", "mo", function() vs.call('vscode-harpoon.addEditor4') end)
vim.keymap.set("n", "<leader>n", function() vs.call('vscode-harpoon.gotoEditor1') end)
vim.keymap.set("n", "<leader>e", function() vs.call('vscode-harpoon.gotoEditor2') end)
vim.keymap.set("n", "<leader>i", function() vs.call('vscode-harpoon.gotoEditor3') end)
vim.keymap.set("n", "<leader>o", function() vs.call('vscode-harpoon.gotoEditor4') end)
