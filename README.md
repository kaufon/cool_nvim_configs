
# How to Install
I assume you have a basic understanding of Linux. For this guide, I'll be using Ubuntu.

## Step 1: Install Dependencies
First, ensure you have Homebrew installed. If not, follow the instructions on how to install it from [here](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-homebrew-on-linux).

### After Installing Homebrew:
Install the required packages using the following commands:

## Install Neovim
```bash
$ brew install neovim
```


## Install GCC
```bash
$ brew install gcc
```

## Install Ripgrep
```bash
$ sudo apt update && sudo apt install ripgrep -y
```


### Change Your Terminal Font
After installing the dependencies, you'll need to change your terminal font to a [Nerd Font](https://www.nerdfonts.com/), making sure it does <b>NOT</b> end with "Mono". Note that I faced several issues trying this in WSL due to conflicts with Windows user settings. Be aware that my solution might not work on your operating system, so proceed with caution.

- To change your font:
```bash
# Unzip your chosen font into the font directory
unzip MyFontGoesHere.zip -d ~/.fonts

# Rebuild your font cache
fc-cache -fv
```
## Step 2: Configure Neovim
Once you've navigated through the dependency installation process, clone my Neovim configuration repository and open Neovim:
```bash
git clone https://github.com/kaufon/cool_nvim_configs.git ~/.config/nvim && nvim
```
> Enjoy !

# Why use NeoVim
If you truly want to become a developer and escape the chains of the Soy based VSCode that the Microsoft heretics have been meddling in their basement together with the original sin,you will need a true IDE.So join now the NVIM cult to relish all the goods in the world and scare away the bugs
<p align="center">
  Done with ❤️ by Kauan Fonseca 
</p>
