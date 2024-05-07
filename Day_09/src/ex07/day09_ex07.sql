CREATE OR REPLACE FUNCTION func_minimum(IN arr ANYARRAY) RETURNS TABLE (minvalue NUMERIC)
AS $$
  BEGIN
    RETURN QUERY
    SELECT MIN(val) FROM UNNEST(arr) as val;
  END;
  $$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
