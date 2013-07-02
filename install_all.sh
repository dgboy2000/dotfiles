cp .bash_aliases .bash_common .vimrc ~

# Only install gitconfig if one does not exist
if [ -f ~/.gitconfig ]; then
  cp .gitconfig ~
else
  echo "~/.gitconfig already exists; skipping git setup"
fi

# Install .bash_aliases and .bash_common
cat ~/bash_profile | grep .bash_aliases || echo "
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi" >> ~/.bash_profile

cat ~/bash_profile | grep .bash_common || echo "
if [ -f ~/.bash_common ]; then
. ~/.bash_common
fi" >> ~/.bash_profile
