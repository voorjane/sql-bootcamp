SELECT pizza_name, pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN (SELECT menu_id FROM person_order
JOIN (SELECT id FROM person WHERE name = 'Denis' OR name = 'Anna') AS pi
    ON pi.id = person_order.person_id) AS pn ON pn.menu_id = menu.id
ORDER BY pizza_name, pizzeria_name;
