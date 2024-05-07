CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name as pizzeria_name
FROM pizzeria
JOIN (SELECT pizzeria_id FROM menu WHERE price < 800) AS m ON pizzeria.id = m.pizzeria_id
JOIN (SELECT person_id, pizzeria_id FROM person_visits
    JOIN (SELECT id from person WHERE name = 'Dmitriy') AS n ON person_id = n.id
WHERE visit_date = '2022-01-08') AS v ON v.pizzeria_id = pizzeria.id;
