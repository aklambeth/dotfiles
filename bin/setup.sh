#!/bin/bash

# Define the block of code to append
to_append='if [ -f "$DOTFILES/bash/bashrc" ]; then
    . "$DOTFILES/bash/bashrc"
fi'

# Check if the code block already exists in .bashrc
if ! grep -q 'if [ -f "$DOTFILES/bash/bashrc" ]; then' ~/.bashrc; then
     echo -e "\n$to_append" >> ~/.bashrc
     echo "Updated .bashrc"
else
     echo "Done. .bashrc is already updated"
fi