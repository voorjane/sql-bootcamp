SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM person_visits
JOIN person ON person.id = person_visits.person_id
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;
