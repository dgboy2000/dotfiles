cp .bash_aliases .bash_common .vimrc ~

# Only install gitconfig if one does not exist
if [ -f ~/.gitconfig ]
then
  echo "~/.gitconfig already exists; skipping git setup"
else
  cp .gitconfig ~/.gitconfig
fi

# Install .bash_aliases and .bash_common
(cat ~/.bash_profile | grep .bash_aliases || echo "
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi" >> ~/.bash_profile) >> /dev/null

(cat ~/.bash_profile | grep .bash_common || echo "
if [ -f ~/.bash_common ]; then
. ~/.bash_common
fi" >> ~/.bash_profile) >> /dev/null
