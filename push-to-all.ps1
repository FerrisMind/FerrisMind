# PowerShell скрипт для пуша в оба репозитория одновременно
# FerrisMind - Оливиновая Лаборатория

Write-Host "🚀 Запуск пуша в оба репозитория..." -ForegroundColor Cyan

# Пуш в GitHub
Write-Host "📤 Пуш в GitHub..." -ForegroundColor Yellow
try {
    git push origin main
    Write-Host "✅ GitHub: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitHub: Ошибка" -ForegroundColor Red
}

# Пуш в GitVerse
Write-Host "📤 Пуш в GitVerse..." -ForegroundColor Yellow
try {
    git push gitverse main
    Write-Host "✅ GitVerse: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitVerse: Ошибка" -ForegroundColor Red
}

Write-Host "🎨 Пуш завершен!" -ForegroundColor Magenta
