# 🦀 FerrisMind - Оливиновая Лаборатория
## Настройка двойного пуша в GitHub и GitVerse

### 📋 Что было настроено:

1. **Локальный Git репозиторий** - инициализирован
2. **Удаленные репозитории:**
   - `origin` → GitHub (https://github.com/FerrisMind/FerrisMind.git)
   - `gitverse` → GitVerse (https://gitverse.com/FerrisMind/FerrisMind.git)

### 🚀 Способы пуша в оба репозитория:

#### Способ 1: Автоматический пуш через origin
```bash
git push origin main
```
*Будет пушить в оба репозитория одновременно*

#### Способ 2: Использование скриптов
```bash
# Linux/Mac
./push-to-all.sh

# Windows PowerShell
./push-to-all.ps1
```

#### Способ 3: Ручной пуш в каждый репозиторий
```bash
git push origin main
git push gitverse main
```

### 📝 Следующие шаги:

1. **Создайте репозитории на платформах:**
   - GitHub: https://github.com/new
   - GitVerse: https://gitverse.com/new

2. **Название репозитория:** `FerrisMind`

3. **После создания репозиториев выполните:**
   ```bash
   git push origin main
   ```

### 🎨 Философия проекта:
*«Культура есть благоухание, сочетание жизни и Красоты»* — Н.К. Рерих
