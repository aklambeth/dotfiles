#!/bin/zsh

# Define the block of code to append
to_append='if [ -f "$DOTFILES/zsh/zshrc" ]; then
    . "$DOTFILES/zsh/zshrc"
fi'

# Check if the code block already exists in .zshrc
if ! grep -F '$DOTFILES/zsh/zshrc' ~/.zshrc; then
     echo -e "\n$to_append" >> ~/.zshrc
     echo "Updated .zshrc"
else
     echo "Done. .zshrc is already updated"
fi