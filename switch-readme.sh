#!/bin/bash

# Скрипт для автоматического переключения README в зависимости от репозитория
# FerrisMind - Оливиновая Лаборатория

echo "🔄 Переключение README для разных репозиториев..."

# Определяем текущий remote
CURRENT_REMOTE=$(git remote get-url origin)

if [[ $CURRENT_REMOTE == *"github.com"* ]]; then
    echo "📤 Настройка для GitHub (английская версия)..."
    cp README.en.md README.md
    echo "✅ README.md настроен для GitHub (английский)"
elif [[ $CURRENT_REMOTE == *"gitverse.ru"* ]]; then
    echo "📤 Настройка для GitVerse (русская версия)..."
    cp README.ru.md README.md
    echo "✅ README.md настроен для GitVerse (русский)"
else
    echo "⚠️ Неизвестный репозиторий, используем английскую версию по умолчанию"
    cp README.en.md README.md
fi

echo "🎨 Переключение завершено!"
