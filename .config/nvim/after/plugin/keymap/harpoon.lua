local nnoremap = require("config.keymap").nnoremap

local silent = { silent = true }

nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>,", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<leader>tc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, silent)

nnoremap("<leader>n", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>e", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>i", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>o", function() require("harpoon.ui").nav_file(4) end, silent)
