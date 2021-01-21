SELECT count (FileId) 'cases', DNI, firstName, LastName, address
  FROM Person 
      INNER JOIN lawyerProceeding on lawyerId = personId

GROUP BY  DNI, firstName, LastName, address
