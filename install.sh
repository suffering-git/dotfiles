#!/bin/bash
# Install claude code
# echo "Installing Claude CLI..."
# npm install -g @anthropic-ai/claude-code

# Install gemini CLI
echo "Installing Gemini CLI..."
npm install -g @google/gemini-cli

# Install vs code extensions
if command -v code > /dev/null; then
    echo "Installing VS Code extensions..."
    code --install-extension google.gemini-cli-vscode-ide-companion
    # code --install-extension anthropic.claude-code
    code --install-extension github.remotehub
    echo "VS Code extensions installation complete."
else
    echo "VS Code 'code' command not found. Skipping extension installation."
fi


