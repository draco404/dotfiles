# Define the clone function
clone_repo() {
  if [ -z "$1" ]; then
    echo "Usage: clone_repo <GitHub URL>"
    return 1
  fi

  # Extract username and repository name from the URL
  local URL=$1
  local USERNAME=$(echo "$URL" | awk -F '/' '{print $4}')
  local REPO=$(echo "$URL" | awk -F '/' '{print $5}' | sed 's/.git$//')

  # Check if username and repository name are valid
  if [ -z "$USERNAME" ] || [ -z "$REPO" ]; then
    echo "Invalid GitHub URL. Please provide a full URL like: https://github.com/user/repo.git"
    return 1
  fi

  # Construct folder name
  local FOLDER="${USERNAME}_${REPO}"

  # Clone the repository into the custom folder name
  echo "Cloning repository $URL into folder $FOLDER..."
  git clone "$URL" "$FOLDER"
}

# Example Usage:
# Clone the repository with the custom folder name
# clone_repo "https://github.com/josean-dev/dev-environment-files"
