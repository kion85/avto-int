# FreedomUI Project

Этот репозиторий содержит сборки и конфигурации для проекта FreedomUI.

## Структура репозитория

*   `freedomUI-root/` - Основное ядро и образ системы.
*   `freedomUI/` - Расширенная сборка, включающая ядро, образ и утилиту QEMU для запуска.
*   `freedomISO/` - (Опционально) Сборка в формате ISO.

## Быстрый старт

Если вас не устраивают готовые сборки, вы можете собрать ядро Linux самостоятельно.

### Сборка собственного ядра (6.8.1)

1.  **Установите необходимые зависимости:**

    **Ubuntu/Debian:**
    ```bash
    sudo apt update
    sudo apt install build-essential libncurses-dev bison flex libssl-dev libelf-dev bc -y
    ```

    **Arch Linux:**
    ```bash
    sudo pacman -Syu --needed base-devel ncurses bc openssl elfutils
    ```

    **Fedora/RHEL:**
    ```bash
    sudo dnf groupinstall "Development Tools" -y
    sudo dnf install ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc -y
    ```

    **openSUSE:**
    ```bash
    sudo zypper install -t pattern devel_C_C++
    sudo zypper install ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc
    ```

2.  **Скачайте и распакуйте исходный код ядра:**
    ```bash
    wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.1.tar.xz
    tar -xf linux-6.8.1.tar.xz
    cd linux-6.8.1
    ```

3.  **Настройте и соберите ядро:**
    ```bash
    make menuconfig  # Графическая настройка конфигурации
    make -j$(nproc)  # Сборка с использованием всех ядер процессора
    sudo make modules_install
    sudo make install
    ```

После этого перезагрузите систему и выберите новое ядро в загрузчике.

## Использование готовых сборок

*   Для запуска сборки из папки `freedomUI` может потребоваться QEMU. Перейдите в директорию и следуйте инструкциям в соответствующем `README` (если есть).
*   Сборка `freedomISO` может быть записана на USB-носитель или запущена в виртуальной машине.

---

**Примечание:** Данный проект находится в активной разработке. Конфигурации и структура могут меняться.
