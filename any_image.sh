#!/bin/bash

# Путь к текущей папке
current_dir=$(pwd)

# Проходим по всем файлам изображений в текущей папке
for image_file in *.jpg *.jpeg *.png *.gif *.bmp; do
    # Имя файла без расширения
    base_name=$(basename "$image_file" .${image_file##*.})

    # Преобразование изображения в BMP
    convert "$image_file" -resize 720x1280 -depth 8 -type TrueColor -define bmp:format=bmp3 "${base_name}.bmp"

    echo "Преобразован файл: ${base_name}.bmp"
done
