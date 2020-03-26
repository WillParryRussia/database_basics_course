# Создаём таблицу продуктов с внешними ключами
CREATE TABLE `shop`.`product` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `brand_id` INT NOT NULL,
    `product-type_id` INT NOT NULL,
    `category_id` INT NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
PRIMARY KEY(`id`));
# И заполняем её данными
INSERT INTO `shop`.`product` (
	`brand_id`, `product-type_id`, `category_id`, `price`) VALUES
    (1, 2, 2, 100);
INSERT INTO `shop`.`product` (
	`brand_id`, `product-type_id`, `category_id`, `price`) VALUES
    (5, 4, 6, 20);
INSERT INTO `shop`.`product` (
	`brand_id`, `product-type_id`, `category_id`, `price`) VALUES
	(6, 5, 4, 250);