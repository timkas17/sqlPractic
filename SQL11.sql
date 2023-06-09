UPDATE employees
SET
  salary = salary * (50 + 10 / 100)
WHERE
  department = 7;