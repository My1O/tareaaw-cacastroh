-- 1 - Cree una vista de las que muestre un listado de los productos descontinuados. 
-- Los productos (Production.Product) descontinuados son aquellos cuyo valor en DiscontinuedDate es distinto de NULL

/*  Verifica si hay registros o todos son nulls
If exists (Select ProductID, [Name], DiscontinuedDate From Production.Product WHERE DiscontinuedDate IS NULL)
Print 'Existen registros'
Else
Select ProductID,[Name], DiscontinuedDate  FROM Production.Product WHERE DiscontinuedDate IS NOT NULL
print 'Todos son nulls'
*/

-- Vista de productos descontinuados
Create VIEW ProductosDescontinuados
AS
SELECT ProductID, Name, DiscontinuedDate FROM Production.Product WHERE DiscontinuedDate IS NOT NULL

-- SELECT * FROM ProductosDescontinuados
