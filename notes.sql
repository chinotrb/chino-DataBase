-- query every field
SELECT * FROM Persons

--Query only name and last name
SELECT name, lastName FROM Persons

--Query name and lastName only for id 1
SELECT name, lastName FROM Persons WHERE PersonId = 1

--Query name and lastName only for id IN 1, 2 ,4
SELECT name, lastName FROM Persons WHERE PersonId IN (1,2,4)

  -- 3 tables example --
SELECT p.name, p.lastName, c.value, c.type 
     --union tablas -- 
   FROM Persons p 
        INNER JOIN Contacts c ON p.PersonId = c.PersonId
        INNER JOIN archivos a on 
  -- condiciones--
  WHERE p.PersonId = 1


UPDATE Persons SET LastName = 'Jimenez' WHERE PersonId = 1

  SELECT p.personId, p.id, p.name, p.lastName, c.value, c.type 
  FROM Persons p 
       RIGHT JOIN Contacts c ON p.PersonId = c.PersonId  
  ORDER BY p.PersonId

DELETE Contacts WHERE PersonId = 5

  --sum , count and group or order--
  select sum(price) 'sum', count(price) 'count',
   supplierid from products where supplierid > 5 
    group by () 
    order by count desc

  --count 2 things in the same row option 1
SELECT count (countryOrigin) ,countryOrigin
  FROM Animal
  GROUP BY countryOrigin

  --count 2 things in the same row optio 2 
SELECT zooAnimal.zooId,name,
--ejemplo 
  count (*) AS TotalAnimales,
    sum (CASE WHEN gender = 'macho' then 1  else 0 end) as macho,
    sum (CASE WHEN gender = 'Hembra' then 1 else 0 end) as hembra
  FROM Animal
        INNER JOIN zooAnimal on zooAnimal.animalId = Animal.animalId 
        INNER JOIN zoo on zoo.zooId = zooAnimal.zooId 
  GROUP BY zooAnimal.zooId,name;  
  

