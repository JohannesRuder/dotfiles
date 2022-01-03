vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Speed up require
  use 'lewis6991/impatient.nvim'

  -- LSP
  use {'neovim/nvim-lspconfig'}
  use {'nvim-lua/lsp_extensions.nvim'}

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lsp-document-symbol"
  use "tamago324/cmp-zsh"

  -- Add vscode-like pictograms to neovim built-in lsp
  use "onsails/lspkind-nvim"

  -- Comments
  use "numToStr/Comment.nvim"

  -- Refactoring
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }
  
  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Linting and formatting
  use {'mattn/efm-langserver'}

  -- 
  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
	auto_preview = false,
        auto_fold = true,
    }
  end
}
end)
