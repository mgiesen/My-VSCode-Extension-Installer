#!/bin/bash

echo
echo "The following extensions are already installed:"
echo

# Listing already installed extensions
extensions=($(code --list-extensions))

for extension in "${extensions[@]}"
do
  echo "- $extension"
done
echo
echo "Would you like to install the following extensions?"
echo

# List of desired extensions
extensions=(
  "SimonSiefke.svg-preview" 
  "ritwickdey.LiveServer" 
  "shd101wyy.markdown-preview-enhanced"
  "rangav.vscode-thunder-client"
  "PKief.material-icon-theme"
  "hediet.vscode-drawio"
  "esbenp.prettier-vscode"
  "bierner.markdown-mermaid"
  "EditorConfig.EditorConfig"
)

for extension in "${extensions[@]}"
do
  echo "- $extension"
done

echo
echo "Proceed by pressing 'Enter'"
read -r

echo

# Installing extensions
for extension in "${extensions[@]}"
do
  echo "Installing extension: $extension"
  code --install-extension "$extension"
  if [ $? -ne 0 ]; then
    echo "Error installing extension: $extension"
  else
    echo "Extension successfully installed: $extension"
  fi
done

echo
echo "Installation is complete"
