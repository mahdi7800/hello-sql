/*
ORDER BY
Lección 9.3: https://youtu.be/OuJerKzV5T0?t=6592
*/

-- Ordena todos los datos de la tabla "users" por edad (ascendente por defecto)
SELECT * FROM users ORDER BY age;

-- Ordena todos los datos de la tabla "users" por edad de manera ascendente
SELECT * FROM users ORDER BY age ASC;

-- Ordena todos los datos de la tabla "users" por edad de manera descendente
SELECT * FROM users ORDER BY age DESC;

----
SELECT *
FROM Employees
ORDER BY CASE  
            WHEN age < 40  THEN 1
            WHEN age BETWEEN 40 AND 60 THEN 2
            ELSE 3
    END DESC , age

-- Obtiene todos los datos de la tabla "users" con email igual a sara@gmail.com y los ordena por edad de manera descendente
SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

-- Obtiene todos los nombres de la tabla "users" con email igual a sara@gmail.com y los ordena por edad de manera descendente
SELECT name FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;
