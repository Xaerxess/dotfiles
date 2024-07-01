dotfiles
========

My configuration files (.zshrc, .gitconfig, etc.).

I follow [Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles).

Instructions:

    alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    echo ".cfg" >> .gitignore
    git clone --bare git@github.com:Xaerxess/dotfiles.git $HOME/.cfg
    config config --local status.showUntrackedFiles no
    config config core.sparseCheckout true
    echo '/*
    !^README.md
    !^LICENSE' > $HOME/.cfg/info/sparse-checkout
    config checkout

