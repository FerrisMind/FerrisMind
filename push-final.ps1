# PowerShell скрипт для правильного пуша в оба репозитория
# FerrisMind - Оливиновая Лаборатория

Write-Host "🚀 Правильный пуш в оба репозитория..." -ForegroundColor Cyan

# Пуш в GitHub с английской версией
Write-Host "📤 Пуш в GitHub (английская версия)..." -ForegroundColor Yellow
try {
    Copy-Item "README.en.md" "README.md" -Force
    git add README.md
    git commit -m "Update README for GitHub (English version)"
    git push origin master
    Write-Host "✅ GitHub: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitHub: Ошибка" -ForegroundColor Red
}

Write-Host ""

# Пуш в GitVerse с русской версией
Write-Host "📤 Пуш в GitVerse (русская версия)..." -ForegroundColor Yellow
try {
    Copy-Item "README.ru.md" "README.md" -Force
    git add README.md
    git commit -m "Update README for GitVerse (Russian version)"
    
    # Сначала получаем изменения
    git pull gitverse master --no-edit
    git push gitverse master
    Write-Host "✅ GitVerse: Успешно" -ForegroundColor Green
} catch {
    Write-Host "❌ GitVerse: Ошибка" -ForegroundColor Red
}

Write-Host ""
Write-Host "🎨 Пуш завершен!" -ForegroundColor Magenta
Write-Host "GitHub: https://github.com/FerrisMind/FerrisMind" -ForegroundColor Cyan
Write-Host "GitVerse: https://gitverse.ru/FerrisMind/FerrisMind" -ForegroundColor Cyan
