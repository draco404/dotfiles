backup_files() {
    local target_dir="$HOME/Documents/Backups/" # Define the backup folder
    mkdir -p "$target_dir" # Ensure the target directory exists

    for file in "$@"; do
        if [ -f "$file" ]; then
            cp "$file" "$target_dir/${file##*/}.back" # Save backup to ~/Documents
            echo "Backup created: $target_dir/${file##*/}.back"
        else
            echo "Skipping: $file is not a regular file."
        fi
    done
}
