INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
(
  SELECT row_number() OVER () AS id,
  person_id,
  pizzeria.id,
  CASE
    WHEN (COUNT(person_id)) = 1 THEN 10.5
    WHEN (COUNT(person_id)) = 2 THEN 22
    ELSE 30
  END
  FROM person_order, pizzeria
  GROUP BY person_id, pizzeria.id
);
