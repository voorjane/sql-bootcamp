CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson VARCHAR DEFAULT 'Dmitriy',
  pprice NUMERIC DEFAULT 500, pdate DATE DEFAULT '2022-01-08') RETURNS
    TABLE (
    pizzeria_name VARCHAR)
  AS $$
      SELECT pizzeria.name FROM person_visits
      JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
      JOIN person_order ON pizzeria.id = person_order.person_id
      JOIN menu ON pizzeria.id = menu.pizzeria_id AND menu.id = person_order.person_id
      JOIN person ON person_visits.person_id = person.id
      WHERE person.name = pperson AND price < pprice AND visit_date = pdate
  $$ LANGUAGE sql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);

SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
