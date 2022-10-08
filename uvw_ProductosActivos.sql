-- 2 - Crea una vista que muestre un listado de productos (Production.Product) activos con sus respectivas
-- categorías (Production.ProductCategory), -- subcategorías (Production.ProductSubcategory) y
-- modelo (Production.ProductModel). Deben mostrarse todos los productos activos aunque no tengan modelo asociado.

Create VIEW ProductosActivos
AS
/*  Datos que se filtraron por tablas
SELECT * FROM Production.Product -- ProductID,ProductModelID,Name,ProductNumber
SELECT * FROM Production.ProductCategory  -- ProductCategoryID, Name
SELECT * FROM Production.ProductSubcategory -- ProductSubcategoryID,Name
SELECT * FROM Production.ProductModel -- ProductModelID,Name,CatalogDescription
*/

SELECT P.ProductID, P.ProductModelID AS ProductoModelo ,P.[Name], P.ProductNumber, PC.ProductCategoryID, PC.[Name] AS NombreCategoria, 
PSC.ProductSubcategoryID,PSC.[Name] AS NombreSubCategoria, PM.ProductModelID AS ProductoModeloSubCategoria,
PM.[Name] AS NombreModelo,PM.CatalogDescription
FROM Production.Product P
INNER JOIN Production.ProductCategory PC
ON P.ProductSubcategoryID = PC.ProductCategoryID
INNER JOIN Production.ProductSubcategory PSC
ON PC.ProductCategoryID = PSC.ProductSubcategoryID
FULL OUTER JOIN  Production.ProductModel PM
ON PSC.ProductCategoryID = PM.ProductModelID

-- SELECT * FROM ProductosActivos