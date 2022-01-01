vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Speed up require
  use 'lewis6991/impatient.nvim'

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
end)
