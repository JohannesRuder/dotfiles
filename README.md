# dotfiles

# Installation
* Packer: 
  * Install as described here: https://github.com/wbthomason/packer.nvim (ToDo: automate via scripts explained on site)
* LSP:
  * Install clangd
    * sudo apt-get install clangd-12
  * Install pyright
    * curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
    * sudo apt-get install -y nodejs
    * sudo apt-get install npm
    * sudo npm install --global pyright 
  * Install efm-langserver for formatting
    * install brew:
      * sudo apt install git -y
      * /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      * Put eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" in .zshrc
      * brew -v
    * brew install efm-langserver
    * Install black: pip install black
    * Install buildifier
      * Clone repo: git clone https://github.com/bazelbuild/buildtools.git
      * cd repo
      * bazel build //buildifier
* Treesitter:
  * Install language parsers for each language of interest:
    * :TSInstall cpp
    * :TSInstall python
    * :TSInstall lua
    * :TSInstall json
    * :TSInstall markdown 
