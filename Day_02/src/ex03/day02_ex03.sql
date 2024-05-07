WITH cte_gs AS
    (SELECT gs.date FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS gs)

SELECT cte.date FROM cte_gs AS cte
LEFT JOIN (SELECT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2) AS pv ON visit_date = cte.date
WHERE visit_date IS NULL;
