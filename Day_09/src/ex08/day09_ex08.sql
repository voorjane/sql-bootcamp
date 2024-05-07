CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10) RETURNS TABLE (number INTEGER)
AS $$
WITH RECURSIVE fib(a,b) AS (
      VALUES(0,1)
    UNION ALL
      SELECT GREATEST(a,b), a + b as a from fib
      WHERE b < pstop
    )
    SELECT a FROM fib;
$$ LANGUAGE sql;

SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci();