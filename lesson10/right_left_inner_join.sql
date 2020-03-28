USE shop;
# Вывести все типы товаров, которые не представлены в нашем магазине (то-есть отсутствуют в таблице product)
SELECT `type` FROM product
	RIGHT JOIN product_type ON `product-type_id` = product_type.id
    WHERE price IS NULL;
# Вывести информацию обо всех товарах, которые не попали ни в один из заказов
SELECT 
	brand.type AS brand, product_type.type AS product_type, name, discount, price, order_id, quantity 
    FROM product
	INNER JOIN product_type ON `product-type_id` = product_type.id
    INNER JOIN brand ON brand_id = brand.id
    INNER JOIN category ON category_id = category.id
    LEFT JOIN order_product ON product.id = order_product.product_id
    WHERE order_id IS NULL;