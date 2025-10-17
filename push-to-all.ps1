# PowerShell скрипт для пуша в GitHub и GitVerse с автоматическим переключением README
# FerrisMind - Оливиновая Лаборатория

Write-Host "🚀 Запуск пуша в оба репозитория с переключением README..." -ForegroundColor Cyan

# Пуш в GitHub (английская версия)
Write-Host "📤 Пуш в GitHub (английская версия)..." -ForegroundColor Yellow
try {
    Copy-Item "README.en.md" "README.md" -Force
    git add README.md
    git commit -m "Update README for GitHub (English version)" -m "Automatically switched to English version for GitHub repository"
    git push origin master
    Write-Host "✅ GitHub: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitHub: Ошибка" -ForegroundColor Red
}

# Пуш в GitVerse (русская версия)
Write-Host "📤 Пуш в GitVerse (русская версия)..." -ForegroundColor Yellow
try {
    Copy-Item "README.ru.md" "README.md" -Force
    git add README.md
    git commit -m "Update README for GitVerse (Russian version)" -m "Automatically switched to Russian version for GitVerse repository"
    git push gitverse master
    Write-Host "✅ GitVerse: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitVerse: Ошибка" -ForegroundColor Red
}

Write-Host "🎨 Пуш завершен!" -ForegroundColor Magenta
