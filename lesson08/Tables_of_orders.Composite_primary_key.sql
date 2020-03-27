# Создаём таблицу Order где будет храниться информация о заказе и заказчике и заполняем её
CREATE TABLE `order` (
	`id` INT NOT NULL AUTO_INCREMENT, 
    `user_name` VARCHAR(128) NOT NULL, 
    `user_phone` VARCHAR(128) NOT NULL, 
    `order_date` DATETIME NOT NULL, 
PRIMARY KEY(`id`));
INSERT INTO `shop`.`order` (
	`user_name`, `user_phone`, `order_date`) VALUES (
    'John', '256-123-4411', '2020-03-27 23:26');
# Создаём таблицу Order_product, где будем хранить информацию об ID заказа 
# (из вышепредставленной таблицы) и ID заказанного товара
CREATE TABLE `shop`.`order_procuct` (
	`order_id` INT NOT NULL,
    `product_id` INT NOT NULL,
    `quantity` INT,
PRIMARY KEY(`order_id`, `product_id`));
# Заполняем эту таблицу
INSERT INTO `shop`.`order_product` ( `order_id`, `product_id`, `quantity`) VALUES ( 1, 2, 5);
INSERT INTO `shop`.`order_product` ( `order_id`, `product_id`, `quantity`) VALUES ( 1, 4, 1);
# Добавляем взаимосвязь в виде внешних ключей
ALTER TABLE `shop`.`order_product` 
ADD CONSTRAINT `for-key_order-id`
  FOREIGN KEY (`order_id`)
  REFERENCES `shop`.`order` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `for-key_product-id`
  FOREIGN KEY (`product_id`)
  REFERENCES `shop`.`product` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;