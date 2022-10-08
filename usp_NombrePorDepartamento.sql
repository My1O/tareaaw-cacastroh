-- 4) Crea un procedimiento almacenado que obtenga los datos generales de los empleados por departamento.
/*
SELECT * FROM HumanResources.Employee 
SELECT * FROM HumanResources.Department

*/
Alter PROC usp_DatosEmpleados
(
  @DepartmentName varchar(20)
)
AS
SELECT * FROM HumanResources.Employee WHERE JobTitle = @DepartmentName
GO

EXEC usp_DatosEmpleados 'Control Specialist'