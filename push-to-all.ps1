# PowerShell скрипт для пуша в GitHub
# FerrisMind - Оливиновая Лаборатория

Write-Host "🚀 Запуск пуша в GitHub..." -ForegroundColor Cyan

# Пуш в GitHub
Write-Host "📤 Пуш в GitHub..." -ForegroundColor Yellow
try {
    git push origin main
    Write-Host "✅ GitHub: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitHub: Ошибка" -ForegroundColor Red
}

Write-Host "🎨 Пуш завершен!" -ForegroundColor Magenta
