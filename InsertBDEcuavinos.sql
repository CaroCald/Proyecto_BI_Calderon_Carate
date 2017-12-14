use Ecuavinos

/**********************************************
*											  *
*			Insert Tabla Productos			  *
*											  *
**********************************************/

insert into Producto values(12765, 'McDonell Pinot Noir', 'Red')
insert into Producto values(12766, 'Mornington Pinot Noir','Red')
insert into Producto values(12767, 'Downunder Pinot Noir','Red')
insert into Producto values(12821, 'Mornington Merlot','Red')
insert into Producto values(14821, 'Downunder Merlot','Red')
insert into Producto values(14823, 'Mornington Pinot Grigio','White')
insert into Producto values(14827, 'Downunder Pinot Grigio','White')

select * from Producto

/**********************************************
*											  *
*			Insert Tabla Historial 			  *
*				   Produccion				  *
*											  *
**********************************************/

--McDonell Pinot Noir
insert into historial_produccion values(12765,510, 90, '2011')
insert into historial_produccion values(12765,580,110, '2012')
insert into historial_produccion values(12765,600,120, '2013')
insert into historial_produccion values(12765,620,125, '2014')
insert into historial_produccion values(12765,610,120, '2015')
insert into historial_produccion values(12765,640,130, '2016')
insert into historial_produccion values(12765,650,135, '2017')

--Mornington Pinot Noir
insert into historial_produccion values(12766,530, 140, '2011')
insert into historial_produccion values(12766,510, 150, '2012')
insert into historial_produccion values(12766,570, 180, '2013')
insert into historial_produccion values(12766,575, 185, '2014')
insert into historial_produccion values(12766,590, 195, '2015')
insert into historial_produccion values(12766,610, 200, '2016')
insert into historial_produccion values(12766,600, 195, '2017')

--Downunder Pinot Noir
insert into historial_produccion values(12767,700, 80, '2011')
insert into historial_produccion values(12767,690, 85, '2012')
insert into historial_produccion values(12767,780, 80, '2013')
insert into historial_produccion values(12767,750, 85, '2014')
insert into historial_produccion values(12767,740, 80, '2015')
insert into historial_produccion values(12767,780, 90, '2016')
insert into historial_produccion values(12767,790, 95, '2017')

--Mornington Merlot
insert into historial_produccion values(12821,600, 80,  '2011')
insert into historial_produccion values(12821,640, 100, '2012')
insert into historial_produccion values(12821,680, 100, '2013')
insert into historial_produccion values(12821,665, 90,  '2014')
insert into historial_produccion values(12821,670, 110, '2015')
insert into historial_produccion values(12821,690, 115, '2016')
insert into historial_produccion values(12821,685, 110, '2017')

--Downunder Merlot
insert into historial_produccion values(14821,570, 90,  '2011')
insert into historial_produccion values(14821,610, 120, '2012')
insert into historial_produccion values(14821,600, 115, '2013')
insert into historial_produccion values(14821,590, 115, '2014')
insert into historial_produccion values(14821,630, 125, '2015')
insert into historial_produccion values(14821,640, 125, '2016')
insert into historial_produccion values(14821,620, 125, '2017')

--Mornington Pinot Grigio
insert into historial_produccion values(14823,300, 70, '2011')
insert into historial_produccion values(14823,250, 70, '2012')
insert into historial_produccion values(14823,400, 65, '2013')
insert into historial_produccion values(14823,380, 65, '2014')
insert into historial_produccion values(14823,440, 75, '2015')
insert into historial_produccion values(14823,420, 75, '2016')
insert into historial_produccion values(14823,430, 80, '2017')

--Downunder Pinot Grigio
insert into historial_produccion values(14827,420, 70, '2011')
insert into historial_produccion values(14827,480, 80, '2012')
insert into historial_produccion values(14827,440, 70, '2013')
insert into historial_produccion values(14827,460, 75, '2014')
insert into historial_produccion values(14827,485, 85, '2015')
insert into historial_produccion values(14827,455, 80, '2016')
insert into historial_produccion values(14827,435, 80, '2017')

select * from historial_produccion

/**********************************************
*											  *
*			Insert Tabla Territorio			  *
*											  *
**********************************************/

insert into Territorio values('Quito','Ecuador')
insert into Territorio values('Guayaquil','Ecuador')
insert into Territorio values('Cuenca','Ecuador')
insert into Territorio values('London','Reino Unido')
insert into Territorio values('Birmingham ','Inglaterra')
insert into Territorio values('Liverpool ','Inglaterra')
insert into Territorio values('Edimburgo','Escocia')
insert into Territorio values('Paris','Francia')
insert into Territorio values('Lyon','Francia')
insert into Territorio values('Madrid','España')
insert into Territorio values('Barcelona','España')
insert into Territorio values('Roma','Italia')
insert into Territorio values('Milan','Italia')

select * from Territorio

/**********************************************
*											  *
*			Insert Tabla Cliente			  *
*											  *
**********************************************/

--(clienteID, TerritorioId, Nombre, direccion, codigo postal, tipo)
insert into Cliente values('C478W',1,'Prestige Wines','Av. 12 Oct','3053','Wholesale')
insert into Cliente values('C567R',4,'Acme Wine Imports','High St, Fullham','SW6','Retail')
insert into Cliente values('C121R',1,'Oz Wines','Av. Patria e11-456','3121','Retail')
insert into Cliente values('C479W',1,'The Wine Club','Joaquina Galarza','3051','Wholesale')
insert into Cliente values('C128R',4,'London Wines','The Strand','EC4','Retail')
insert into Cliente values('C342W',8,'International Wines','PO Box 324','75008','Wholesale')
insert into Cliente values('C240R',2,'Guayas Wines','25 de Julio','2058','Retail')
insert into Cliente values('C349R',1,'Laguarda','Av. Paul Rivet N30-95 y Jose Orton','3058','Retail')
insert into Cliente values('C426W',4,'London Wines2','Baker Street','ED8','Wholesale')
insert into Cliente values('C524W',5,'Birminghan Wines','Pershore St','BR3','Wholesale')

select * from Cliente

/**********************************************
*											  *
*			Insert Ordenes de Compra	   	  *
*											  *
**********************************************/


/**********************************************
*											  *
*			Insert Tabla Cabecera Compra	  *
*											  *
**********************************************/

insert into CabeceraCompra values('S135', '12/02/2014', 'C478W')
insert into CabeceraCompra values('S140', '15/02/2014', 'C128R')
insert into CabeceraCompra values('S168', '16/02/2014', 'C478W')
--2014
insert into CabeceraCompra values('S169', '17/02/2014', 'C121R')
insert into CabeceraCompra values('S170', '17/02/2014', 'C426W')
insert into CabeceraCompra values('S180', '02/05/2014', 'C349R')
insert into CabeceraCompra values('S210', '11/07/2014', 'C479W')
insert into CabeceraCompra values('S211', '11/07/2014', 'C524W')
insert into CabeceraCompra values('S212', '12/07/2014', 'C567R')
insert into CabeceraCompra values('S228', '15/10/2014', 'C478W')
--2015
insert into CabeceraCompra values('S311', '11/01/2015', 'C478W')
insert into CabeceraCompra values('S321', '14/02/2015', 'C121R')
insert into CabeceraCompra values('S327', '18/04/2015', 'C349R')
insert into CabeceraCompra values('S335', '04/04/2015', 'C478W')
insert into CabeceraCompra values('S344', '16/07/2015', 'C342W')
insert into CabeceraCompra values('S350', '04/08/2015', 'C349R')
insert into CabeceraCompra values('S352', '15/09/2015', 'C342W')
insert into CabeceraCompra values('S359', '16/10/2015', 'C426W')
--2016
insert into CabeceraCompra values('S368', '10/02/2016', 'C128R')
insert into CabeceraCompra values('S378', '13/03/2016', 'C478W')
insert into CabeceraCompra values('S389', '10/04/2016', 'C121R')
insert into CabeceraCompra values('S395', '07/05/2016', 'C342W')
insert into CabeceraCompra values('S402', '13/07/2016', 'C240R')
insert into CabeceraCompra values('S412', '10/08/2016', 'C342W')
insert into CabeceraCompra values('S417', '16/11/2016', 'C479W')
insert into CabeceraCompra values('S420', '25/12/2016', 'C349R')
--2017
insert into CabeceraCompra values('S430', '09/02/2017', 'C121R')
insert into CabeceraCompra values('S438', '08/03/2017', 'C240R')
insert into CabeceraCompra values('S448', '16/05/2017', 'C524W')
insert into CabeceraCompra values('S459', '12/06/2017', 'C478W')
insert into CabeceraCompra values('S463', '09/08/2017', 'C342W')
insert into CabeceraCompra values('S469', '08/09/2017', 'C479W')
insert into CabeceraCompra values('S479', '16/10/2017', 'C128R')
insert into CabeceraCompra values('S484', '19/11/2017', 'C567R')

select * from CabeceraCompra

/***************************************************
*                                                  *
*					 DETALLE					   *
*                                                  *
***************************************************/

insert into DetalleCompra values ('S135',  3,25, 3000)
insert into DetalleCompra values ('S135', 38,30, 1950)
insert into DetalleCompra values ('S140', 17,30, 2400)
insert into DetalleCompra values ('S168', 17,30, 2400)
insert into DetalleCompra values ('S168', 45,24, 1680)
--2014
insert into DetalleCompra values ('S169', 3,12, 1440)
insert into DetalleCompra values ('S169', 10,15, 2700)
insert into DetalleCompra values ('S170', 17,18, 1440)
insert into DetalleCompra values ('S180', 3,22, 2640)
insert into DetalleCompra values ('S180', 24,17, 1700)
insert into DetalleCompra values ('S210', 24,13, 1300)
insert into DetalleCompra values ('S210', 31,12, 1380)
insert into DetalleCompra values ('S211', 31,30, 3450)
insert into DetalleCompra values ('S212', 3,24, 2880)
insert into DetalleCompra values ('S228', 17,19, 1520)
insert into DetalleCompra values ('S228', 45,22, 1540)
--2015
insert into DetalleCompra values ('S311', 4,20, 2500)
insert into DetalleCompra values ('S321', 39,20, 1300)
insert into DetalleCompra values ('S321', 46,22, 1650)
insert into DetalleCompra values ('S327', 4,18, 2250)
insert into DetalleCompra values ('S335', 18,18, 1530)
insert into DetalleCompra values ('S335', 25,20, 2300)
insert into DetalleCompra values ('S335', 4,15, 1875)
insert into DetalleCompra values ('S344', 46,27, 2025)
insert into DetalleCompra values ('S350', 11,19, 3515)
insert into DetalleCompra values ('S352', 39,26, 1690)
insert into DetalleCompra values ('S359', 46,26, 1950)
--2016
insert into DetalleCompra values ('S368', 5,25, 3000)
insert into DetalleCompra values ('S368', 26,15, 1875)
insert into DetalleCompra values ('S378', 40,30, 2250)
insert into DetalleCompra values ('S389', 19,28, 2240)
insert into DetalleCompra values ('S389', 5,12, 1440)
insert into DetalleCompra values ('S389', 26,12, 1500)
insert into DetalleCompra values ('S395', 5,30, 3600)
insert into DetalleCompra values ('S402', 12,22, 4290)
insert into DetalleCompra values ('S412', 40,23, 1725)
insert into DetalleCompra values ('S417', 47,28, 2380)
insert into DetalleCompra values ('S417', 5,10, 1200)
insert into DetalleCompra values ('S417', 26,10, 1250)
insert into DetalleCompra values ('S420', 47,19, 1615)
--2017
insert into DetalleCompra values ('S430', 6,18, 2340)
insert into DetalleCompra values ('S438', 20,22, 1980)
insert into DetalleCompra values ('S448', 20,27, 2430)
insert into DetalleCompra values ('S448', 27,18, 2250)
insert into DetalleCompra values ('S459', 48,25, 2000)
insert into DetalleCompra values ('S463', 6,25, 3250)
insert into DetalleCompra values ('S469', 48,24, 1920)
insert into DetalleCompra values ('S479', 6,20, 2600)
insert into DetalleCompra values ('S479', 20,20, 1800)
insert into DetalleCompra values ('S479', 37,20, 2500)
insert into DetalleCompra values ('S484', 41,15, 1125)
insert into DetalleCompra values ('S484', 48,15, 1200)

select * from DetalleCompra

