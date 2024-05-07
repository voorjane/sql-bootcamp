-- Both sessions
BEGIN;
-- Session 1
UPDATE pizzeria SET name = 'Hola hola pizza' WHERE id = 1;
-- Session 2
UPDATE pizzeria SET name = '52 pizza' WHERE id = 2;
-- Session 1
UPDATE pizzeria SET name = 'Ku pizza' WHERE id = 2;
-- Session 2
UPDATE pizzeria SET name = 'Rvinnie pizza' WHERE id = 1;
-- Both sessions
COMMIT;
