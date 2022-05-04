USE mydb2;

DELETE FROM Reply WHERE board_id = 5;
-- ROLLBACK;
DELETE FROM Board
WHERE id = 5;
COMMIT;

SELECT * FROM Reply WHERE board_id = 6;