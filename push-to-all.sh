#!/bin/bash

# Скрипт для пуша в оба репозитория одновременно
# FerrisMind - Оливиновая Лаборатория

echo "🚀 Запуск пуша в оба репозитория..."

# Пуш в GitHub
echo "📤 Пуш в GitHub..."
git push origin main
if [ $? -eq 0 ]; then
    echo "✅ GitHub: Успешно"
else
    echo "❌ GitHub: Ошибка"
fi

# Пуш в GitVerse
echo "📤 Пуш в GitVerse..."
git push gitverse main
if [ $? -eq 0 ]; then
    echo "✅ GitVerse: Успешно"
else
    echo "❌ GitVerse: Ошибка"
fi

echo "🎨 Пуш завершен!"
