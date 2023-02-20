return require('packer').startup(function(use)
  -- Configurations will go here soon
 use 'wbthomason/packer.nvim'
 use 'williamboman/mason.nvim'
 use 'williamboman/mason-lspconfig.nvim'
 use 'neovim/nvim-lspconfig'
 -- completions
 use 'hrsh7th/nvim-cmp' 
 use 'hrsh7th/cmp-nvim-lsp'
 use 'hrsh7th/cmp-nvim-lua'
 use 'hrsh7th/cmp-nvim-lsp-signature-help'
 use 'hrsh7th/cmp-vsnip'
 use 'hrsh7th/cmp-path'                              
 use 'hrsh7th/cmp-buffer'                            
 use 'hrsh7th/vim-vsnip'
 use 'ThePrimeagen/harpoon'
 use 'tamago324/nlsp-settings.nvim'
 use {
	 'nvim-tree/nvim-tree.lua',
	 requires = {
		 'nvim-tree/nvim-web-devicons', -- optional, for file icons
	 },
 }
 use 'mfussenegger/nvim-dap'
 use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
 use "srcery-colors/srcery-vim"
 use "lunarvim/colorschemes"
 use "olimorris/onedarkpro.nvim"
  use {
  -- recommended packer way of installing it is to run this function, copied from documentation
         'nvim-treesitter/nvim-treesitter',
      run = function()
              local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
              ts_update()
         end,

 }
 -- Telescope used to fuzzy search files
 use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
 }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }
use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
})

use "jose-elias-alvarez/null-ls.nvim"
use "folke/trouble.nvim"
use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim"
  }
-- using packer.nvim
--use {'akinsho/bufferline.nvim',requires = 'nvim-tree/nvim-web-devicons'}
use "romgrk/barbar.nvim"
use "lukas-reineke/indent-blankline.nvim"
use "jose-elias-alvarez/typescript.nvim"
use ({
	"folke/noice.nvim", requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
})
use "folke/neodev.nvim"
use 'ray-x/go.nvim'
use 'ray-x/guihua.lua'
use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
