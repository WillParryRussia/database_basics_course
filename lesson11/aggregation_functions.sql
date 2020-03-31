# COUNT , MAX , MIN , SUM
USE shop;
SELECT min(price) FROM product;
SELECT max(price) FROM product;
SELECT sum(price) FROM product;
SELECT count(*) FROM product;

# Homework
# Общая таблица тех, кто заказал, со стоимость товаров, ассортиментом и количеством
SELECT user_name, product_id, price, quantity 
	FROM order_product 
    INNER JOIN `order` ON order_id = `order`.id 
    INNER JOIN product ON product_id = product.id;

# Вывести суммарную стоимость заказа клиента John
SELECT sum(price*quantity) AS 'John''s order' FROM order_product 
	INNER JOIN `order` ON order_id = `order`.id 
    INNER JOIN product ON product_id = product.id 
    WHERE user_name = 'John';

# Вывести суммарную стоимость заказа клиента Michael
SELECT sum(price*quantity) AS 'Michael''s order' FROM order_product 
	INNER JOIN `order` ON order_id = `order`.id 
    INNER JOIN product ON product_id = product.id 
    WHERE user_name = 'Michael';