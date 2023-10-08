local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

    
local packer_bootstrap = ensure_packer()



return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- best fuzzy finder
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.3',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- list for diagnostic issues
    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- syntax highlighting
    use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
    }
    use("nvim-treesitter/nvim-treesitter-context");

    use("ThePrimeagen/harpoon")
    use("ThePrimeagen/git-worktree.nvim")
    use("mbbill/undotree")
    use("tpope/vim-commentary")
    use("tpope/vim-surround")

    -- language server & code completion
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
        requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-buffer'},
		    {'hrsh7th/cmp-path'},
		    {'saadparwaiz1/cmp_luasnip'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'hrsh7th/cmp-nvim-lua'},

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},
		    {'rafamadriz/friendly-snippets'},
	    }
    }

    -- formatting 
    use("elentok/format-on-save.nvim")

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons', }
    }

    use("gruvbox-community/gruvbox")
    use {
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		    vim.cmd('colorscheme rose-pine')
	    end
    }

    use("folke/zen-mode.nvim")
    use("eandrju/cellular-automaton.nvim")

    if packer_bootstrap then
    require('packer').sync()
    end
end)
