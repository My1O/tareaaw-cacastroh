-- 3 - Crea una consulta que obtenga los datos generales de los empleados (HumanResources.Employee) 
-- del departamento (HumanResources.Department) ‘Document Control’.

SELECT * FROM HumanResources.Employee WHERE JobTitle Like '%Document Control%'
--SELECT * FROM HumanResources.Department WHERE [Name] = 'Document Control'