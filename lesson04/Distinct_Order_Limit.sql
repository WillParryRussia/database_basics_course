USE shop;
# Получить название бренда с идентификатором 3
SELECT `name` FROM `brand` WHERE `id` = 3;

# Получить первые два типа товара
SELECT `type` FROM `product_type` LIMIT 2;

# Получить все категории товаров со скидкой меньше чем 10% и отсортировать по названию
SELECT `name`, `discount` FROM `category` WHERE `discount` < 10 ORDER BY `name` ASC;