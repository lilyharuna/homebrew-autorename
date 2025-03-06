# autorename
Monitor the path and automatically rename the new file with counter
------
# Install autorename
Step 1: Add official tap
```zsh
brew tap lilyharuna/autorename
```

Step 2: Install autorename:
```zsh
brew install autorename
```
------
# Update autorename
Step 1: Update tab
```zsh
brew update
```

Step 2: Update autorename
```zsh
brew upgrade autorename
```
------
# Uninstall autorename
Step 1: uninstall autorename
```zsh
brew uninstall autorename
```

Step 2: delete the official tap
```zsh
brew untapped lilyharuna/autorename
```
------
# Usage
This command automatically renames the file according to the counter when a file with the specified extension is added to the specified directory.
```zsh
autorename <directory_to_watch> [-p prefix] [-t extension] [-c digits] [-s start] [-e end]
```
