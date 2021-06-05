CREATE DATABASE CUSTOMERS;
SHOW DATABASES;

USE CUSTOMERS;


CREATE TABLE CUSTOMERS ( 
ID INT NOT NULL, 
NAME VARCHAR (20) NOT NULL, 
AGE INT NOT NULL, 
ADDRESS CHAR (25) , 
SALARY DECIMAL (18, 2), 
PRIMARY KEY (ID) );

DESC CUSTOMERS;

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ); 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 ); 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (3, 'kaushik', 23, 'Kota', 2000.00 ); 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 );
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 ); 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (6, 'Komal', 22, 'MP', 4500.00 );
INSERT INTO CUSTOMERS VALUES (7, 'Muffy', 24, 'Indore', 10000.00 );

SELECT *
FROM CUSTOMERS;

SELECT ID, NAME, AGE, SALARY
FROM CUSTOMERS;

SELECT *
FROM CUSTOMERS
WHERE SALARY >2000;

SELECT *
FROM CUSTOMERS
WHERE NAME = "Hardik";


SELECT ID, NAME, SALARY
FROM CUSTOMERS
WHERE SALARY > 2000 AND AGE <25;

SELECT ID, NAME, SALARY
FROM CUSTOMERS
WHERE SALARY > 2000 OR AGE <25;


UPDATE CUSTOMERS
SET ADDRESS="PUNE"
WHERE ID=6;

DELETE FROM CUSTOMERS 
WHERE ID=6;

SELECT *
FROM CUSTOMERS 
WHERE SALARY LIKE "200%";

SELECT * 
FROM CUSTOMERS
WHERE SALARY LIKE "%200%";

SELECT *
FROM CUSTOMERS
WHERE SALARY LIKE "_00";

SELECT *
FROM CUSTOMERS
WHERE SALARY LIKE "2_%_%";

SELECT *
FROM CUSTOMERS
WHERE SALARY LIKE "%2";


SELECT *
FROM CUSTOMERS
LIMIT 3;

SELECT *
FROM CUSTOMERS
ORDER BY SALARY DESC LIMIT 3;


SELECT * 
FROM CUSTOMERS 
ORDER BY NAME, SALARY;

SELECT * 
FROM CUSTOMERS
ORDER BY  NAME DESC;

SELECT NAME, SUM(SALARY)
FROM CUSTOMERS
GROUP BY NAME;

SELECT SALARY
FROM CUSTOMERS 
ORDER BY SALARY DESC;

SELECT *
FROM CUSTOMERS;

SELECT *
FROM CUSTOMERS
ORDER BY (CASE ADDRESS
WHEN "DELHI" THEN 1
WHEN "BHOPAL" THEN 2
WHEN "KOTA" THEN 3
WHEN "AHMEDABAD" THEN 4
WHEN "MP" THEN 5
ELSE 100 END) ASC , ADDRESS DESC;






















