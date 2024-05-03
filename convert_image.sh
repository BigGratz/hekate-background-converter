#!/bin/bash

# Путь к исходному изображению
input_image="path/to/your/input/image.png"

# Путь к выходному изображению
output_image="path/to/your/output/image.bmp"

# Преобразование изображения
convert "$input_image" -resize 720x1280 -depth 8 -alpha on "$output_image"
