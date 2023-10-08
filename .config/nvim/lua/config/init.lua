require("config.set")
require("config.packer")
require("config.nvim-tree")
require("config.lualine")
require("config.remap")

function R(name)
    require("plenary.reload").reload_module(name)
end
