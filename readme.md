### My dotfiles


#### Screen shot

![Screenshot](public/screenshot.png)

#### Installation

Install these programs manually
*ZSH*
1. zsh: `brew install zsh` https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
2. oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` https://ohmyz.sh/#install
*NVIM*
1. nvim: `brew install nvim` https://neovim.io/
2. vim-plug: `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'` https://github.com/junegunn/vim-plug
3. fuzzy: 


To install, git clone this into your machine, then run 

`$ ./osx [install|uninstall]`

Install will use stow to do smart symlink for each of the specified directory to the correct places.  
Only tested on macOS.

<img src="public/it_works_on_my_machine2.jpeg" alt="It works on my machine meme" width="300px">
