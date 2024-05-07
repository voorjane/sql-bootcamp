SELECT address, pizzeria.name, COUNT(address) AS count_of_orders
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person_order.person_id = person.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY address, pizzeria.name
ORDER BY address, pizzeria.name;
