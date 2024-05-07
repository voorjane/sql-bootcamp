INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT
    (SELECT max(id) + 1 FROM person_visits),
    (SELECT id FROM person WHERE name = 'Dmitriy'),
    (SELECT id FROM pizzeria WHERE name = 'DoDo Pizza'),
    '2022-01-08';

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
