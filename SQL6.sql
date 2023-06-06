SELECT fullName as 'ФИО'
     , max(salary) as 'Максимальная зарплата'
FROM
  employees;