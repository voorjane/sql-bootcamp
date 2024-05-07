SELECT DISTINCT name
FROM person
CROSS JOIN person_order
ORDER BY name;
