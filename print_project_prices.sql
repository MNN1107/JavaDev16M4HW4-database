SELECT p.NAME AS NAME,
    SUM(w.SALARY * (DATEDIFF(MONTH, p.START_DATE, p.FINISH_DATE))) AS PRICE
    FROM project p
    JOIN project_worker pw ON p.ID = pw.PROJECT_ID
    JOIN worker w ON pw.WORKER_ID = w.ID
    GROUP BY p.NAME
    ORDER BY PRICE DESC;