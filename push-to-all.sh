#!/bin/bash

# Скрипт для пуша в GitHub
# FerrisMind - Оливиновая Лаборатория

echo "🚀 Запуск пуша в GitHub..."

# Пуш в GitHub
echo "📤 Пуш в GitHub..."
git push origin main
if [ $? -eq 0 ]; then
    echo "✅ GitHub: Успешно"
else
    echo "❌ GitHub: Ошибка"
fi

echo "🎨 Пуш завершен!"
