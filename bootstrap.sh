#!/usr/bin/env bash

git pull origin master;

function doIt() {
    
    create_links $HOME/.zshrc $HOME/.dotfiles/.zshrc
    create_links $HOME/.gitconfig $HOME/.dotfiles/.gitconfig
    create_links $HOME/.gitignore_global $HOME/.dotfiles/.gitignore_global

	source $HOME/.zshrc;

}

function create_links() {

    mkdir -p $HOME/.dotfiles_backup
    mv -f $1 $HOME/.dotfiles_backup

    if [ -f $1 ] && [ ! -L $1 ]
    then
        echo "$file is a valid file"
        rm $1
    elif [ -f $1 ] && [ ! -L $1 ]   
        echo "$file is a symlink"
        unlink $1
    fi

    ln -sfn $2 $1
        
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;