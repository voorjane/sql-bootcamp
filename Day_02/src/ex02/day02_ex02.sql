SELECT COALESCE(person.name, '-') AS person_name, visit_date, COALESCE(pizzeria.name, '-')AS pizzeria_name
FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS person_visits
FULL OUTER JOIN person ON person.id = person_visits.person_id
FULL OUTER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
ORDER BY person_name, visit_date, pizzeria_name;
