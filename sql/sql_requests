UPDATE `online-shop`.`order`
SET `status` = 'Canceled'
WHERE `product_quantity` = 0;

SELECT *
FROM `mydb`.`order`
WHERE `client_email` = 'test_email@example.com';

SELECT * FROM `mydb`.`product` WHERE `name` = 'Product A';

SELECT * FROM `mydb`.`manager`;

SELECT `client_email`, COUNT(*) AS `order_count`
FROM `mydb`.`order`
WHERE `client_email` = 'client1@example.com'
GROUP BY `client_email`;

SELECT c.`number`, c.`date`, m.`name` AS `manager_name`, p.`name` AS `product_name`
FROM `mydb`.`contract` c
JOIN `mydb`.`manager` m ON c.`manager_manager_id` = m.`manager_id`
JOIN `mydb`.`product` p ON c.`product_name` = p.`name`
WHERE m.`manager_id` = 1;

