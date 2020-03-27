USE `shop`;
ALTER TABLE `shop`.`product`
	ADD CONSTRAINT `for-key_brand`
    FOREIGN KEY (`brand_id`)
    REFERENCES `shop`.`brand`(`id`)
    ON UPDATE NO ACTION
    ON DELETE CASCADE;
ALTER TABLE `shop`.`product`
	ADD CONSTRAINT `for-key_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `shop`.`category`(`id`)
    ON UPDATE NO ACTION
    ON DELETE CASCADE;
ALTER TABLE `shop`.`product`
	ADD CONSTRAINT `for-key_type`
    FOREIGN KEY (`product-type_id`)
    REFERENCES `shop`.`product_type`(`id`)
    ON UPDATE NO ACTION
    ON DELETE CASCADE;