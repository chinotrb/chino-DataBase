SELECT lawyerId, lp.FileId, startDate, endDate, saveDate, clientId, p1.DNI, p1.firstName, p1.LastName
  FROM lawyerProceeding lp
       INNER JOIN proceeding p on lp.FileId = p.FileId 
       INNER JOIN Person p1 on personId = clientId
 WHERE LastName = 'ricardo';

  