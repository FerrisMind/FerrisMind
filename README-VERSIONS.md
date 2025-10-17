# 🦀 FerrisMind - Оливиновая Лаборатория

## Многоязычные README файлы

### 📋 Структура файлов:

1. **README.en.md** — Английская версия (для GitHub)
2. **README.ru.md** — Русская версия (для GitVerse)  
3. **README.pt-br.md** — Португальская бразильская версия
4. **README.md** — Активная версия (автоматически переключается)

### 🚀 Автоматическое переключение README:

#### Способ 1: Через улучшенные скрипты пуша
```bash
# Windows PowerShell
./push-to-all.ps1

# Linux/Mac
./push-to-all.sh
```
*Автоматически переключает README перед пушем в каждый репозиторий*

#### Способ 2: Ручное переключение
```bash
# Windows PowerShell
./switch-readme.ps1

# Linux/Mac
./switch-readme.sh
```

#### Способ 3: Ручное копирование
```bash
# Для GitHub (английский)
cp README.en.md README.md

# Для GitVerse (русский)
cp README.ru.md README.md

# Для португальского
cp README.pt-br.md README.md
```

### 📝 Логика переключения:

- **GitHub** → Английская версия (README.en.md)
- **GitVerse** → Русская версия (README.ru.md)
- **По умолчанию** → Английская версия

### 🔗 Репозитории:

- **GitHub:** https://github.com/FerrisMind/FerrisMind (английский README)
- **GitVerse:** https://gitverse.ru/FerrisMind/FerrisMind (русский README)

### 🎨 Философия проекта:

_«Культура есть благоухание, сочетание жизни и Красоты»_ — Н.К. Рерих
