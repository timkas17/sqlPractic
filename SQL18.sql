SELECT fullName
FROM
  employees
WHERE
  salary = (SELECT max(salary)
            FROM
              employees);