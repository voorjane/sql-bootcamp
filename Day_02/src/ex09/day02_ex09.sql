SELECT person.name
FROM person
JOIN (SELECT name
    FROM person
        JOIN person_order ON person.id = person_order.person_id
        JOIN menu m on person_order.menu_id = m.id
    WHERE pizza_name = 'pepperoni pizza') as pep ON pep.name = person.name
JOIN (SELECT name
    FROM person
        JOIN person_order ON person.id = person_order.person_id
        JOIN menu m on person_order.menu_id = m.id
    WHERE pizza_name = 'cheese pizza') as che ON che.name = person.name
WHERE gender = 'female'
ORDER BY name;
