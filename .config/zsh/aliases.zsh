alias nvim="~/nvim-macos-x86_64/bin/nvim"
alias cd="z"

alias subl-root="cd /Users/alejandrovieyra && subl ."
alias subl-nvim="cd //Users/alejandrovieyra/.config/nvim/ && subl ."
alias subl-rclone="cd //Users/alejandrovieyra/.config/rclone/ && subl ."

# Paths

alias godocs="cd ~/Documents/"
alias gocode="cd ~/Documents/Code/"
alias godw="cd ~/Downloads/"
alias goconf="cd /Users/alejandrovieyra/.config/"
alias goconfnv="cd /Users/alejandrovieyra/.config/nvim"
alias goconfrc="cd /Users/alejandrovieyra/.config/rclone"

# Sync

alias sync-rootv="rclone --log-level NOTICE --log-file=/Users/alejandrovieyra/.config/rclone/log.txt --progress --filter-from /Users/alejandrovieyra/.config/rclone/filter.txt sync /Users/alejandrovieyra/Documents/Obsidian/Draco draco1d:Documents/Obsidian/Draco"
alias sync-nsfwv="rclone --log-level NOTICE --log-file=/Users/alejandrovieyra/.config/rclone/log.txt --progress --filter-from /Users/alejandrovieyra/.config/rclone/filter.txt sync /Users/alejandrovieyra/Documents/Obsidian/NSFW atreus_gd:Documents/Obsidian/NSFW"
alias sync-config="rclone --log-level NOTICE --log-file=/Users/alejandrovieyra/.config/rclone/log.txt --progress --filter-from /Users/alejandrovieyra/.config/rclone/filter.txt sync /Users/alejandrovieyra/.config/ draco1d:Backups/.config"
alias sync-zsh="rclone --log-level NOTICE --log-file=/Users/alejandrovieyra/.config/rclone/log.txt --progress --filter-from /Users/alejandrovieyra/.config/rclone/zsh-filter.txt sync /Users/alejandrovieyra/ draco1d:Backups/zsh"
