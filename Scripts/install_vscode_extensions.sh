#!/bin/bash

# Script para instalar extensiones de VS Code
# Guardar como install_vscode_extensions.sh y ejecutar: bash install_vscode_extensions.sh

echo "=========================================="
echo "Instalando extensiones de VS Code..."
echo "=========================================="

# Lista de extensiones a instalar
EXTENSIONS=(
    # Python
    "ms-python.python"
    "ms-python.vscode-pylance"
    
    # C/C++
    "ms-vscode.cpptools"
    
    # Amazon Q
    "amazonwebservices.amazon-q-vscode"
    
    # Color Highlight
    "naumovs.color-highlight"
    
    # Image Preview
    "kisstkondoros.vscode-gutter-preview"
    
    # Prettier
    "esbenp.prettier-vscode"
    
    # Live Share
    "ms-vsliveshare.vsliveshare"
    
    # GitLens
    "eamodio.gitlens"
    
    # Polacode
    "pnp.polacode"
    
    # CodeSnap
    "adpyke.codesnap"
    
    # ESLint
    "dbaeumer.vscode-eslint"
    
    # Indent Rainbow
    "oderwat.indent-rainbow"
    
    # Live Server
    "ritwickdey.liveserver"
    
    # Auto Close Tag
    "formulahendry.auto-close-tag"
    
    # Auto Rename Tag
    "formulahendry.auto-rename-tag"
    
    # Material Icon Theme
    "pkief.material-icon-theme"
    
    # Bracket Pair Colorization
    "coenraads.bracket-pair-colorizer-2"
    
    # Better Comments
    "aaron-bond.better-comments"
    
    # Path Intellisense
    "christian-kohler.path-intellisense"
    
    # VS Code Icons
    "vscode-icons-team.vscode-icons"
    
    # Live Preview
    "ms-vscode.live-server"
    
    # JavaScript and TypeScript Nightly
    "ms-vscode.vscode-typescript-next"
    
    # Tailwind CSS IntelliSense
    "bradlc.vscode-tailwindcss"
)

# Instalar cada extensión
for extension in "${EXTENSIONS[@]}"; do
    echo "Instalando: $extension"
    code --install-extension "$extension"
    
    # Verificar si la instalación fue exitosa
    if [ $? -eq 0 ]; then
        echo "✓ $extension instalada correctamente"
    else
        echo "✗ Error al instalar $extension"
    fi
    echo "------------------------------------------"
done

echo "=========================================="
echo "¡Instalación completada!"
echo "=========================================="

# Mostrar extensiones instaladas
echo ""
echo "Extensiones instaladas:"
code --list-extensions