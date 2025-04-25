if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Exports
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export EDITOR=~/nvim-macos-x86_64/bin/nvim

# Starship
# eval "$(starship init zsh)"
# export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Oh My Zsh config
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    web-search
    aliases
    virtualenv
    extract
    copypath
    rust
)

# Plugins 
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Custom imports
source ~/.config/zsh/tokens.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/keybinds.zsh
source ~/.config/zsh/sync.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

