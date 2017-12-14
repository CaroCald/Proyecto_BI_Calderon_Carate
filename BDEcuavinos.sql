/***************************************************
*                                                  *
*         CREAR BASE DE DATOS                      *
*                                                  *
***************************************************/

create database Ecuavinos
use Ecuavinos

/***************************************************
*                                                  *
*         CREAR TABLA TERRITORIO	               *
*                                                  *
***************************************************/
--drop table Territorio
create table Territorio
(
	TerritorioID int primary key identity,
	Ciudad varchar(30),
	Pais varchar(30)
)
go

/***************************************************
*                                                  *
*         CREAR TABLA CLIENTE		               *
*                                                  *
***************************************************/
--drop table Cliente
create table Cliente
(
	ClienteID varchar(5) primary key,
	TerritorioID int,
	Nombre varchar(50),
	Direccion varchar(50),
	CodigoPostal varchar(10),
	Tipo varchar(30)
)
go

AlTER TABLE Cliente ADD CONSTRAINT FK_TerritorioID FOREIGN KEY (TerritorioID)REFERENCES Territorio(TerritorioID)

/***************************************************
*                                                  *
*         CREAR TABLA PRODUCTO		               *
*                                                  *
***************************************************/
--drop table Producto
create table Producto
(
	ProductoID int primary key,
	Descripcion varchar(50),
	Grupo varchar (30)
)
go

/***************************************************
*                                                  *
*         CREAR TABLA PRODUCCION	               *
*                                                  *
***************************************************/
--drop table historial_produccion
create table historial_produccion
(
	HistorialID int primary key identity,
	ProductoID int,
	VolumenProduccion int,
	CostoPorDocena float,
	Año CHAR(4)
)

AlTER TABLE historial_produccion ADD CONSTRAINT FK_ProductoID2 FOREIGN KEY (ProductoID)REFERENCES Producto(ProductoID)


/***************************************************
*                                                  *
*         ORDEN DE COMPRA SE DIVIDE                *
*               EN DOS TABLAS                      *
***************************************************/

/***************************************************
*                                                  *
*         CREAR TABLA CABECERA COMPRA              *
*                                                  *
***************************************************/

--drop table CabeceraCompra
create table CabeceraCompra
(
	OrdenID varchar(5) primary key,
	FechaCompra date,
	ClienteID varchar(5)
)
go

ALTER TABLE CabeceraCompra ADD CONSTRAINT FK_ClienteID FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)

/***************************************************
*                                                  *
*         CREAR TABLA DETALLE COMPRA               *
*                                                  *
***************************************************/

--drop table DetalleCompra
create table DetalleCompra
(
	DetalleID int primary key identity,
	OrdenID varchar(5),
	HistorialID int,
	Cantidad int,
	PrecioTotal money
)
go

ALTER TABLE DetalleCompra ADD CONSTRAINT FK_OrdenID FOREIGN KEY (OrdenID) REFERENCES CabeceraCompra(OrdenID)
ALTER TABLE DetalleCompra ADD CONSTRAINT FK_HistorialID FOREIGN KEY (HistorialID) REFERENCES historial_produccion(HistorialID)