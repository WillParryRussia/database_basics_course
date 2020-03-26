use shop;
# Выбрать название бренда с ID = 2
SELECT `type` FROM `brand` WHERE `id` = 3;
# Получить первые два типа товара
SELECT `type` FROM product_type WHERE `id` <=2;
# Получить все категории товаров со скидкой меньше 10%
SELECT * FROM `category` WHERE `discount` < 10;