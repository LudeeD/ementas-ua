sudo pip3 install xmltodict # Install dependency

CAMINHO=$(pwd)              # Get current path
BASHRC="$HOME/.bashrc"
ZSHRC="$HOME/.zshrc"
COMMAND="\"python3 $CAMINHO/ementas@ua.py\""

# Check if alias already exists

# Check Configuration file
# Either bashrc or zshrc
if [ -f "$BASHRC" ]; then
    echo "bashrc found"

    if ! grep -q "^alias ementa=" "$BASHRC"; then
        # Create alias
        printf "\n## Ementa UA Script ##\nalias ementa=$COMMAND" >> $BASHRC
    fi
elif [ -f "$ZSHRC" ]; then
    echo "zshrc found"

    if ! grep -q "^alias ementa=" ~/.zshrc; then
        # Create alias
        printf "\n## Ementa UA Script ##\nalias ementa=$COMMAND" >> $ZSHRC
    fi
fi
