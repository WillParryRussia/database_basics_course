USE shop;
# С помощью команды UPDATE заполнить alias_name для всех категорий 
UPDATE `category` SET `alias_name` = 'Women''s clothing' WHERE `id` = 1;
UPDATE `category` SET `alias_name` = 'Men''s clothing' WHERE `id` = 2;
UPDATE `category` SET `alias_name` = 'Women''s shoes' WHERE `id` = 3;
UPDATE `category` SET `alias_name` = 'Jewelry' WHERE `id` = 4;

# Добавить новый брэнд "Тётя Клава Company"
INSERT INTO `brand` (`type`) VALUES ('Тётя Клава Company');

# Удалить этот брэнд
DELETE FROM `brand` WHERE `id` = 4; -- WHERE `type` = 'Тётя Клава Company'