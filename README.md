# Dotfiles Installation Guide

This document will walk you through installing and configuring the necessary tools to get your bash environment up and running.

## Prerequisites

Make sure to install the following:

1. **GNU Stow**: A symlink manager for managing your dotfiles. You can find it here: [GNU Stow](https://www.gnu.org/software/stow/).

   - **Debian-based Linux**: Install using `sudo apt install stow`
   - **macOS**: Install using Homebrew with `brew install stow`

2. **Oh My Posh**: A prompt theme engine for any shell. Installation instructions are available here: [Oh My Posh](https://ohmyposh.dev/).

   - **Debian-based Linux**: Install using `[Copy](javascript:copyTextToClipboard(curl -s https://ohmyposh.dev/install.sh | bash)`
   - **macOS**: Install using Homebrew with `[Copy](javascript:copyTextToClipboard(brew install oh-my-posh)`

3. **Nerd Fonts**: Required for correct prompt rendering. Download a Nerd Font of your choice from [Nerd Fonts](https://www.nerdfonts.com/).

## Installation Steps

1. **Clone the Repository**

   Clone the dotfiles repository along with its submodules by running the following command in your terminal:

   ```sh
   git clone --recurse-submodules https://github.com/aklambeth/dotfiles-bash.git ~/.dotfiles
   ```

2. **Configure Your Shell**

   To include the customized bash settings, append the following code to your `.bashrc` file in your home directory:

   ```sh
   if [ -f "$DOTFILES/bash/bashrc" ]; then
       . "$DOTFILES/bash/bashrc"
   fi
   ```

   Alternatively, you can automate the setup process by running:

   ```sh
   ~/.dotfiles/bin/setup.sh
   ```

3. **Merge Custom PATH and Aliases**

   Manually merge any custom PATH settings and alias definitions from `~/.profile` and `~/.bash_aliases` into the corresponding `.profile` and `.bash_aliases` files in `.dotfiles/bash`, then delete the original `~/.profile` and `~/.bash_aliases` files from your home directory to avoid errors when running Stow:

   - `~/.profile -> ~/.dotfiles/bash/.profile`
   - `~/.bash_aliases -> ~/.dotfiles/bash/.bash_aliases`

4. **Apply Dotfiles Using GNU Stow**

   Navigate to the `.dotfiles` directory:

   ```sh
   cd ~/.dotfiles
   ```

   Use GNU Stow to link the bash and oh-my-posh configurations:

   ```sh
   stow -S bash && stow -S oh-my-posh
   ```

5. **Restart Your Terminal**

   Finally, restart your terminal to apply the changes and enjoy your new shell setup.

## Troubleshooting

- If the prompt does not display correctly, ensure that you have a Nerd Font installed and configured as your terminal font.
- Make sure GNU Stow, Oh My Posh, and other prerequisites are installed correctly and in your system's PATH.

---

Happy hacking! 🎉

