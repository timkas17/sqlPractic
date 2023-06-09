SELECT fullName
FROM
  employees
WHERE
  salary = (SELECT min(salary) FROM employees);