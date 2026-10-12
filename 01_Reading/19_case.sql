/*
CASE
Lección 10.13: https://youtu.be/OuJerKzV5T0?t=9486
*/

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de cadenas de texto según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de valores booleanos según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;


---
SELECT * , DATEDIFF(YEAR,BirthDate,GETDATE())  AS Age
FROM users
ORDER BY CASE  
            WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) > 18 THEN 1
            WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) BETWEEN 40 AND 60 THEN 2
            ELSE 3
    END DESC , DATEDIFF(YEAR,BirthDate,GETDATE())
