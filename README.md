# nvim

My minimal, plugins-only NeoVim configuration.

## Installation

1. Clone in `~/.config`:

    ```
    cd ~/.config
    git clone https://github.com/gcapizzi/nvim
    ```

1. Install [`vim-plug`](https://github.com/junegunn/vim-plug):

    ```
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

1. Install plugins:

    ```
    nvim
    :PlugInstall
    ```

1. Enjoy 🙂
