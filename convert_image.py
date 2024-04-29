from PIL import Image

input_image_path = 'input_image.jpg'  # Путь к исходному изображению
output_image_path = 'background.bmp'  # Путь для сохранения преобразованного изображения

# Открываем исходное изображение
image = Image.open(input_image_path)

# Преобразовываем изображение в заданный формат (1280x720, 32-бит true colour RGBA)
image = image.resize((1280, 720))
image = image.convert('RGBA')

# Сохраняем преобразованное изображение
image.save(output_image_path)

print(f'Изображение успешно преобразовано и сохранено по пути: {output_image_path}')
