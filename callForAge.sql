--Devuelta el total de casos por cliente para el a;o 2020.
SELECT count (FileId)'fileId', firstName, LastName
  FROM proceeding
      INNER JOIN Person on  personId = clientId
  WHERE startDate >= '2019-01-01'
    AND endDate <= '2020-12-31' 
  GROUP BY firstName, LastName
