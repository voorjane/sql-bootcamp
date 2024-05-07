-- Both sessions
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
-- Session 2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;
-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
-- Both sessions
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
