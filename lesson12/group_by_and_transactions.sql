# Group By and Having Requests
USE shop;

SELECT user_name, sum(price * quantity) FROM order_product
	INNER JOIN product ON product_id = product.id
    INNER JOIN `order` ON order_id = `order`.id
    GROUP BY `order`.user_name;
    
SELECT user_name, max(price) FROM order_product
	INNER JOIN product ON product_id = product.id
    INNER JOIN `order` ON order_id = `order`.id
    GROUP BY `order`.user_name;

# Для фильтрации запросов, по вычисленному с помощью агрегирующих функций полю,
# команда WHERE не подходит, поэтому нужно использовать специальноое ключевое слово
# HAVING
SELECT user_name, sum(price * quantity) AS basket_sum FROM order_product
	INNER JOIN product ON product_id = product.id
    INNER JOIN `order` ON order_id = `order`.id
    GROUP BY `order`.user_name
    HAVING basket_sum > 300;
    
# Добавление индекса к столбцу
ALTER TABLE product
	ADD INDEX index_product (product_type ASC);

# Transactions
CREATE table user_bank_account
	(`id` INT NOT NULL AUTO_INCREMENT,
    `money` DECIMAL(10,2) NOT NULL,
    `username` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`));
INSERT INTO user_bank_account (money, username) VALUES (100, 'John');
INSERT INTO user_bank_account (money, username) VALUES (200, 'Mike');

# Пользователь Джон переводит пользователю Майку 50 У.Е.
UPDATE shop.user_bank_account SET money = money - 50 WHERE id = 1;
UPDATE shop.user_bank_account SET money = money + 50 WHERE id = 2;
SELECT * FROM user_bank_account;

# Но нам нужно гарантированно, чтобы обе команды были выполнены как одно целое
# потому что если выполнится только одна команда, это может скоррумпировать всю базу
# Мы можем объединить все такие команды (которые должны гарантированно выполнятся как
# одно целое) в одну транзакцию
START TRANSACTION;
	UPDATE user_bank_account SET money = money - 50 WHERE id = 2;
    UPDATE user_bank_account SET money = money + 50 WHERE id = 1;
COMMIT;
SELECT * FROM user_bank_account;