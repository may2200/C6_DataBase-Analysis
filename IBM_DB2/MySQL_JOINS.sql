
-- /////////////// Create EMPLOYEES Mysql Database //////////////////////

-- //////////// 1. JOINS //////////////////////

SELECT column_name(s)
FROM table1
CROSS JOIN table2;

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
WHERE condition;

SELECT column_name(s)
FROM table1
LEFT OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

SELECT column_name(s)
FROM table1
RIGHT OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

-- /////////////
SELECT column_name(s)
FROM table1
LEFT  OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition

UNION

SELECT column_name(s)
FROM table1
RIGHT  OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition
-- ///////////////////

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;


-- //////////// Practice  //////////////////////

 