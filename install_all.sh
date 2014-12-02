cp .bash_aliases .bash_common .vimrc ~

SIGNATURE="# Created by https://github.com/dgboy2000/dotfiles"

# Only install gitconfig if one does not exist
if [ -f ~/.gitconfig ]
then
  echo "~/.gitconfig already exists; skipping git setup"
else
  cp .gitconfig ~/.gitconfig
fi

# Create blank .bash_profile
if [ -f ~/.bash_profile ]
then
  echo "~/.bash_profile already exists"
else
  echo "Creatting ~/.bash_profile" && touch ~/.bash_profile
fi

# Install .bash_aliases and .bash_common
(cat ~/.bash_profile | grep .bash_aliases || echo "
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi" >> ~/.bash_profile) >> /dev/null 2>&1

(cat ~/.bash_profile | grep .bash_common || echo "
if [ -f ~/.bash_common ]; then
. ~/.bash_common
fi" >> ~/.bash_profile) >> /dev/null 2>&1

# Turn off beep on tab-completion
touch ~/.inputrc
echo "set bell-style none $SIGNATURE" >> ~/.inputrc
