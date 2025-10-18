#!/bin/bash

# Обновление системы
echo "Обновление пакетов..."
sudo apt update && sudo apt upgrade -y

# Установка git
echo "Установка git..."
sudo apt install git -y

# Клонирование репозиториев
echo "Клонирование репозиториев..."
git clone https://github.com/kion85/freedomUI-root.git
git clone https://github.com/kion85/freedomUI.git
git clone https://github.com/kion85/freedomISO.git

# Установка QEMU и компонентов
echo "Установка QEMU и компонентов..."
sudo apt install qemu qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager -y

# Открытие Google Drive в браузере (по умолчанию Google Chrome)
echo "Открытие Google Drive ссылки в браузере..."
xdg-open "https://drive.google.com/file/d/1C1WN2iDx9YNnpAjsWfLXz67550lTz8In/view?usp=drive_link"

# Создание HTML страницы с ссылкой на репозиторий freedomUI
echo "Создание HTML страницы..."
cat <<EOL > freedomUI.html
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>FreedomUI Repository</title>
</head>
<body>
    <h1>Ссылка на репозиторий FreedomUI</h1>
    <a href="https://github.com/kion85/freedomUI" target="_blank">Перейти на GitHub</a>
</body>
</html>
EOL

echo "Скрипт завершен!"

