SELECT p.firstName, p.LastName, p.address, p.DNI, p.personId, lawyerId, clientId 
   FROM Person p
        INNER JOIN Client on p.personId = clientId  
        INNER JOIN lawyer on p.personId = lawyerId 
   