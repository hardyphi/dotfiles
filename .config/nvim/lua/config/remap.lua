vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--work out what these do
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--same...
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--add line below & above
vim.keymap.set("n", "<leader>o", "o<ESC>")
vim.keymap.set("n", "<leader>O", "O<ESC>")

--move to around splits
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

-- should be copy to clipboard?
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- paste from clipboard?
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- see what this does?
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
