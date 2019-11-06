#!/usr/bin/env bash

git pull origin master;

function doIt() {
    
    create_links $HOME/.zshrc $HOME/.dotfiles/.zshrc
    create_links $HOME/.gitconfig $HOME/.dotfiles/.gitconfig
    create_links $HOME/.gitignore_global $HOME/.dotfiles/.gitignore_global

	echo 'source $HOME/.zshrc ..... '
    source $HOME/.zshrc;

}

function create_links() {

    echo 'Linking' $1

    mkdir -p $HOME/.dotfiles_backup
    mv -f $1 $HOME/.dotfiles_backup

    if [ -f $1 ] && [ ! -L $1 ]
    then
        echo "$file is a valid file"
        rm $1
    else   
        echo "$file is a symlink"
        unlink $1
    fi

    ln -sfn $2 $1
        
}

doIt;

unset doIt;