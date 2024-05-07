SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM menu
JOIN (SELECT id FROM menu
        EXCEPT (SELECT menu_id FROM person_order)) AS m ON menu.id = m.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, price;
