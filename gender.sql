--informacion de una fila dividad en 2 o mas 
SELECT zooAnimal.zooId,name,
--ejemplo 
  count (*) AS TotalAnimales,
  sum (CASE WHEN gender = 'macho' then 1  else 0 end) as macho,
  sum (CASE WHEN gender = 'Hembra' then 1 else 0 end) as hembra
  FROM Animal
        INNER JOIN zooAnimal on zooAnimal.animalId = Animal.animalId 
        INNER JOIN zoo on zoo.zooId = zooAnimal.zooId 
  GROUP BY zooAnimal.zooId,name;  
  

