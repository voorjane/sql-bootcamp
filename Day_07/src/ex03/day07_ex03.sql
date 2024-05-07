WITH order_count AS (SELECT pizzeria.name AS name, COUNT(menu_id) AS count
  FROM person_order
  JOIN menu ON person_order.menu_id = menu.id
  JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
  GROUP BY name
  ORDER BY count DESC)
, visit_count AS (SELECT pizzeria.name AS name, COUNT(pizzeria_id) AS count
  FROM person_visits
  JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
  GROUP BY name
  ORDER BY count DESC
 )
SELECT pizzeria.name AS name, COALESCE(order_count.count, 0) + COALESCE(visit_count.count, 0) AS total_count
   FROM pizzeria
   JOIN order_count ON order_count.name = pizzeria.name
   JOIN visit_count ON visit_count.name = pizzeria.name
ORDER BY total_count DESC, name;
