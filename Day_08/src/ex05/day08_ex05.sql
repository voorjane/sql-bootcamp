-- Both sessions
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;
-- Session 1
SELECT SUM(rating) FROM pizzeria;
-- Session 2
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Pizza Hut';
COMMIT;
-- Session 1
SELECT SUM(rating) FROM pizzeria;
COMMIT;
-- Both sessions
SELECT SUM(rating) FROM pizzeria;
