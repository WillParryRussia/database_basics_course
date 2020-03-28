# Объединение таблиц в одном запросе
# Inner join, right/left join, outer join
use `shop`;
SELECT * FROM `product`
	INNER JOIN `category` ON `product`.`category_id` = `category`.`id`;
SELECT `product`.`id`,`brand_id`,`product-type_id`,`name`,`discount`,`alias_name`,`price` FROM `product`
	INNER JOIN `category` ON `product`.`category_id` = `category`.`id`;
#  Домашнее задание : вывести полную информацию о всех футболках
SELECT `product`.`id`,`brand`.`type` AS `brand`,`product_type`.`type`,`name`,`discount`,`alias_name`,`price` 
	FROM `product`
	INNER JOIN `category` ON `product`.`category_id` = `category`.`id`
    INNER JOIN `brand` ON `product`.`brand_id` = `brand`.`id`
    INNER JOIN `product_type` ON `product`.`product-type_id` = `product_type`.`id`
    WHERE `product_type`.`type` = 'T-Shirt';