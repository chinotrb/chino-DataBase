DELETE zooAnimal;
DELETE zoo;
DELETE Animal;
DELETE species;

  SET IDENTITY_INSERT species ON
INSERT INTO species 
       ( speciesId, name, scientificName, family)
  VALUES
        ('1','gorlla', 'gorilla', 'Primates'),
        ('2','snake', 'Serpentes', 'snakes'),
        ('3','Wolf', 'Canis lupus', 'Canidae'),
         ('4','Elephants ', 'Elephantidae', 'herbivorous'),
         ('5','Deer', 'Cervidae', 'Cervidae'),
          ('6','Bears ', 'Ursidae', 'Ursidae'),
          ('7','Sloths ', 'Folivora', 'Folivora'), 
          ('8','Tiger ', 'Panthera tigris', 'Felidae'),   
        ('9','Chimpanzee', 'Pan troglodytes', 'Great apes'),
        ('10','Penguins ', 'Spheniscidae', 'flightless birds'),
        ('11','Lion', 'Panthera leo', 'Felidae');
SET IDENTITY_INSERT species OFF

  SET IDENTITY_INSERT zoo ON
INSERT INTO zoo 
       ( zooId, name, city, country, size, budget)
VALUES 
       ('1', 'juan', 'guanacaste','Costa Rica', '1000m', '12312153'),
       ('2', 'ZooA', 'puntarenas','Costa Rica', '1000m', '1224564123'),
       ('3', 'zoo juanita', 'heredia','Costa Rica', '1000m', '1224564123'),
       ('4', 'zoo africa', 'guanacaste','Costa Rica', '1000m', '1224564123'),
       ('5', 'zoo juaquin', 'limon','Costa Rica', '1000m', '1224564123'),
       ('6', 'los manantiales', 'cartago','Costa Rica', '1000m', '1224564123'),
       ('7', 'zoo carre', 'san jose','Costa Rica', '1000m', '1224564123'),
       ('8', 'zoo parck', 'puntarenas','Costa Rica', '1000m', '1224564123'),
       ('9', 'zoo new', 'alajuela','Costa Rica', '1000m', '1224564123'),
       ('10', 'la penta', 'alajuela','Costa Rica', '1000m', '1224564123'),
       ('11', 'lolo', 'heredia','Costa Rica', '1500m', '1225445641283');
  SET IDENTITY_INSERT zoo OFF

  SET IDENTITY_INSERT Animal ON
INSERT INTO Animal
       ( speciesId, animalId  , IdAnimal, gender, birth, countryOrigin, continent)
  VALUES
        ('1','1', '12','macho','13/1/6','Costa rica','america'),
        ('2','2' ,'13','macho','10/7/6','Africa','Australia'),
        ('3','3' ,'153','macho','10/7/6','Africa','Australia'),
        ('4','4' ,'13','macho','10/7/6','Africa','Australia'),
        ('5','5' ,'713','macho','10/7/6','Africa','Australia'),
        ('6','6' ,'123','macho','10/7/6','Africa','Australia'),
        ('7','7' ,'173','macho','10/7/6','Africa','Australia'),
        ('8','8' ,'313','macho','10/7/6','Africa','Australia'),
        ('9','9' ,'1.3','macho','10/7/6','Africa','Australia'),
        ('10','10' ,'13','macho','10/7/6','Africa','Australia'),
        ('11','11' ,'173','macho','10/7/6','Africa','Australia');


   SET IDENTITY_INSERT Animal OFF

  INSERT zooAnimal 
        ( animalId, zooId)
  VALUES
        ('2','3'),
        ('1','2'),
        ('3','1');




