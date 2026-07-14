
#!/bin/bash

set -e
REPO_URL="https://github.com/corwin71/shvirtd-example-python.git"
TARGET_DIR="/opt/shvirtd-example-python"



# Git clone

if [ -d "$TARGET_DIR" ]; then
    echo "Удаляем старое приложение"
    rm -rf "$TARGET_DIR"
    echo "Git clone"
	
    git clone "$REPO_URL" "$TARGET_DIR"
    cd "$TARGET_DIR"

else 
    echo "Git clone"
    git clone "$REPO_URL" "$TARGET_DIR"
    cd "$TARGET_DIR"

fi
    echo "Запуск проекта через Docker Compose..."
    docker compose --env-file ./.env up


