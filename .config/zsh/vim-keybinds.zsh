bindkey -v
bindkey -M vicmd '^k' kill-whole-line
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd '^l' clear-screen
bindkey -M vicmd '/' history-incremental-search-backward

# Autosuggest

bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search