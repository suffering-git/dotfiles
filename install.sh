#!/bin/bash

# Define the path to your custom theme .vsix file
THEME_VSIX_PATH="$HOME/.dotfiles/cobaltish-theme-1.0.1.vsix"

# Install the custom theme using the VS Code CLI
if [ -f "$THEME_VSIX_PATH" ]; then
    echo "Installing custom VS Code theme from $THEME_VSIX_PATH..."
    code --install-extension "$THEME_VSIX_PATH" --force
else
    echo "Custom theme .vsix file not found at $THEME_VSIX_PATH. Skipping installation."
fi

# Install Claude CLI
echo "Installing Claude CLI..."
npm install -g @anthropic-ai/claude-code

# Install VS Code extensions
EXTENSIONS=(
    "anthropic.claude-code"
    # add more extensions here
)
echo "Installing VS Code extensions..."
for extension in "${EXTENSIONS[@]}"; do
    echo "Installing $extension..."
    code --install-extension "$extension" --force
done
