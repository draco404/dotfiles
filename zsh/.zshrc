# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

export homebrew_github_api_token=ghp_w6ml7ypivqmnxoz87dvhsrlxi2ohga20k3rh

plugins=(
    git
    web-search
    aliases
    virtualenv
    extract
    copypath
    rust
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
alias cd="z"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# export MANPATH="/usr/local/man:$MANPATH"

__conda_setup="$('/Users/alejandrovieyra/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/alejandrovieyra/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/alejandrovieyra/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/alejandrovieyra/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# eval "$(starship init zsh)"

source ~/.zsh-config/aliases.paths.zsh
source ~/.zsh-config/aliases.apps.zsh
source ~/.zsh-config/aliases.sync.zsh
source ~/.zsh-config/vim-keybinds.zsh

source ~/.zsh-config/git-functions.zsh
source ~/.zsh-config/backups.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

