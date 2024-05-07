SELECT DISTINCT person.name AS name, pizza_name, price, price - (price / 100 * discount) AS discount_price, pizzeria.name AS pizzeria_name
FROM person
JOIN person_discounts ON person.id = person_discounts.person_id
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY name, pizza_name;
