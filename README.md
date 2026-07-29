# Rekvi Dotfiles

> My personal Arch Linux setup

## Status:
(work in progress)

# EN version (Английская версия)
RU version below (Русская версия ниже)

## Description
First and foremost, I'm building the system for myself. At the moment, this repository mainly serves as a place to store the project and conveniently track its development and changes.

I created a project to learn how to work with Linux. I'm a newcomer here myself, which is actually why I took this up. So there might be mistakes or unconvintional solutions. If it's important for someone, I use AI here, but primarily for learning rather then for ready-made solutions. It helps me find information more quickly and easily.

---

## Project structure

- **docs/** - project documentation.
    - 'packages.md' - packages currently used by the project.
    - 'roadmap.md' - development roadmap.
    - 'ideas.md' - ideas for future improvements.

- **.config/** - configuration files

- **scripts/** - utility scripts used by the system.

- **install/** - installation scripts *(currently empty)*
    - Configuration files can be deployed either through GNU Stow **or** the installation scripts.
    - Packages can be installed through the installation script **or** manually (look 'packages.md').
    - **Helper scripts and additional utilities** are installed **only** through the installation scripts. You can try to install them manually, but it's not recommended.

- **assets/** - wallpapers, images, icons and other static resources used by the system *(currently empty)*.

---

# RU version (Русская версия)
Английская версия выше (EN version is above)

## Описание

В первую очередь я строю систему под себя. Сейчас этот репозиторий выступает как место для хранения проекта, где удобно отслеживать изменения и процесс разработки.

В целом я делаю этот проект чтобы обучится работе с Linux. Я новичек здесь, поэтому и решил заняться полной сборкой системы своими руками. Так что здесь могут быть какие-либо ошибки или нестандартные решения. Если кому то важно, да я пользуюсь ИИ, но не как готовые ответы, а как удобный и быстрый поиск информации.

---

## Структура проекта

- **docs/** - докуменация проекта.
    - 'packages.md' - список программных пакетов, используемые в проекте на данный момент.
    - 'roadmap.md' - план развития проекта.
    - 'ideas.md' - идеи для внедрения в проект *(но не включенные на данный момент в план)*.

- **.config/** - конфигурации проекта.

- **scripts/** - вспомогательные скрипты системы
- **install/** - скрипты установки *(пока отсутствуют)*
    - Файлы конфигураций могут быть установлены через GNU Stow **или** через скрипт установки
    - Пакеты могут быть установлены через скрипт установки **или** вручную (смотрите 'packages.md')
    - **Вспомогательные скрипты и дополнительные утилиты** могут быть установлены через **скрипт установки**. Вы можете попробовать установить их вручную, но я не уверен что это сработает.
- **assets** - используемые системой ресурсы: обои, изображения, иконки и другие статические файлы. *(пока отсутствуют)*
