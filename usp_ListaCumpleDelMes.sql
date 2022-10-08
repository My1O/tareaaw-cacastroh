-- 5 - Crea un procedimiento que obtenga lista de cumpleañeros del mes ordenados alfabéticamente por el primer apellido y 
-- por el nombre del departamento, 
-- si no se especifica DepartmentID entonces deberá retornar todos los datos.

-- SELECT * FROM HumanResources.Employee
-- SELECT * FROM Person.Person
CREATE PROC usp_ListaCumpleEmpleado
AS
BEGIN
SELECT e.JobTitle,e.BirthDate,pp.LastName FROM HumanResources.Employee e
INNER JOIN Person.Person pp
ON pp.BusinessEntityID = e.BusinessEntityID
ORDER BY DATEPART(month,e.BirthDate),pp.LastName,e.JobTitle
END
GO

-- EXEC usp_ListaCumpleEmpleado