# dotfiles

# Installation
* Packer: 
  * Install as described here: https://github.com/wbthomason/packer.nvim (ToDo: automate via scripts explained on site)
* LSP:
  * Install clangd
    * sudo apt-get install clangd-12
  * Install efm-langserver
    * install brew:
      * brew install efm-langserver
      * sudo apt install git -y
      * /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      * eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
      * brew -v
  * brew install efm-langserver
* Treesitter:
  * Install language parsers for each language of interest:
    * :TSInstall cpp
    * :TSInstall python
    * :TSInstall lua
    * :TSInstall json
    * :TSInstall markdown 
