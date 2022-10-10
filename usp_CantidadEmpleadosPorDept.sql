-- 6 - Crea un procedimiento que obtenga la cantidad de empleados por departamento ordenados por nombre de departamento,
-- si no se especifica DepartmentID entonces deberá retornar todos los datos.

-- SELECT * FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer'

ALTER PROC usp_CantidadEmpleados
(
  @DepartmentName varchar(100)
)
AS
IF @DepartmentName = NULL
BEGIN
SELECT e.JobTitle, count (*) AS TotalEmpleados
FROM HumanResources.Employee e
Where JobTitle = @DepartmentName
GROUP BY JobTitle
END
ELSE
BEGIN
	SELECT * FROM HumanResources.Employee
END
GO

-- Exec usp_CantidadEmpleados ''