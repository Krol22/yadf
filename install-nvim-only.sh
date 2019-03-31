if [ -d "$HOME/.config/nvim" ] ;then
    echo "Override your current nvim configuration (.config/nvim)? (y/n)? "
    read answer
    if [ "$answer" != "${answer#[Yy]}" ] ;then
        cp -r ./nvim ~/.config
    fi
else
    cp -r ./nvim ~/.config
fi
