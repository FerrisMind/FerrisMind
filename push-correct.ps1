# PowerShell скрипт для правильного пуша с переключением README
# FerrisMind - Оливиновая Лаборатория

Write-Host "🚀 Запуск правильного пуша с переключением README..." -ForegroundColor Cyan

# Сначала пушим в GitHub с английской версией
Write-Host "📤 Пуш в GitHub (английская версия)..." -ForegroundColor Yellow
try {
    # Переключаем на английскую версию
    Copy-Item "README.en.md" "README.md" -Force
    Write-Host "✅ Переключен на английскую версию" -ForegroundColor Green
    
    # Добавляем изменения
    git add README.md
    git commit -m "Switch to English README for GitHub" -m "Automatically switched to English version for GitHub repository"
    
    # Пушим в GitHub
    git push origin master
    Write-Host "✅ GitHub: Успешно запушено" -ForegroundColor Green
} catch {
    Write-Host "❌ GitHub: Ошибка - $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host ""

# Теперь пушим в GitVerse с русской версией
Write-Host "📤 Пуш в GitVerse (русская версия)..." -ForegroundColor Yellow
try {
    # Переключаем на русскую версию
    Copy-Item "README.ru.md" "README.md" -Force
    Write-Host "✅ Переключен на русскую версию" -ForegroundColor Green
    
    # Добавляем изменения
    git add README.md
    git commit -m "Switch to Russian README for GitVerse" -m "Automatically switched to Russian version for GitVerse repository"
    
    # Пушим в GitVerse
    git push gitverse master
    Write-Host "✅ GitVerse: Успешно запушено" -ForegroundColor Green
} catch {
    Write-Host "❌ GitVerse: Ошибка - $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host ""
Write-Host "🎨 Пуш завершен! Проверьте репозитории:" -ForegroundColor Magenta
Write-Host "GitHub: https://github.com/FerrisMind/FerrisMind" -ForegroundColor Cyan
Write-Host "GitVerse: https://gitverse.ru/FerrisMind/FerrisMind" -ForegroundColor Cyan
