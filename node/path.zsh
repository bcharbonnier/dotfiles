# Clone the zsh-nvm plugin (https://github.com/lukechilds/zsh-nvm#manually)
if ! [[ -a ~/.zsh-nvm ]]
then
  git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm
fi

# Load the zsh-nvm plugin
if [[ -a ~/.zsh-nvm ]]
then
  source ~/.zsh-nvm/zsh-nvm.plugin.zsh
fi