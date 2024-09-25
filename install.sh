#!/bin/bash

# Variables
DOTFILES_DIR=~/dotfiles     # Path to your dotfiles repo
BACKUP_DIR=~/dotfiles_backup # Backup folder for existing dotfiles
FILES_TO_SYMLINK=(".bash_profile" ".bash_aliases") # List of dotfiles to symlink

# Loop through each file and create symlink
for file in "${FILES_TO_SYMLINK[@]}"; do
    if [ -f ~/"$file" ] || [ -h ~/"$file" ]; then
        # Create backup directory if it doesn't exist
        mkdir -p "$BACKUP_DIR"

        echo "Backing up existing $file to $BACKUP_DIR"
        mv ~/"$file" "$BACKUP_DIR/"
    fi

    # Create symlink from the dotfiles repo to the home directory
    echo "Creating symlink for $file"
    ln -s "$DOTFILES_DIR/$file" ~/"$file"
done

# Check if ~/.bashrc exists
if [ -f ~/.bashrc ]; then
    # Append export PS1 to ~/.bashrc
    echo 'export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[00m\] $ "' >> ~/.bashrc
fi

echo "Dotfiles installation complete!"
