SELECT name FROM person
JOIN (SELECT person_id FROM menu
    JOIN person_order ON menu.id = person_order.menu_id
    WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza') AS p ON person_id = person.id
WHERE (address = 'Moscow' OR address = 'Samara') AND gender = 'male'
ORDER BY name DESC;
