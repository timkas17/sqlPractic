SELECT fullName as 'ФИО'
     , min(salary) as 'Минимальная зарплата'
FROM
  employees;