SELECT 'YOUNGEST' as TYPE, NAME, BIRTHDAY as BIRTHDAY
FROM worker
WHERE BIRTHDAY IN (
    SELECT BIRTHDAY
    FROM worker
    ORDER BY BIRTHDAY DESC
 LIMIT 1)

UNION

SELECT 'OLDEST' as TYPE, NAME, BIRTHDAY as BIRTHDAY
FROM worker
WHERE BIRTHDAY IN (
    SELECT BIRTHDAY
    FROM worker
    ORDER BY BIRTHDAY
    LIMIT 1);
