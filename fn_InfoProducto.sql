/*
8 - Cree una función que obtenga retorne el Id del producto, nombre del producto, cantidad total de ventas, monto total de ventas. 
La función debe tener dos parámetros @StartDate y @EndDate, los parámetros pueden ser nulos, 
si no especifican las fechas deberá retornar los datos correspondientes al mes actual.
***************------------------*************************************------------------*************************************---
*/
CREATE FUNCTION fn_InfoProductos (@StartDate char(8), @EndDate char(8))
RETURNS @InfoProducto TABLE (IdProducto int, NombreProducto varchar(100),Cantidad int,Total Decimal(20,2), IdOrden int, FechaOrden varchar(20))
AS
BEGIN
	INSERT INTO @InfoProducto(IdProducto, NombreProducto, Cantidad, Total, IdOrden, FechaOrden)
	SELECT P.ProductID, P.[Name], SOD.OrderQty, SOD.LineTotal, SOD.SalesOrderID, SOH.OrderDate FROM Production. Product P
	INNER JOIN Sales.SalesOrderDetail SOD 
	ON SOD.ProductID = P.ProductID
	INNER JOIN Sales.SalesOrderHeader SOH
	ON SOH.SalesOrderID = SOD.SalesOrderID
	WHERE(P.SellStartDate= @StartDate AND P.SellEndDate= @EndDate)
	RETURN
END
/*
SELECT * FROM dbo.fn_InfoProductos('20120530','20130529')
SELECT * FROM Production.Product
*/
