use Ecuavinos
use EcuavinosDW

select*from dimProducto
Insert Into [EcuavinosDW].[dbo].[dimProducto] (ProductoID,Descripcion,Grupo,volumenProduccion, costoPorDocena)
select h.HistorialID,p.Descripcion,p.Grupo, h.VolumenProduccion, h.CostoPorDocena from [Ecuavinos].[dbo].[Producto] as p , [Ecuavinos].[dbo].[historial_produccion] as h
where p.ProductoID = h.ProductoID

Insert Into [EcuavinosDW].[dbo].[dimCliente] (ClienteID, Nombre, Direccion, CodigoPostal, Tipo)
select ClienteID, Nombre, Direccion, CodigoPostal, Tipo from [Ecuavinos].[dbo].[Cliente]

Insert Into [EcuavinosDW].[dbo].[dimTerritorio] (TerritorioID, Ciudad, Pais)
select TerritorioID, Ciudad, Pais from [Ecuavinos].[dbo].[Territorio]

 Insert Into [EcuavinosDW].[dbo].[ventasFact] (ProductoID,TerritorioID, ClienteID, fechaID,
 ventasUnitarias, ventasDolares, costo, utilidad) 
 select t.HistorialID, t.TerritorioID, t.ClienteID, f.fechaID, t.ventasUnitarias, t.ventasDolares, t.costo, t.utilidad
 from factTotal as t, dimFecha as f where t.FechaCompra=f.fecha

 create view fact
 as

 use Ecuavinos
 drop view factTotal
 create view factTotal
 as
 select h.HistorialID, t.TerritorioID, c.ClienteID, (d.PrecioTotal/d.Cantidad) as ventasUnitarias, 
 sum(d.PrecioTotal) as ventasDolares,
 (h.costoPorDocena/12) as costo, (sum(d.PrecioTotal)- (h.costoPorDocena/12)) as utilidad, cc.FechaCompra
 from [Ecuavinos].[dbo].Cliente as c, [Ecuavinos].[dbo].Territorio as t, [Ecuavinos].[dbo].Producto as p, [Ecuavinos].[dbo].historial_produccion as h,
  [Ecuavinos].[dbo].DetalleCompra as d, [Ecuavinos].[dbo].CabeceraCompra as cc
 where c.TerritorioID=t.TerritorioID and h.ProductoID=p.ProductoID and h.HistorialID=d.HistorialID 
 and d.OrdenID = cc.OrdenID and cc.ClienteID=c.ClienteID
 group by p.ProductoID, t.TerritorioID, c.ClienteID, h.CostoPorDocena, cc.FechaCompra, d.Cantidad, d.PrecioTotal, h.HistorialID
 order by cc.FechaCompra

 use Ecuavinos

 select*from Producto

 use EcuavinosDW
 select t.HistorialID, t.TerritorioID, t.ClienteID, f.fechaID, t.ventasUnitarias, t.ventasDolares, t.costo, t.utilidad
 from factTotal as t, dimFecha as f where t.FechaCompra=f.fecha

 select*from dimProducto
 select*from ventasFact order by ventasID