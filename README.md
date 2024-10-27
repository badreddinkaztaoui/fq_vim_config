# Vim Configuration Setup

## Prerequisites

* **Vim**: Ensure you have Vim installed on your system.
* **Vim Plug**: A plugin manager for Vim. You can install it using the following command in your terminal:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Steps
1. Clone the Repository
Clone this repository to your local machine:

```bash
  git clone https://github.com/badreddinkaztaoui/fq_vim_config.git
  cd fq_vim_config && mv vimrc .vimrc && mv .vimrc ~/
```

2. Install Plugins
Open Vim and run the following command to install the plugins listed in your .vimrc file:

```bash
  vim
  :PlugInstall
```

3. Configure Vim
Your .vimrc file, located in your ~/.vim/ directory, contains your Vim configuration settings. You can customize it to your liking.
