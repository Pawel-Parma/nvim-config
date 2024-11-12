vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use {"nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"}}
    use {"theprimeagen/harpoon"}
    use {"mbbill/undotree"}
    use {"tpope/vim-fugitive"}
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use {"romainl/vim-cool"}
end)  

