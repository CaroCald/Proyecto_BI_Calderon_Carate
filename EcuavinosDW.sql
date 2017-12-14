create database EcuavinosDW
use EcuavinosDW

/***************************************************
*                                                  *
*				DIMENSION PRODUCTO           *
*                                                  *
***************************************************/
drop table dimProducto
create table dimProducto(
	ProductoID int primary key,
	Descripcion varchar(50),
	Grupo varchar (30),
	VolumenProduccion int,
	CostoPorDocena float
)

/***************************************************
*                                                  *
*				DIMENSION TERRITORIO			   *
*                                                  *
***************************************************/
drop table dimTerritorio
create table dimTerritorio
(
	TerritorioID int primary key,
	Ciudad varchar(30),
	Pais varchar(30)
)
go


/***************************************************
*                                                  *
*				DIMENSION FECHA					   *
*                                                  *
***************************************************/
--drop table dimFecha
--delete from dimFecha
create table dimFecha(
fechaID int primary key,
fecha datetime,
Año char(4),
Mes varchar(4),
Trimestre varchar(2)

)

/***************************************************
*                                                  *
*         INSERTAR DATOS DIMENSION FECHA           *
*                                                  *
***************************************************/

DECLARE @StartDate DATETIME = '01/01/2012' --Starting value of Date Range
DECLARE @EndDate DATETIME = '31/12/2017' --End Value of Date Range

--Temporary Variables To Hold the Values During Processing of Each Date of Year

DECLARE @CurrentDate AS DATETIME = @StartDate

/********************************************************************************************/
--Proceed only if Start Date(Current date ) is less than End date you specified above

WHILE @CurrentDate < @EndDate
BEGIN

/* Populate Your Dimension Table with values*/
	
	INSERT INTO dimFecha
	SELECT
		
		CONVERT (char(8),@CurrentDate,112) as fechaID,
		CONVERT (char(8),@CurrentDate,112) as fecha,
		DATEPART(YEAR, @CurrentDate) AS Año,
		DATEPART(MM, @CurrentDate) AS Mes,
		DATEPART(QQ, @CurrentDate) AS Trimestre

	SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END

select*from dimFecha
/***************************************************
*                                                  *
*				DIMENSION CLIENTE				   *
*                                                  *
***************************************************/

drop table dimCliente
create table dimCliente
(
	ClienteID varchar(5) primary key,
	Nombre varchar(50),
	Direccion varchar(50),
	CodigoPostal varchar(10),
	Tipo varchar(30)
)
go

/***************************************************
*                                                  *
*					TABLA DE HECHOS				   *
*                                                  *
***************************************************/

drop table ventasFact
create table ventasFact(
ventasID int primary key not null IDENTITY(1,1),
ProductoID int,
TerritorioID int,
ClienteID varchar(5),
fechaID int,
ventasUnitarias int,
ventasDolares int,
costo float,
utilidad float
)

AlTER TABLE ventasFact ADD CONSTRAINT FK_ProductoID FOREIGN KEY (ProductoID)REFERENCES dimProducto(ProductoID);
AlTER TABLE ventasFact ADD CONSTRAINT FK_TerritorioID FOREIGN KEY (TerritorioID)REFERENCES dimTerritorio(TerritorioID);
AlTER TABLE ventasFact ADD CONSTRAINT FK_fechaID FOREIGN KEY (fechaID)REFERENCES dimFecha(fechaID);
AlTER TABLE ventasFact ADD CONSTRAINT FK_ClienteID FOREIGN KEY (ClienteID)REFERENCES dimCliente(ClienteID);

