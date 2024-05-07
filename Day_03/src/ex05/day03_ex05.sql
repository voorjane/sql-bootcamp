(SELECT pizzeria.name as pizzeria_name
    FROM person_visits
    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    JOIN person ON person_visits.person_id = person.id
WHERE person.name = 'Andrey')

EXCEPT

(SELECT pizzeria.name as pizzeria_name
    FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    JOIN person ON person_order.person_id = person.id
WHERE person.name = 'Andrey')
ORDER BY pizzeria_name;
