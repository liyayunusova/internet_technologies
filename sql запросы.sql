1. Получить общее количество каждого продукта во всех контрактах:

SELECT quantity_in_total
FROM Product
GROUP BY product_name;

2. Получить список клиентов, сделавших заказы со статусом "отменён":

SELECT c.client_id as client_id, full_name
FROM Client c
INNER JOIN Order o ON c.client_id = o.client_id
WHERE status = 'отменён';


3. Рассчитать общую выручку с каждого контракта:

SELECT c.number, SUM(p.quantity * s.price) as total_revenue
FROM Contract c
INNER JOIN Position1 p ON c.contract_number = p.contract_number
INNER JOIN Product pr ON p.product_id = pr.product_id
GROUP product_id;


4. Получить среднее количество продуктов на контракт:

SELECT AVG(quantity_in_contract) as average_quantity_in_contract
FROM position1;

5. Получить среднее количество продуктов в заказе:

SELECT AVG(quantity_in_order) as average_quantity_in_contract
FROM Position2;

6. Получить статус заказа и номер клиента, где статус "в обработке" для проверки менеджером

SELECT status, client_id
FROM Order
WHERE status == 'в обработке'
