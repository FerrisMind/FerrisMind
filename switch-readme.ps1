# PowerShell скрипт для автоматического переключения README в зависимости от репозитория
# FerrisMind - Оливиновая Лаборатория

Write-Host "🔄 Переключение README для разных репозиториев..." -ForegroundColor Cyan

# Определяем текущий remote
$currentRemote = git remote get-url origin

if ($currentRemote -like "*github.com*") {
    Write-Host "📤 Настройка для GitHub (английская версия)..." -ForegroundColor Yellow
    Copy-Item "README.en.md" "README.md" -Force
    Write-Host "✅ README.md настроен для GitHub (английский)" -ForegroundColor Green
} elseif ($currentRemote -like "*gitverse.ru*") {
    Write-Host "📤 Настройка для GitVerse (русская версия)..." -ForegroundColor Yellow
    Copy-Item "README.ru.md" "README.md" -Force
    Write-Host "✅ README.md настроен для GitVerse (русский)" -ForegroundColor Green
} else {
    Write-Host "⚠️ Неизвестный репозиторий, используем английскую версию по умолчанию" -ForegroundColor Yellow
    Copy-Item "README.en.md" "README.md" -Force
}

Write-Host "🎨 Переключение завершено!" -ForegroundColor Magenta
