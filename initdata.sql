use technetprueba;
insert into TipoEntidad (id, descripcion, cantdigitos) values(1, "DNI", 8);
insert into TipoEntidad (id, descripcion, cantdigitos) values(6, "RUC", 11);
insert into TipoEntidad (id, descripcion, cantdigitos) values(7, "PASAPORTE", 12);
insert into TipoEntidad (id, descripcion, cantdigitos) values(4, "CARNET EXTRANJERIA", 12);
insert into TipoComprobante (prefijo, descripcion) values ('F', 'FACTURA');
insert into TipoComprobante (prefijo, descripcion)values ('B', 'BOLETA');
insert into TipoComprobante (prefijo, descripcion)values ('FC', 'NOTA DE CREDITO');
insert into TipoComprobante (prefijo, descripcion)values ('BC', 'NOTA DE DEBITO');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('VENTA', 0, 'VENTA AL MOMENTO PAGO INSTANTANEO');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 1', 1, 'SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 2', 2, 'SE OTORGA 2 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 5', 5, 'SE OTORGA 5 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 7', 7, 'SE OTORGA 7 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 10', 10, 'SE OTORGA 10 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 15', 15, 'SE OTORGA 15 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CREDITO 30', 30, 'SE OTORGA 30 DIAS DE CREDITO PARA PAGAR');
insert into TipoCondicion (nombre, diascredito, descripcion) values ('CONSIGNACION', 60, 'VENTA AL MOMENTO PAGO INSTANTANE');
insert into TipoPago (nombre, descripcion) values ('EFECTIVO [CONTADO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoPago (nombre, descripcion) values ('TARJETA DÉBITO [CONTADO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoPago (nombre, descripcion) values ('TARJETA CRÉDITO [CONTADO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoPago (nombre, descripcion) values ('TRANSFERENCIA [CONTADO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoPago (nombre, descripcion) values ('GIRO [CONTADO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoPago (nombre, descripcion) values ('CHEQUE [CONTADO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoPago (nombre, descripcion) values ('POR PAGAR [CRÉDITO]','SE OTORGA 1 DIAS DE CREDITO PARA PAGAR');
insert into TipoMoneda (nombre) values('SOLES');
insert into TipoMoneda (nombre) values('DOLARES');
insert into TipoMoneda (nombre) values('EUROS');
insert into Rol (id, descripcion, nombre) values (1,'Acceso total a funciones del tenant','administrador');
insert into Rol (id, descripcion, nombre) values (2,'Acceso total a funciones del facturacion','vendedor');
insert into Rol (id, descripcion, nombre) values (3,'Acceso','almacenero');
insert into Rol (id, descripcion, nombre) values (4,'Acceso','cliente');
insert into Privilegio (id, descripcion, nombre) values (1,'Acceso total a funciones de facturacion','facturas');
insert into Privilegio (id, descripcion, nombre) values (2,'Acceso total a funciones de boletas','boletas');
insert into Privilegio (id, descripcion, nombre) values (3,'Acceso total a funciones de administracion de usuarios','usuarios');
insert into Privilegio (id, descripcion, nombre) values (4,'Acceso reportes','reportes');
insert into Privilegio (id, descripcion, nombre) values (5,'Acceso almacenes','almacenes');
insert into Privilegio (id, descripcion, nombre) values (6,'Acceso ecomerce','eccomerce');

insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(1,1, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(1,2, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(1,3, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(1,4, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(1,5, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(2,1, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(2,2, now(),now());
insert into RolPrivilegio (RolId, PrivilegioId, createdAt, updatedAt) values(4,6, now(),now());

insert into EstadoProducto (id, nombre) values (1,'stock');
insert into EstadoProducto (id, nombre) values (2,'vendido');
insert into EstadoProducto (id, nombre) values (3,'rma');

insert into Marca(nombre) values ('ACER');
insert into Marca(nombre) values ('ADATA');
insert into Marca(nombre) values ('APPLE');
insert into Marca(nombre) values ('ASUS');
insert into Marca(nombre) values ('BITDEFENDER');
insert into Marca(nombre) values ('BROTHER');
insert into Marca(nombre) values ('CYBERPOWER');
insert into Marca(nombre) values ('DELL');
insert into Marca(nombre) values ('ENKORE');
insert into Marca(nombre) values ('EPSON');
insert into Marca(nombre) values ('GAMEMAX');
insert into Marca(nombre) values ('GRYPHUS');
insert into Marca(nombre) values ('HALION');
insert into Marca(nombre) values ('HP');
insert into Marca(nombre) values ('HUAWEI');
insert into Marca(nombre) values ('HYPERX');
insert into Marca(nombre) values ('INDETERMINADO');
insert into Marca(nombre) values ('INTEL');
insert into Marca(nombre) values ('KASPERSKY');
insert into Marca(nombre) values ('KINGSTON');
insert into Marca(nombre) values ('LENOVO');
insert into Marca(nombre) values ('LG');
insert into Marca(nombre) values ('MICROSOFT');
insert into Marca(nombre) values ('MIRAY');
insert into Marca(nombre) values ('MSI');
insert into Marca(nombre) values ('NEC');
insert into Marca(nombre) values ('SAMSUNG');
insert into Marca(nombre) values ('SEAGATE');
insert into Marca(nombre) values ('TEAMGROUP');
insert into Marca(nombre) values ('TEROS');
insert into Marca(nombre) values ('TOSHIBA');
insert into Marca(nombre) values ('YEYIAN');
insert into Marca(nombre) values ('IMEXX');
insert into Marca(nombre) values ('GAMBYTE');
insert into Marca(nombre) values ('BENQ');
-- ---------------------------------------------------------------------------------------------------------------
-- CATEGORIAS DE Marca
insert into CategoriaMarca(MarcaId, nombre) values (1, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (2, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (3, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (4, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (5, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (6, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (7, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (8, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (9, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (10, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (11, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (12, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (13, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (14, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (15, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (16, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (17, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (18, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (19, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (20, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (21, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (22, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (23, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (24, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (25, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (26, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (27, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (28, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (29, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (30, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (31, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (32, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (33, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (34, 'NO DETERMINADO');
insert into CategoriaMarca(MarcaId, nombre) values (35, 'NO DETERMINADO');
-- ---------------------------------------------------------------------------------------------------------------
-- CategoriaS

insert into Categoria(nombre, descripcion) values('Accesorios Varios', 'Accesorios Varios');
insert into Categoria(nombre, descripcion) values('Equipo Movil', 'Equipo Movil');
insert into Categoria(nombre, descripcion) values('Impresoras','Impresoras');
insert into Categoria(nombre, descripcion) values('Laptops','Laptops');
insert into Categoria(nombre, descripcion) values('Memorias Ram y Almacenamiento','Memorias Ram y Almacenamiento');
insert into Categoria(nombre, descripcion) values('Monitores','Monitores');
insert into Categoria(nombre, descripcion) values('PC','PC');
insert into Categoria(nombre, descripcion) values('Procesadores','Procesadores');
insert into Categoria(nombre, descripcion) values('Proyectores','Proyectores');
insert into Categoria(nombre, descripcion) values('Software/Licencias','Software/Licencias');
insert into Categoria(nombre, descripcion) values('Tintas','Tintas');

-- ---------------------------------------------------------------------------------------------------------------
-- SUBCATEGORIAS

insert into SubCategoria(nombre, descripcion, CategoriaId) values('Accesorios de Oficina', 'Accesorios de Oficina', 1);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Celulares', 'Celulares', 2);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Impresoras', 'Impresoras', 3);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Laptop Reacondicionada', 'Laptop Oficina', 4);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Laptop Gama Alta','Laptop Gamer Gama Alta Americana', 4);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Laptop Gamer', 'Laptop Gamer Latina', 4);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Laptop Oficina', 'Laptop Oficina', 4);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Memorias Ram y Almacenamiento', 'Memorias Ram y Almacenamiento', 5 );
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Monitores', 'Monitores', 6);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Monitores Segunda', 'Monitores Segunda', 6);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('PC All in One', 'PC All in One', 7);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('PC Escritorio', 'PC Escritorio', 7);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Procesadores Intel', 'Procesadores Intel', 8);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Proyectores', 'Proyectores', 9);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Software/Licencias', 'Software/Licencias', 10);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Tablets', 'Tablets', 2);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Tintas', 'Tintas', 11);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Mini PC', 'Mini PC', 7);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Mini PC Reacondiconada', 'Mini PC Reacondiconada', 7);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('Workstation', 'PC Escritorio', 7);
insert into SubCategoria(nombre, descripcion, CategoriaId) values('PC Reacondicionada', 'PC Reacondicionada', 7);




insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('3c4c3115-ef02-48f4-9511-9de22e3f21cf', 'DELL-1',8,4,'INSPIRON 14 3467',
'Intel Core i5-7200, Memoria Ram 8GB DDR4, Disco Duro 1TB, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro', 750,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('d8ce56ae-292b-4695-ac9b-e7f50f97f882', 'DELL-2',8,4,'E5470',
'Intel Core i7-6820HQ, Memoria Ram 8GB DDR4, Unidad de estado solido 512GB SSD M.2, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro', 
900,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('6fa9b09c-9161-4fc8-89d2-f264b2854c2b', 'DELL-3',8,4,'E7470',
'Intel Core i7-6600U, Memoria Ram 8GB DDR4, Unidad de estado solido 512GB SSD M.2, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro', 
900,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('ffef661c-b7aa-4641-b08b-63fa1b2bd136', 'DELL-4',8,4,'LATITUDE 5420',
'Intel Core i7-1165G7, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Pantalla 14" FHD (1920*1080), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 1350,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('205ee0bb-ec57-47a4-9bea-6756bbce4efd', 'DELL-5',8,4,'LATITUDE VACIO',
'Intel Core i5-1135G7, Memoria Ram 16GB DDR4, Unidad de estado solido 512GB SSD M.2, Pantalla 14" FHD (1920*1080), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 1280,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('c1b2b9cc-0e5e-4fbb-95cb-04385bcd4bfa', 'DELL-6',8,4,'LATITUDE 7490',
'Intel Core i5-8350U, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Pantalla 14" FHD (1920*1080), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 800,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('22bf01e7-e9c0-48a4-bc60-37f88c2f2894', 'HP-1',14,4,'ELITEBOOK 840 G3',
'Intel Core i7-6600U, Memoria Ram 8GB DDR4, Disco Duro 500GB HDD, Unidad de Estado Solido 256GB SSD M.2, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 1000,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('c09b99ab-c20f-4d5d-bc59-1a8d55fffbdf', 'HP-2',14,4,'PROBOOK 440 G5',
'Intel Core i7-8550, Memoria Ram 8GB DDR4, Unidad de Estado Solido 480GB SSD, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 1100,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('36b6a831-16d1-4c5e-ad9a-79c0c3d08263', 'LNV-1',21,4,'THINKPAD L460',
'Intel Core i5-6600, Memoria Ram 8GB DDR4, Disco Duro 500GB HDD, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 700,0,12,36);

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('22026bdc-3bd1-4106-a498-112fa60884bb', 'LNV-2',21,4,'THINKPAD T460',
'Intel Core i7-6500U, Memoria Ram 8GB DDR4, Unidad de Estado Solido 480GB SSD, Pantalla 14" HD (1366*768), Nvidia Geforce 940MX 2GB, Sistema Operativo Windows 10 Pro',
 1050,0,12,36);
 -- ------------------------------------
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('09fd384f-4efa-4cc1-900b-2ba4d4831b5b', 'DELL-7',8,5,'PRECISION 5570',
'Intel Core i9-12900H (14 Núcleos) Memoria Ram 64GB DDR5, Unidad de estado solido 1TB SSD M.2 PCIe NVMe, Pantalla 15.6" UHD (3840*2400) Táctil, Nvidia RTX A20008GB GDDR6, Sistema Operativo Windows 10 Pro',
 7670,0,12,36);
-- ------------------------------------

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('a7c5b7d2-4f1a-48f7-95a8-19494bf183da', 'HP-3',14,21,'EliteDesk 800 G3',
'Intel Core i5-6400, 8GB Ram, Unidad de Estado Solido 240GB, Intel HD Graphics Integrado, 1x VGA, 2x Display Port',
 560,0,12,36);
insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('ac7fef37-00f7-4e6a-8249-f21d17ed32ac', 'HP-4',14,21,'EliteDesk 800 G4',
'Intel Core i7-6820HQ, Memoria Ram 8GB DDR4, Unidad de estado solido 512GB SSD M.2, Pantalla 14" HD (1366*768), Intel HD Graphics, Sistema Operativo Windows 10 Pro',
 780,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('1bd62814-c7f5-44e4-bd39-6c891d0d68ad', 'HP-5',14,21,'ProDesk 600 G1',
'Intel Core i5-4430, 2.9Ghz, Memoria Ram 8GB DDR3, Disco Duro 500GB HDD Sata, Video Intel HD Graphics 4600.',
 320,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('ddaf8e8f-712d-4665-84d7-e47ca428386c', 'HP-6',14,21,'PRODESK 600 G5',
'Intel Core i7-9700, 8GB Ram, Unidad de estado solido 256GB SSD M.2, Intel HD Graphics Integrado, 1x HDMI, 2x Display Port',
 1100,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('1328c8b5-0478-41f1-b4fb-23884b802467', 'HP-7',14,21,'PRODESK 600 G5',
'Intel Core i5-9500, 8GB Ram DDR4, Unidad de estado solido 256GB SSD M.2, Intel HD Graphics Integrado, 1x HDMI, 2x Display Port',
 780,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('823d9e9e-5b35-427c-9cbb-0a41f555be25', 'HP-8',14,21,'PRODESK 600 G5',
'Intel Core i3-9100, 3.6GHz, Memoria Ram 8GB DDR4-2666MHz, Unidad de estado solido 256GB SSD M.2, Video Intel Graphics',
 680,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('794fc08c-6eb2-4980-bcf4-e4f47810de14', 'HP-9',14,21,'ELITEDESK 705 G4',
'AMD Ryzen 7 2700 Pro, Memoria Ram 8GB DDR4, Unidad de estado solido 500GB SSD Sata, AMD Radeon R7 430 GDDR5, 2x Display Port',
 700,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('6fd13a66-a2c2-4916-bea9-c5101d25860a', 'HP-10',14,21,'ELITEDESK 705 G5',
'AMD Ryzen 5 2600 Pro, Memoria Ram 8GB DDR4, Disco Duro 500GB Sata, AMD Radeon R7 430 GDDR5, 2x Display Port',
 500,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('ff72851a-9344-4688-8486-d64ad06c8f70', 'HP-11',14,21,'PRODESK 400 G7',
'Intel Core i5-10400, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Disco Duro 500GB HDD, 1x Display Port, 1x HDMI',
 1050,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('125ee909-c608-42bc-8480-a5b3df51820c', 'HP-12',14,21,'PRODESK 400 G7',
'Intel Core i5-10400, Memoria Ram 8GB DDR4, Unidad de estado solido 512GB SSD M.2, 1x Display Port, 1x HDMI',
 1000,0,12,36);

 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('fb765e62-f073-4847-a6a3-a1a588d09d44', 'LNV-3',21,21,'THINKCENTRE M710S',
'Intel Core i7-6700, Memoria Ram 8GB DDR4, Disco Duro 500GB HDD, 2x Display Port, 1x VGA',
 780,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('fa8c1057-13f7-4890-9348-66a03df78266', 'LNV-4',21,21,'THINKCENTRE M710S',
'Intel Core i5-6400, Memoria Ram 8GB DDR4, Disco Duro 500GB HDD, 2x Display Port, 1x VGA',
 580,0,12,36);
  insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('5a959328-4c44-4fe6-8cfb-d1d52aead09e', 'LNV-5',21,21,'THINKCENTRE M720S',
'Intel Core i5-8400, Memoria Ram 8GB DDR4, Disco Duro 500GB HDD, 2x Display Port, 1x VGA',
 600,0,12,36);
  insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('2751b138-9432-4f6e-bdef-e698625cb3e8', 'LNV-6',21,21,'THINKCENTRE M920S',
'Intel Core i5-8600, Memoria Ram 8GB DDR4, Unidad de estado solido 512GB SSD M.2, 2x Display Port, 1x VGA',
 750,0,12,36);
  insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('e8762ced-9f66-4d89-a039-2b34d62f53c8', 'LNV-7',21,21,'THINKCENTRE M70S',
'Intel Core i7-12700, Memoria Ram 16GB DDR4, Unidad de estado solido 512GB SSD M.2, 2x Display Port, 1x HDMI',
 2500,0,12,36);

-- ------------------------------------

insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('4fe82275-f73c-4b7e-b7db-5bb0a6bc0e6a', 'HP-13',14,19,'PRODESK 600 G5',
'Intel Core i3-8100, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Intel HD Graphics',
 500,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('ccbcd7eb-24c0-470e-8d07-b5f24d020190', 'HP-14',14,19,'PRODESK 400 G3',
'Intel Core i5 7500T, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Intel HD Graphics',
 500,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('fc29a826-530e-4c85-96df-807a5b797093', 'HP-15',14,19,'PRODESK 400 G5',
'Intel Core i5-9500T, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2',
 730,0,12,36);
 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('87aae12b-e254-4512-a6f4-7e3cfbcd53e2', 'HP-16',14,19,'PRODESK 400 G6',
'Intel Core i5-10500T, Memoria Ram 8GB DDR4, Unidad de estado solido 512GB SSD M.2, Intel HD Graphics 630',
 1050,0,12,36);

 insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('cbd1b299-46bf-45d4-87b3-ef05505ad565', 'LNV-8',21,19,'THINKCENTRE M720Q',
'Intel Core i7-8700T, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Intel HD Graphics',
 850,0,12,36);
  insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('90db1d6b-18fb-45df-9975-660286860f94', 'LNV-9',21,19,'THINKCENTRE M720Q',
'Intel Core i5-8700T, Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Intel HD Graphics',
 650,0,12,36);
  insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('f045ab2e-726d-4813-b10e-85f274c24ead', 'LNV-10',21,19,'OPTIPLEX 3040',
'Intel Core i7-6700T, Memoria Ram 8GB DDR4, Disco Duro 500GB HDD, Intel HD Graphics 630',
 600,0,12,36);

-- ------------------------------------

  insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('9793b748-5955-4c68-83fd-cf343f1c90fc', 'DELL-8',8,18,'OPTIPLEX 7010 PLUS MICRO',
'Intel Core i7-13700T, Memoria Ram 16GB DDR5, Unidad de estado solido 1TB SSD M.2, Video Intel UHD Graphics 770',
 2950,0,12,36);
   insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('dc51268f-687a-430f-8c6c-faacfda3eb37', 'LNV-11',21,18,'THINKCENTRE M90Q GEN 3',
'Intel Core i5-12600T vPro, 3.0Ghz, Memoria Ram 16GB DDR5, Unidad de estado sólido 512GB SSD M.2 PCLe, Video Intel UHD Graphics 770',
 2200,0,12,36);
-- ------------------------------------
   insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('502f4a19-d46d-4a32-9957-b7f3aa36888e', 'HP-17',14,20,'Z2 TOWER G5',
'Intel Xeon, Memoria Ram 32GB, Disco Duro 1TB HDD, Video RTX 3050 8GB',
 4150,0,12,36);

-- ------------------------------------
   insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('347e07de-19df-4b57-b269-4cb98878c5d8', 'APPL-1',3,18,'A1419',
'Intel Core i5 (2012) Memoria Ram 16GB DDR3, Disco Duro 1TB HDD, Video 512MB, Pantalla 27" Retina 2k',
 1800,0,12,36);
    insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('8c3108a3-bdaa-4f64-a519-0d4a9b141472', 'LNV-12',21,18,'THINKCENTRE M820Z',
'Intel Core i5-8400 Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Disco Duro 1TB, Pantalla 22" FHD',
 100,0,12,36);
    insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('16cbac68-854c-48b5-8838-6c12f4bddaae', 'LNV-13',21,18,'THINKCENTRE M820Z',
'Intel Core i7-8700 Memoria Ram 8GB DDR4, Unidad de estado solido 256GB SSD M.2, Disco Duro 1TB, Pantalla 22" FHD',
 1250,0,12,36);

-- ------------------------------------
    insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('0bad56e6-a28c-4512-ae91-64dc83b300e9', 'BNQ-1',35,10,'G6I5HDPL',
'15.6" LED, HD (1366*768), 8ms, 60Hz, 1x VGA',
 110,0,12,36);

    insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('f337a308-d91e-4792-9d43-9153948d91ec', 'HP-18',14,10,'V190',
'19" LED HD (1366*768) 5MS, 60HZ, 1x VGA',
 140,0,12,36);
    insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('ff0b6cc5-f0b7-492d-8bd8-702cbf01f90c', 'HP-19',14,10,'V203P',
'20" LED HD (1400*900) 8MS, 60HZ, 1x VGA',
 180,0,12,36);
     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('2410b947-8d7b-42ab-8847-e6e452c68723', 'HP-20',14,10,'P224',
'22" LED FHD (1920*1080) IPS, 60HZ, 1x VGA, 1x Display Port, 1x HDMI',
 280,0,12,36);
     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('53295b92-a16d-48f6-aa19-923986812d86', 'HP-21',14,10,'Compaq LA2405x',
'24” LCD, FHD (1920*1080), 5ms, 60Hz, 1x VGA, 1x Display Port, 1x HDMI, Ángulos de visión 178° horizontal, 178° vertical',
 250,0,12,36);
     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('44ec1915-8921-4328-814e-1bef30770619', 'HP-22',14,10,'E24 G4',
'23.8” LED, IPS, FHD (1920*1080), 5ms, 60Hz, 1 VGA, 1 USB Type-B, 1 DisplayPort 1.4, 4 puertos USB-A 3.2 Gen 1, Inclinación -5 a +25°.',
 550,0,12,36);

     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('8ab8ffcd-c68d-4a9b-855a-06306b18be29', 'DELL-9',8,10,'E2016H',
'20" LED HD (1600*900) 8MS, 60HZ, 1x VGA',
 180,0,12,36);
     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('b3759278-2a8c-4f1f-a1a2-f659fda45d5b', 'DELL-10',8,10,'P2422H',
'24" LED FHD (1920*1080) IPS, 60Hz, 1x VGA, 1x Display Port, 1x HDMI',
 350,0,12,36);
     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('86a3e622-7a23-423d-bc77-df5b64110a83', 'LNV-14',21,10,'THINKVISION T2054PC',
'20" LED HD (1440*900) 7MS, 60HZ, IPS, 1x VGA,estadoproducto 1x Display Port',
 200,0,12,36);
     insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('998e2dfe-676d-4de4-8cf0-7aee3e1476e8', 'LNV-15',21,10,'THINKVISION T22I-10',
'22" LED FHD (1920*1080) 4MS, 60HZ, IPS, 1x VGA, 1x Display, 1x Port, 1x HDMI',
 250,0,12,36);
      insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('292f8f0d-b371-4956-8e46-4ea33d1bf625', 'LNV-16',21,10,'THINKVISION T22V-10',
'22" LED FHD (1920*1080) 4MS, 60HZ, IPS, 1x VGA, 1x Display Port, 1x HDMI, Camara web incoporada',
 390,0,12,36);
      insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('c1fdfcde-f557-4c22-addf-73f93f7204ea', 'LNV-17',21,10,'THINKVISION E24-10',
'23.8” LCD, FHD (1920*1080), 4ms, 60Hz, 1x Display Port, 1x VGA.',
 280,0,12,36);

-- -------------------

       insert into Producto (id, pn, CategoriaMarcaId, SubCategoriaId , nombre, descripcion, precio, stock, garantia_cliente, garantia_total) 
values('f601d64c-260a-4bcb-9153-adbb041f15fb', 'DELL-11',8,9,'E2222HS',
'22" LED FHD (1920*1080) 10MS, 60HZ, 1x VGA, 1x Display Port, 1x HDMI',
 380,0,12,36);


DELIMITER //

CREATE PROCEDURE GetProductos(IN limitPerCategory INT)
BEGIN
    -- Declaraciones de variables
    DECLARE categoria_actual VARCHAR(255) DEFAULT '';
    DECLARE rn INT DEFAULT 0;
    DECLARE done BOOLEAN DEFAULT FALSE;
    
    DECLARE id VARCHAR(36);
    DECLARE nombre VARCHAR(255);
    DECLARE pn VARCHAR(255);
    DECLARE descripcion TEXT;
    DECLARE stock DOUBLE;
    DECLARE precio DOUBLE;
    DECLARE subcategoria_nombre VARCHAR(255);
    DECLARE garantia_cliente DOUBLE;
    DECLARE garantia_total DOUBLE;
    DECLARE categoria_nombre VARCHAR(255);
    DECLARE archivo_principal_url VARCHAR(255);
    DECLARE archivos_urls TEXT;
    
    -- Crear un cursor para iterar sobre los productos agrupados
    
    DECLARE cur CURSOR FOR
    SELECT 
        p.id,
        p.nombre,
        p.pn,
        p.descripcion,
        p.stock,
        p.precio,
        sc.nombre as subcategoria_nombre,
        p.garantia_cliente,
        p.garantia_total,
        c.nombre AS categoria_nombre,
        a.url AS archivo_principal_url,
        GROUP_CONCAT(aList.url) AS archivos_urls
    FROM 
        Producto p
    JOIN 
        SubCategoria sc ON p.SubCategoriaId = sc.id
    JOIN 
        Categoria c ON sc.CategoriaId = c.id
    LEFT JOIN 
        Archivo a ON p.ArchivoPrincipalId = a.id
    LEFT JOIN 
        producto_archivo pa ON p.id = pa.ProductoId
    LEFT JOIN 
        Archivo aList ON pa.ArchivoId = aList.id
    GROUP BY 
        p.id, c.nombre, a.url
    ORDER BY 
        c.id, p.nombre;

    -- Manejador para el final del cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Crear una tabla temporal para almacenar los resultados finales
    DROP TEMPORARY TABLE IF EXISTS temp_final_results;
    CREATE TEMPORARY TABLE temp_final_results (
        id VARCHAR(36),
        nombre VARCHAR(255),
        pn VARCHAR(255),
        descripcion TEXT,
        stock DOUBLE,
        precio DOUBLE,
        subcategoria_nombre VARCHAR(255),
        garantia_cliente DOUBLE,
        garantia_total DOUBLE,
        categoria_nombre VARCHAR(255),
        archivo_principal_url VARCHAR(255),
        archivos_urls TEXT
    );

    -- Abrir el cursor
    OPEN cur;

    -- Bucle para recorrer los resultados del cursor
    read_loop: LOOP
        FETCH cur INTO 
            id, nombre, pn, descripcion, stock, precio, subcategoria_nombre, 
            garantia_cliente, garantia_total, categoria_nombre, archivo_principal_url, archivos_urls;
        
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Verificar si cambiamos de categoría y reiniciar el contador
        IF categoria_actual != categoria_nombre THEN
            SET categoria_actual = categoria_nombre;
            SET rn = 1;
        ELSE
            SET rn = rn + 1;
        END IF;

        -- Insertar en la tabla temporal si el contador está dentro del límite
        IF rn <= limitPerCategory THEN
            INSERT INTO temp_final_results
            VALUES (id, nombre, pn, descripcion, stock, precio, subcategoria_nombre, 
                    garantia_cliente, garantia_total, categoria_nombre, archivo_principal_url, archivos_urls);
        END IF;
    END LOOP;

    -- Cerrar el cursor
    CLOSE cur;

    -- Seleccionar los resultados finales desde la tabla temporal
    SELECT * FROM temp_final_results;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE temp_final_results;
END //

DELIMITER ;

INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('04483544-6251-4d3e-bd92-821fd27ecd4d','technetsac','producto','648847ee-ad0c-4680-8772-8125fc28ba13.webp','THINKVISION T22I-10_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/648847ee-ad0c-4680-8772-8125fc28ba13.webp'),
	 ('07a3c14e-41d6-466f-a404-08f27764d005','technetsac','producto','83f03d82-b8c6-4082-8965-4a94412af778.webp','THINKVISION T22I-10_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/83f03d82-b8c6-4082-8965-4a94412af778.webp'),
	 ('08b75b44-aeca-4f78-9f77-6b28ced6e01b','technetsac','producto','cea13c1f-731b-4205-885c-7f213e721e96.webp','THINKVISION T22V-10_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/cea13c1f-731b-4205-885c-7f213e721e96.webp'),
	 ('0a25a0d1-8c17-4d2c-9276-bccf08f8cc96','technetsac','producto','64091260-deab-444c-b594-e121aa1b35aa.webp','E5470_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/64091260-deab-444c-b594-e121aa1b35aa.webp'),
	 ('0ab2965a-581d-4c6d-adc2-5657650b234e','technetsac','producto','1c52eeb2-8d6e-4d4c-ab6b-695e95a44924.webp','prodesk 400 g3_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/1c52eeb2-8d6e-4d4c-ab6b-695e95a44924.webp'),
	 ('0b65f556-fba5-485b-9731-61447d58ad19','technetsac','producto','602166f7-ee04-4927-ac93-988ac7371d2f.webp','elite4g_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/602166f7-ee04-4927-ac93-988ac7371d2f.webp'),
	 ('0e496896-814b-4853-a5b5-7e614c9c804f','technetsac','producto','29143a5f-98fc-4fa8-af4a-3b043bb2eed2.webp','elite4g_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/29143a5f-98fc-4fa8-af4a-3b043bb2eed2.webp'),
	 ('0ff8241e-c47c-47c7-bb8c-458deed18e43','technetsac','producto','a9ef2f00-bad9-4d37-b0d3-0ffa1b90cfea.webp','586084fe-8d29-4dff-afcd-1c3524f8039f.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a9ef2f00-bad9-4d37-b0d3-0ffa1b90cfea.webp'),
	 ('11c193c2-7251-4240-b88c-2be2618c351f','technetsac','producto','dd487404-b8b5-40ff-a155-aa2fe1b94c50.webp','P2422H_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/dd487404-b8b5-40ff-a155-aa2fe1b94c50.webp'),
	 ('11e71353-e017-4fde-95b6-0e05418da633','technetsac','producto','b33571e3-e743-492d-9513-478539635e69.webp','V190_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b33571e3-e743-492d-9513-478539635e69.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('12f9a076-5856-4255-8a5a-917b106b39d5','technetsac','producto','9b4e8960-28f1-4061-9a26-fd6df8700d6f.webp','THINKPAD T460_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9b4e8960-28f1-4061-9a26-fd6df8700d6f.webp'),
	 ('1452d9bb-a3e2-4e5e-916e-1ca31f1c970d','technetsac','producto','711e9fbf-a867-407b-8f26-d27d00c6e63e.webp','prodesk 600 g5 500so_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/711e9fbf-a867-407b-8f26-d27d00c6e63e.webp'),
	 ('147249ba-9b23-4b2d-93f6-0ee83acf2bb6','technetsac','producto','7c69d298-a676-4e8b-9007-660371d27893.webp','ELITEBOOK 840 G3_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7c69d298-a676-4e8b-9007-660371d27893.webp'),
	 ('15df99b0-88b7-4a8c-9a90-8ce82070cbe8','technetsac','producto','e4cb3be4-f0e6-49ce-91aa-885021b57bc8.webp','PRODESKG5_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e4cb3be4-f0e6-49ce-91aa-885021b57bc8.webp'),
	 ('16f848d9-2955-4425-b937-1c319fed3384','technetsac','producto','1f4343df-1e92-4352-8f00-96c31a4d79f1.webp','THINKVISION T2054PC_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/1f4343df-1e92-4352-8f00-96c31a4d79f1.webp'),
	 ('19ab7874-a740-428c-8a49-c0cb80a9a67c','technetsac','producto','1c999f62-c040-4c3d-adba-d8a6182e59eb.webp','EliteDesk 800 G3_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/1c999f62-c040-4c3d-adba-d8a6182e59eb.webp'),
	 ('1cf09f82-ec20-4e28-982b-e2e35e83d185','technetsac','producto','d111d215-30e6-420e-af31-983345a79304.webp','E2016H_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d111d215-30e6-420e-af31-983345a79304.webp'),
	 ('23369fb9-3d5a-4131-83e6-fc496a4f2f86','technetsac','producto','9ee7c3d8-0f5b-41e1-a5f1-a19bc099ef2a.webp','THINKPAD T460_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9ee7c3d8-0f5b-41e1-a5f1-a19bc099ef2a.webp'),
	 ('238bfc5d-d7a3-4573-9a84-6aa1bd27dfea','technetsac','producto','d0471340-0c9f-483e-86cc-fee98b30a02b.webp','PRODESKG5_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d0471340-0c9f-483e-86cc-fee98b30a02b.webp'),
	 ('23aefee0-2455-444b-b7ee-05faaf1cf185','technetsac','producto','106437f1-9f1b-43a4-97ba-326da895b625.webp','THINKCENTRE M720S_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/106437f1-9f1b-43a4-97ba-326da895b625.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('26480cbb-7a24-4fb6-82e2-7b44f9cb088a','technetsac','producto','a2ebf173-ab8b-414d-a78c-00fa15d1a4d2.webp','OPTIPLEX 3040_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a2ebf173-ab8b-414d-a78c-00fa15d1a4d2.webp'),
	 ('26d3f879-2dc5-4af0-ba24-62114693595b','technetsac','producto','95ea9744-e758-4faa-ab30-73b21bbf2e6d.webp','E5470_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/95ea9744-e758-4faa-ab30-73b21bbf2e6d.webp'),
	 ('281c12d7-6c1a-45b1-a9b9-12be23f1a110','technetsac','producto','59137ea9-f44d-4da6-bdaa-c910fa43199d.webp','LATITUDE 5420_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/59137ea9-f44d-4da6-bdaa-c910fa43199d.webp'),
	 ('28a4e672-ceb4-4336-b004-180d035a1d9a','technetsac','producto','2ec0d236-699b-487f-aad1-3f03dcbd4f44.webp','c1e147de-21f0-41e9-93aa-12636b59eebb.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2ec0d236-699b-487f-aad1-3f03dcbd4f44.webp'),
	 ('29eceb41-a4fa-4f88-8fb9-b3e1f703b3d9','technetsac','producto','b3045cde-2d69-41e9-b56d-7298f5ec4acf.jpeg','G6I5HDPL_1.jpeg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b3045cde-2d69-41e9-b56d-7298f5ec4acf.jpeg'),
	 ('2aaa7081-3dbe-4740-bb10-9b931ce2010e','technetsac','producto','453e8feb-3b68-416b-b88b-f0b43435bdb4.webp','elite4g_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/453e8feb-3b68-416b-b88b-f0b43435bdb4.webp'),
	 ('2ab5e9a2-900c-4ff1-b206-3bd78f9c575b','technetsac','producto','c98eec23-38b5-4443-9e1c-99af6a571b73.webp','INSPIRON 14 3467_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/c98eec23-38b5-4443-9e1c-99af6a571b73.webp'),
	 ('2cf3cb29-4480-4402-bd74-21ff737f0a38','technetsac','producto','6c849e68-6577-43a1-b5b6-9e7ae790df54.jpg','THINKCENTRE M720Q_4.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/6c849e68-6577-43a1-b5b6-9e7ae790df54.jpg'),
	 ('2d8871c9-5976-4de0-97c3-02d3d9270441','technetsac','producto','b3bc0d40-805d-43aa-b85b-bc7a1be6eb02.jpg','E24 G4_2.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b3bc0d40-805d-43aa-b85b-bc7a1be6eb02.jpg'),
	 ('2f517b6d-8c6b-4fa3-93a0-b3c25eb6ac2a','technetsac','producto','a2636b54-4f2f-4f5d-a597-8215449aa777.webp','THINKPAD L460_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a2636b54-4f2f-4f5d-a597-8215449aa777.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('2ff5f2d9-cee7-430c-ae0f-038e8f06704e','technetsac','producto','c9e5e9c6-be4b-4a3c-b928-85605a4a805a.webp','elite5g_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/c9e5e9c6-be4b-4a3c-b928-85605a4a805a.webp'),
	 ('3066d1fb-c752-4f35-9c45-4f29e23f77ee','technetsac','producto','e340c8ec-669c-45b1-bacc-f7e5f742e188.webp','LATITUDE 7490_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e340c8ec-669c-45b1-bacc-f7e5f742e188.webp'),
	 ('334efa1a-8f86-4694-8472-a32c22c6561f','technetsac','producto','d0e973e7-5267-46b7-85cf-12ed05d74350.webp','thinkcentreM70s_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d0e973e7-5267-46b7-85cf-12ed05d74350.webp'),
	 ('34fddd78-4222-4be5-baa1-9813ab4c3075','technetsac','producto','5925f90b-c053-4b47-aaff-88f81fc2c696.webp','PRODESK-400-G7_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5925f90b-c053-4b47-aaff-88f81fc2c696.webp'),
	 ('3664aa25-300d-48ff-967b-ec085cd1f564','technetsac','producto','a6fc2ac9-c94f-4a55-ae9d-cff421f4492b.jpeg','THINKVISION E24-10_2.jpeg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a6fc2ac9-c94f-4a55-ae9d-cff421f4492b.jpeg'),
	 ('37615979-de45-4d68-9e20-16930cb383e8','technetsac','producto','cfd22412-7ab5-4183-b347-c211795321aa.webp','ProDesk 600 G1_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/cfd22412-7ab5-4183-b347-c211795321aa.webp'),
	 ('37f0c52f-d2dc-4447-b148-ccbeb75f95a9','technetsac','producto','dbd63277-63b1-49d9-bf75-e3e355f40804.webp','pc-hp-prodesk-400-g7-i5-3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/dbd63277-63b1-49d9-bf75-e3e355f40804.webp'),
	 ('3aac132a-4449-4f78-90f2-c362120ac1e6','technetsac','producto','93ce8068-df84-4c66-adeb-5ec91a476c40.webp','E2016H_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/93ce8068-df84-4c66-adeb-5ec91a476c40.webp'),
	 ('4021e25a-e89a-48a4-acde-3fd84a510a20','technetsac','producto','65f82c08-6526-4bea-9780-c024c7560db9.webp','elite5g_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/65f82c08-6526-4bea-9780-c024c7560db9.webp'),
	 ('4521ca0b-207e-4f0b-ba3a-2d2b2723d06e','technetsac','producto','0025bfcf-1a56-4e87-ac3f-898f2900f366.webp','M820Z_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0025bfcf-1a56-4e87-ac3f-898f2900f366.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('48bc8267-47d7-4ea8-932f-98167d558977','technetsac','producto','bd03bac6-ac5b-4486-9ad4-128e5944bc4d.webp','OPTIPLEX 7010 PLUS MICRO_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/bd03bac6-ac5b-4486-9ad4-128e5944bc4d.webp'),
	 ('4a755242-8d5f-426b-8ac9-ef4dcefaf09f','technetsac','producto','165bb3ae-afeb-45cd-a8cb-f1d9edc760f6.webp','THINKCENTRE M720S_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/165bb3ae-afeb-45cd-a8cb-f1d9edc760f6.webp'),
	 ('4e23aea2-30fc-4a94-9664-8f524c93c2d0','technetsac','producto','ca284f56-1b84-4552-bf1f-6d1de130db3f.jpg','THINKCENTRE M720Q_3.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ca284f56-1b84-4552-bf1f-6d1de130db3f.jpg'),
	 ('4ecbc98f-6dfd-40a1-9e86-534c4e29e908','technetsac','producto','ecac0a26-df80-420d-a2d8-cf02e30ad43b.webp','prodesk 400 g6 1050_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ecac0a26-df80-420d-a2d8-cf02e30ad43b.webp'),
	 ('4f7ab1aa-ea3f-4b39-bf5e-24d55894476a','technetsac','producto','d5fa2d47-f243-43f5-976c-ccba55cf547b.webp','prodesk 400 g5 730so_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d5fa2d47-f243-43f5-976c-ccba55cf547b.webp'),
	 ('50843289-8d23-4d52-b175-fec138384615','technetsac','producto','6dc57015-9934-49f9-8526-a6d05573ad50.webp','prodesk 400 g6 1050_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/6dc57015-9934-49f9-8526-a6d05573ad50.webp'),
	 ('51fc8c82-f583-4990-a5b3-654e38b7caf1','technetsac','producto','baeaf154-cf66-4c81-94bd-44eab9eca80f.webp','thinkcentreM70s_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/baeaf154-cf66-4c81-94bd-44eab9eca80f.webp'),
	 ('52e59b59-af5c-47ad-b645-cc18f5320156','technetsac','producto','05006a97-1e78-4c81-bf15-040010a260ed.webp','THINKCENTRE M710S_I5_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/05006a97-1e78-4c81-bf15-040010a260ed.webp'),
	 ('52f0f254-5ed8-478a-af20-c79736ebe5e8','technetsac','producto','12432260-ba19-49fd-9ef7-4d8e9c9bf10f.jpg','E24 G4_3.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/12432260-ba19-49fd-9ef7-4d8e9c9bf10f.jpg'),
	 ('541a8b39-67a9-46b2-8ce1-786461de3025','technetsac','producto','b9de0fc9-30d8-4d7c-875e-914ef23d07c0.webp','THINKPAD T460_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b9de0fc9-30d8-4d7c-875e-914ef23d07c0.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('54869084-817b-49db-a6b5-123987c63675','technetsac','producto','4f431a9c-3e37-443c-818e-2411153582c1.jpg','V203_1.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/4f431a9c-3e37-443c-818e-2411153582c1.jpg'),
	 ('54de8dec-1a17-4087-8224-19ebe07dea62','technetsac','producto','762ccd7f-d287-4603-8961-81a220ccc4fa.webp','ELITEBOOK 840 G3_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/762ccd7f-d287-4603-8961-81a220ccc4fa.webp'),
	 ('581356c2-c1ad-4de3-82fd-8600733ce255','technetsac','producto','2c8b2bab-c36c-4057-a926-d7738140a957.webp','elite4g_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2c8b2bab-c36c-4057-a926-d7738140a957.webp'),
	 ('586b1767-8b5a-4275-9059-286f3fb5fe03','technetsac','producto','eaf69108-f77a-403e-85ea-c97b927fcadb.webp','a5fc9dd9-fa5e-4cf1-b780-8a3dc73ddf79.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/eaf69108-f77a-403e-85ea-c97b927fcadb.webp'),
	 ('5b047f27-bef8-470c-bdd0-1d059e0d8f83','technetsac','producto','586084fe-8d29-4dff-afcd-1c3524f8039f.webp','prodesk 600 g5 500so_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/586084fe-8d29-4dff-afcd-1c3524f8039f.webp'),
	 ('5b107169-a1e7-465c-86d4-0f73e59f69a7','technetsac','producto','a8051467-a611-4cc7-9cdf-783d22a9757f.webp','M820Z_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a8051467-a611-4cc7-9cdf-783d22a9757f.webp'),
	 ('5ce0b849-8628-4e89-95b8-b085c1333812','technetsac','producto','2a027e30-f7e6-4386-9b5e-10ac99748e62.webp','E2222HS_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2a027e30-f7e6-4386-9b5e-10ac99748e62.webp'),
	 ('61923bcf-80cb-40b9-9ebb-dda4427b4132','technetsac','producto','0e161d15-1b95-4047-a3fe-3f41bbe52b3d.webp','OPTIPLEX 3040_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0e161d15-1b95-4047-a3fe-3f41bbe52b3d.webp'),
	 ('61ed9fff-2a1f-4526-bb8d-10a25de56a7b','technetsac','producto','ef7da6ae-ecb5-40ea-956e-91280c51e081.jpg','THINKCENTRE M720Q_1.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ef7da6ae-ecb5-40ea-956e-91280c51e081.jpg'),
	 ('61fdb8d5-d29f-4463-8b1e-8088bfef0a1f','technetsac','producto','0f0e75a3-d339-4998-8211-0a35a27f2cc6.webp','P2422H_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0f0e75a3-d339-4998-8211-0a35a27f2cc6.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('6218df98-f614-4809-bc9c-1921b45c3540','technetsac','producto','3f70c6dd-3698-460b-8d8b-7a81fb0b71dd.webp','THINKVISION T22V-10_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/3f70c6dd-3698-460b-8d8b-7a81fb0b71dd.webp'),
	 ('6285784c-9b83-46ed-a6ee-5bcf66c0a64d','technetsac','producto','a88fbbac-efd6-40e2-a548-83328b122510.webp','THINKVISION T2054PC_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a88fbbac-efd6-40e2-a548-83328b122510.webp'),
	 ('63b36f9b-9e44-4f7e-9277-98c233eb0aff','technetsac','producto','ea311348-8d96-4a2c-8562-d106ec9c3821.jpg','G6I5HDPL_2.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ea311348-8d96-4a2c-8562-d106ec9c3821.jpg'),
	 ('6545be87-c51b-48ce-82cd-52552666facd','technetsac','producto','f792f563-407e-47c9-a29b-7bcc19fca249.webp','LATITUDE 5420_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/f792f563-407e-47c9-a29b-7bcc19fca249.webp'),
	 ('65924f63-1f59-4a87-b3fe-f06a80fcadf5','technetsac','producto','9195640e-6ce2-4e83-893f-1d9eb1510235.webp','THINKVISION T22I-10_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9195640e-6ce2-4e83-893f-1d9eb1510235.webp'),
	 ('66054895-bae0-4022-b123-d95dd72d1de7','technetsac','producto','a5a0ed31-2b71-4f1b-85d1-53e27d4a8f4c.webp','Z2 TOWER G5_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a5a0ed31-2b71-4f1b-85d1-53e27d4a8f4c.webp'),
	 ('6608b677-e328-4717-abb6-93ee3198a2ad','technetsac','producto','9a8b867b-3821-4508-904a-042fe0c6354b.webp','ProDesk 600 G1_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9a8b867b-3821-4508-904a-042fe0c6354b.webp'),
	 ('6675e5a0-8a05-40f4-a28c-c78141149975','technetsac','producto','823b4074-ac8a-4767-a891-4135c3f67c90.webp','OPTIPLEX 7010 PLUS MICRO_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/823b4074-ac8a-4767-a891-4135c3f67c90.webp'),
	 ('66fb7036-2199-4f40-af30-83b07f21c775','technetsac','producto','c3cf1986-34e1-47a9-8f80-3280b2982e04.webp','PRECISION 5570_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/c3cf1986-34e1-47a9-8f80-3280b2982e04.webp'),
	 ('6755b0a7-8a02-437d-a7a8-475ffe356a23','technetsac','producto','dc1688a7-f6d8-4f9c-b3d4-67a1489b7481.webp','elite5g_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/dc1688a7-f6d8-4f9c-b3d4-67a1489b7481.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('676ec725-adf3-452a-90c9-7ef04ca7770c','technetsac','producto','933a00fb-cf7e-4f66-b0b6-09da64a1eadc.jpg','E7470_4.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/933a00fb-cf7e-4f66-b0b6-09da64a1eadc.jpg'),
	 ('67fc748b-3736-495d-a1b5-049aa5359ca8','technetsac','producto','5f8415d5-c6af-4338-9a2b-e0b93fa62911.webp','E2222HS_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5f8415d5-c6af-4338-9a2b-e0b93fa62911.webp'),
	 ('688d16b0-a4ab-4a99-812a-befd8d8f65a7','technetsac','producto','a518903f-55f2-4ecc-b7a0-a2667dbc4dca.webp','LATITUDE 7490_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a518903f-55f2-4ecc-b7a0-a2667dbc4dca.webp'),
	 ('6907c663-e260-43c9-8f8a-4ab768126714','technetsac','producto','716edfb4-9cea-45e4-b3e4-dd81c1a7a173.webp','PRECISION 5570_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/716edfb4-9cea-45e4-b3e4-dd81c1a7a173.webp'),
	 ('69df979e-170c-48c9-97b6-b2696901e66f','technetsac','producto','3901399d-314e-4055-85e3-84436dcf0915.webp','THINKPAD L460_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/3901399d-314e-4055-85e3-84436dcf0915.webp'),
	 ('6af4a9a6-6999-49e0-8914-a6063ee385d3','technetsac','producto','35d6e342-c3cf-4201-bede-6e42a89dd2fc.webp','OPTIPLEX 3040_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/35d6e342-c3cf-4201-bede-6e42a89dd2fc.webp'),
	 ('6beda77b-1e39-4d3d-a843-c41b834217dd','technetsac','producto','9b19c492-eb05-4f82-96bd-c9df0b81cb0c.webp','THINKVISION T22I-10_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9b19c492-eb05-4f82-96bd-c9df0b81cb0c.webp'),
	 ('6bfd387e-3800-43cb-914d-d88a06383e32','technetsac','producto','0fa3bb9b-c8ea-4b2f-b05d-5feb06146bbe.webp','165bb3ae-afeb-45cd-a8cb-f1d9edc760f6.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0fa3bb9b-c8ea-4b2f-b05d-5feb06146bbe.webp'),
	 ('6d1f7abb-8a2d-485f-aa77-457fe16b05ff','technetsac','producto','8e9e071a-abdb-45e0-bf38-559c5014d4a4.webp','prodesk 400 g6 1050_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/8e9e071a-abdb-45e0-bf38-559c5014d4a4.webp'),
	 ('6e81942f-5e18-4172-aa16-782ff312f22e','technetsac','producto','3f907c7d-3791-45c7-8522-5d8c24f14837.webp','V190_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/3f907c7d-3791-45c7-8522-5d8c24f14837.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('6edf28b8-691e-4027-b578-2770b0b8cdc9','technetsac','producto','2a2ec921-47bf-4361-85f9-f521d963b858.jpg','THINKCENTRE M720Q_4.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2a2ec921-47bf-4361-85f9-f521d963b858.jpg'),
	 ('6f7b9f6d-70a3-4f60-bca2-1fc83f880eeb','technetsac','producto','27018e1e-384d-4cde-a247-423a1cabcd8b.webp','thinkcentreM70s2_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/27018e1e-384d-4cde-a247-423a1cabcd8b.webp'),
	 ('70376d6d-2ad0-4f3c-b808-195ac4e43a88','technetsac','producto','0fa212da-f9c9-4990-b7cf-331348bd9ce5.webp','THINKCENTRE M720S_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0fa212da-f9c9-4990-b7cf-331348bd9ce5.webp'),
	 ('7163a059-6599-415a-805d-d92b30c5704f','technetsac','producto','c1851b98-83ba-49cd-b2e4-5b59cbf361b9.webp','EliteDesk 800 G3_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/c1851b98-83ba-49cd-b2e4-5b59cbf361b9.webp'),
	 ('738c5c1d-99f2-4921-b16a-1880b4190f78','technetsac','producto','59af05fc-29da-4fdd-b82f-cfa715ec8c31.webp','M820Z_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/59af05fc-29da-4fdd-b82f-cfa715ec8c31.webp'),
	 ('73dadf51-6abf-4438-be6c-06b935754b23','technetsac','producto','5bc3655f-3f3d-4c98-bb1f-ce1dfe4c966f.webp','E2016H_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5bc3655f-3f3d-4c98-bb1f-ce1dfe4c966f.webp'),
	 ('7479584a-6792-4228-97e0-c75d0e0b5eb3','technetsac','producto','2bf77ca5-593d-4bb5-813a-4618f6701060.webp','INSPIRON 14 3467_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2bf77ca5-593d-4bb5-813a-4618f6701060.webp'),
	 ('76aa781f-d435-496f-b918-b113645564b0','technetsac','producto','80bdb25f-6951-42ef-b736-c3543728c00b.webp','E5470_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/80bdb25f-6951-42ef-b736-c3543728c00b.webp'),
	 ('799d58b9-8fac-41d6-82c3-106fb43c831a','technetsac','producto','b3074046-040e-4c6d-b708-1d59522aea5d.webp','THINKVISION T2054PC_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b3074046-040e-4c6d-b708-1d59522aea5d.webp'),
	 ('7aa61479-1f6b-40d4-9d3f-d26256bbc427','technetsac','producto','5a1bf217-eb77-4320-a98f-cc95d6da2a40.webp','Compaq LA2405x_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5a1bf217-eb77-4320-a98f-cc95d6da2a40.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('7d6f04fe-a353-454a-af5d-74a1dba5ed10','technetsac','producto','e7a54ca5-e9d7-4513-beef-ec90f0d63a68.webp','p224_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e7a54ca5-e9d7-4513-beef-ec90f0d63a68.webp'),
	 ('80258b3c-8d9d-4887-9f2d-76414a454e1f','technetsac','producto','05e3b304-dd6f-4763-a854-cbaf1aceacd4.webp','Compaq LA2405x_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/05e3b304-dd6f-4763-a854-cbaf1aceacd4.webp'),
	 ('820424f1-8a60-40e1-a37d-90e6902ed185','technetsac','producto','792907d1-555f-45ad-bc0e-446e2182b92f.webp','PROBOOK 440 G5_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/792907d1-555f-45ad-bc0e-446e2182b92f.webp'),
	 ('822d7836-a0a2-4fd9-815e-2079b6512866','technetsac','producto','9863eb12-cd3a-4be2-966e-8094418a0f30.webp','M90Q_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9863eb12-cd3a-4be2-966e-8094418a0f30.webp'),
	 ('83e4bcf2-da98-4216-97b8-5468d985edad','technetsac','producto','a5fc9dd9-fa5e-4cf1-b780-8a3dc73ddf79.webp','prodesk 600 g5 500so_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a5fc9dd9-fa5e-4cf1-b780-8a3dc73ddf79.webp'),
	 ('86cd1fd9-5992-46fe-834a-e4982c1d3468','technetsac','producto','d58b578b-2b32-4ab5-9ff4-a28e03921480.webp','INSPIRON 14 3467_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d58b578b-2b32-4ab5-9ff4-a28e03921480.webp'),
	 ('8825df3a-ce9e-4c4b-8791-1375803b5aba','technetsac','producto','d8ea2960-12db-4f32-9d4a-0ef851f2c163.webp','711e9fbf-a867-407b-8f26-d27d00c6e63e.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d8ea2960-12db-4f32-9d4a-0ef851f2c163.webp'),
	 ('8b0eaa19-113d-4772-90c8-b8edfd0428e6','technetsac','producto','859a54f8-614c-4f80-8161-bb5f8789c7d7.webp','A1419_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/859a54f8-614c-4f80-8161-bb5f8789c7d7.webp'),
	 ('8c1cdf05-0eaf-44f2-badf-aac898a28be7','technetsac','producto','756af1a6-26de-428e-94dd-08051dba1c61.webp','PROBOOK 440 G5_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/756af1a6-26de-428e-94dd-08051dba1c61.webp'),
	 ('8c2c6d57-5223-4abc-8f74-fa3a25d8c1e2','technetsac','producto','b965dedc-6fc8-485f-9c91-1323272897ab.webp','E2222HS_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b965dedc-6fc8-485f-9c91-1323272897ab.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('8e92ca46-4d96-41a1-b798-901853c453a7','technetsac','producto','78b55bef-20fe-4048-af3e-51fb20eae675.jpg','E7470_7.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/78b55bef-20fe-4048-af3e-51fb20eae675.jpg'),
	 ('91251646-e35a-471c-ae01-4fd332fdc666','technetsac','producto','a76824cb-dab6-4720-84cd-55bd2d47a4d7.jpeg','THINKVISION E24-10_3.jpeg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a76824cb-dab6-4720-84cd-55bd2d47a4d7.jpeg'),
	 ('936dc2e6-c880-4c00-add0-00ad5eefa2c1','technetsac','producto','82981737-ee29-4164-acbf-023bf1434cb8.jpg','E7470_8.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/82981737-ee29-4164-acbf-023bf1434cb8.jpg'),
	 ('94731f27-0875-44ab-a792-8697730fda85','technetsac','producto','c267a4b2-1f8f-4f66-a6c9-5eee10a63057.webp','ELITEBOOK 840 G3_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/c267a4b2-1f8f-4f66-a6c9-5eee10a63057.webp'),
	 ('94f20a34-9e24-43f3-862b-79869d1c2f8d','technetsac','producto','ae33095c-d39f-4ceb-a354-cb4ff231cee6.jpg','E24 G4_4.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ae33095c-d39f-4ceb-a354-cb4ff231cee6.jpg'),
	 ('96a06ff1-f125-4e1a-a45a-20f82f5a180b','technetsac','producto','beb2479f-06b5-419f-9ee6-712bd42ee180.webp','E2222HS_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/beb2479f-06b5-419f-9ee6-712bd42ee180.webp'),
	 ('97587968-4d2b-499e-9eac-5b5337daf2f5','technetsac','producto','a100f7ee-66cf-4302-9587-c629fdbeb83e.webp','prodesk 400 g5 730so_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a100f7ee-66cf-4302-9587-c629fdbeb83e.webp'),
	 ('99aa1451-d8ed-46b0-a32a-0333377ec4f5','technetsac','producto','4ca32951-03d8-4cef-8645-419552e85d61.webp','a5fc9dd9-fa5e-4cf1-b780-8a3dc73ddf79.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/4ca32951-03d8-4cef-8645-419552e85d61.webp'),
	 ('9a7fb0fb-4220-4a37-8db1-4366e6be7e04','technetsac','producto','b9870435-4fc2-4aaf-bc8d-ea756ed1eb4e.webp','ELITEBOOK 840 G3_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b9870435-4fc2-4aaf-bc8d-ea756ed1eb4e.webp'),
	 ('9b246d21-d1ba-4e8d-bf65-891d2a368ee8','technetsac','producto','4aeb5864-c816-428b-a806-69cca64d9237.webp','LATITUDE 5420_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/4aeb5864-c816-428b-a806-69cca64d9237.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('9f8585c7-0c0f-4ba5-9eb7-6177a8f6ed11','technetsac','producto','222cf75d-336f-4a2c-804e-fbc8b72b9dfa.jpg','E7470_6.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/222cf75d-336f-4a2c-804e-fbc8b72b9dfa.jpg'),
	 ('9ff564ed-95a6-4a17-80f4-2da4f66d81fd','technetsac','producto','2f4942ef-0a79-4240-9f77-f000c7e5e589.jpg','E24 G4_1.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2f4942ef-0a79-4240-9f77-f000c7e5e589.jpg'),
	 ('a07dc7e6-ec78-4bcf-9290-ca74a08d0fc8','technetsac','producto','86e7ed6b-a50a-4081-bfbb-d74408a903e4.webp','LATITUDE 5420_6.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/86e7ed6b-a50a-4081-bfbb-d74408a903e4.webp'),
	 ('a1997853-75de-432a-aabf-ba1543755ece','technetsac','producto','779c2eda-7317-46bd-a3c0-9f28b517a00d.webp','586084fe-8d29-4dff-afcd-1c3524f8039f.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/779c2eda-7317-46bd-a3c0-9f28b517a00d.webp'),
	 ('a4cf7c14-cc5f-48de-a779-1b34f6ce3c4c','technetsac','producto','31ea1106-56cf-475d-b24d-74882516a2a7.webp','THINKCENTRE M710S_I5_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/31ea1106-56cf-475d-b24d-74882516a2a7.webp'),
	 ('a6df403c-e8b9-40aa-94d7-029c7d033a3a','technetsac','producto','b9fecb9a-8dc1-43bb-b9f1-eeb3f3642a50.webp','OPTIPLEX 3040_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/b9fecb9a-8dc1-43bb-b9f1-eeb3f3642a50.webp'),
	 ('a867646a-8256-497f-a1ce-1630c8b17e20','technetsac','producto','2902f1a0-999f-411d-ae82-e17f94432c0a.webp','PROBOOK 440 G5_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2902f1a0-999f-411d-ae82-e17f94432c0a.webp'),
	 ('a8e145d7-c129-4839-99d2-4ce246f2dd59','technetsac','producto','c1e147de-21f0-41e9-93aa-12636b59eebb.webp','THINKCENTRE M720S_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/c1e147de-21f0-41e9-93aa-12636b59eebb.webp'),
	 ('aa36eb34-764d-4aa5-a17b-d455ca09ad13','technetsac','producto','84d16193-2907-4f00-9774-36132aac65c5.jpeg','THINKVISION E24-10_1.jpeg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/84d16193-2907-4f00-9774-36132aac65c5.jpeg'),
	 ('ae50782e-026a-45d6-879c-3376d7e92d9d','technetsac','producto','ab1dcf85-7b7e-479a-b9c0-d3e20d362a75.webp','prodesk 400 g3_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ab1dcf85-7b7e-479a-b9c0-d3e20d362a75.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('ae9f9076-369a-4755-9c65-be0e73ea68e8','technetsac','producto','f1ba6c63-eb3c-4bb5-b6a7-f906b68828dd.webp','ProDesk 600 G1_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/f1ba6c63-eb3c-4bb5-b6a7-f906b68828dd.webp'),
	 ('b0498fd3-6fdc-4ac5-a5fc-3116fca43718','technetsac','producto','d2bab0f7-6d2d-4834-a2e3-201cfdb8f628.webp','LATITUDE 5420_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d2bab0f7-6d2d-4834-a2e3-201cfdb8f628.webp'),
	 ('b07be0d1-655a-4070-a7eb-3f70676661e4','technetsac','producto','0b97eb06-7ce6-49d6-a26b-a25935974ddd.webp','EliteDesk 800 G4_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0b97eb06-7ce6-49d6-a26b-a25935974ddd.webp'),
	 ('b24b7556-b727-4bce-8836-753e722ae89e','technetsac','producto','76bfc2a2-6423-4d08-adba-a4f23b115703.webp','P2422H_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/76bfc2a2-6423-4d08-adba-a4f23b115703.webp'),
	 ('b64530d3-a49b-4327-8e26-3ef9e10b61f9','technetsac','producto','0ffde73d-b8e8-4655-bf1c-6a517f670bb2.webp','Compaq LA2405x_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0ffde73d-b8e8-4655-bf1c-6a517f670bb2.webp'),
	 ('b7541052-3755-4d70-9e14-14343f54c139','technetsac','producto','d7811e05-2ec1-4da8-a44b-3c74cbdc6d02.webp','E2016H_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d7811e05-2ec1-4da8-a44b-3c74cbdc6d02.webp'),
	 ('b7f7974a-bb78-4699-aa3f-3c18bcaff902','technetsac','producto','686ba98d-bc3c-410a-b231-22e41c2e2d54.webp','EliteDesk 800 G4_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/686ba98d-bc3c-410a-b231-22e41c2e2d54.webp'),
	 ('b912be0b-5b15-42c7-bc10-1aed772e2de0','technetsac','producto','a190372e-2b98-4bb8-a202-37a5d17cf26a.webp','THINKVISION T22V-10_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/a190372e-2b98-4bb8-a202-37a5d17cf26a.webp'),
	 ('b9b0f154-8436-4382-8903-ccc721079e80','technetsac','producto','1275cde1-88b3-4a5c-af1c-d22b53da23a2.webp','thinkcentreM70s_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/1275cde1-88b3-4a5c-af1c-d22b53da23a2.webp'),
	 ('b9cd0a3f-3027-4612-b19f-294e0717267a','technetsac','producto','d22170b6-0763-471d-9c18-850e6e2421e8.webp','prodesk 400 g5 730so_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d22170b6-0763-471d-9c18-850e6e2421e8.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('bcb023b2-bafb-4f8a-b237-eb8937412979','technetsac','producto','56a4a22c-7e7d-4db0-91f3-4fb3cfd58c13.webp','M820Z_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/56a4a22c-7e7d-4db0-91f3-4fb3cfd58c13.webp'),
	 ('bd9b3a1b-06ec-421c-889f-70a73e6fdd6c','technetsac','producto','5150d064-9575-4f8e-b24f-b91abac355c6.webp','prodesk 400 g5 730so_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5150d064-9575-4f8e-b24f-b91abac355c6.webp'),
	 ('bdab6bd9-f69a-4da0-b477-9f962577db4c','technetsac','producto','7760bc6d-52c4-41ee-b60b-d4c4bc03f22a.webp','INSPIRON 14 3467_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7760bc6d-52c4-41ee-b60b-d4c4bc03f22a.webp'),
	 ('c2c8313f-745b-4b25-8aa7-e731d1c067f8','technetsac','producto','1375b624-f00e-4d4f-8293-55d0e306a3bd.webp','OPTIPLEX 7010 PLUS MICRO_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/1375b624-f00e-4d4f-8293-55d0e306a3bd.webp'),
	 ('c4a230f4-6576-4c14-8c84-ae2d0e69b8f0','technetsac','producto','51bb19b8-63af-447d-a5e3-99f7de0fa2d7.jpg','THINKCENTRE M720Q_1.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/51bb19b8-63af-447d-a5e3-99f7de0fa2d7.jpg'),
	 ('c56e0573-fa15-4120-8fcb-13c9611e1798','technetsac','producto','5073b09a-adb3-4224-9550-28867800cb93.jpg','E7470_5.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5073b09a-adb3-4224-9550-28867800cb93.jpg'),
	 ('c579f09b-824a-4d07-83aa-e9848c4d6de4','technetsac','producto','f3b74ca4-9fdd-4904-a1ac-71af01405af4.jpeg','THINKVISION E24-10_4.jpeg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/f3b74ca4-9fdd-4904-a1ac-71af01405af4.jpeg'),
	 ('c57a55bf-6b8a-42a3-b1c2-0c9c01c35be3','technetsac','producto','ad836dc6-85fa-4b94-9055-cfa1e9990e72.webp','THINKPAD T460_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ad836dc6-85fa-4b94-9055-cfa1e9990e72.webp'),
	 ('c6ef9ad7-92be-48d3-9afc-63cfd2d9ebad','technetsac','producto','e82f6af3-29db-45b3-9620-e6888181bd1f.webp','PRODESK-400-G7_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e82f6af3-29db-45b3-9620-e6888181bd1f.webp'),
	 ('c724f9cd-f0db-406d-9424-ca87b1cbb7e0','technetsac','producto','375d2e5c-c43e-48ac-be0b-73305308af9a.jpg','THINKCENTRE M720Q_3.jpg','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/375d2e5c-c43e-48ac-be0b-73305308af9a.jpg');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('c7d1a8c9-58c7-4973-b6f1-87df13b17d03','technetsac','producto','fc4a3fc4-6a3a-4b49-a615-39035ebcd668.webp','E2016H_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/fc4a3fc4-6a3a-4b49-a615-39035ebcd668.webp'),
	 ('c9715460-5318-4128-b55f-2df854800c20','technetsac','producto','0e752b7e-bd19-42e0-8847-c9433d10e626.webp','thinkcentreM70s2_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0e752b7e-bd19-42e0-8847-c9433d10e626.webp'),
	 ('cc023d83-02e7-444c-82f7-4c34e2ca141b','technetsac','producto','e81e2f48-89f9-493e-aa76-cb4a840d63f2.webp','thinkcentreM70s_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e81e2f48-89f9-493e-aa76-cb4a840d63f2.webp'),
	 ('cd234e55-2ac3-4e1b-b2e6-a4a8fa6fe304','technetsac','producto','6687b384-a513-4b06-923f-13350be4c54b.webp','PRECISION 5570_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/6687b384-a513-4b06-923f-13350be4c54b.webp'),
	 ('ce4f9ccd-b558-4221-9568-e87a7c0aff3b','technetsac','producto','04054bcf-5158-45ba-b6be-74e06e379834.webp','THINKVISION T22I-10_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/04054bcf-5158-45ba-b6be-74e06e379834.webp'),
	 ('cebfc69f-2c0e-4820-bba5-0c215ac5d957','technetsac','producto','0f505bf6-c929-40bf-be5c-2459f4d7929d.webp','0fa212da-f9c9-4990-b7cf-331348bd9ce5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/0f505bf6-c929-40bf-be5c-2459f4d7929d.webp'),
	 ('ced11e75-86f9-452c-9ce1-f3efc190d73e','technetsac','producto','07cc3bfd-9015-4285-817b-faa2dd08d8bb.webp','INSPIRON 14 3467_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/07cc3bfd-9015-4285-817b-faa2dd08d8bb.webp'),
	 ('d00f4537-5095-40f9-9af5-953f47e0f6b7','technetsac','producto','4b6bef3f-ff32-433f-a0fe-0b1f5426744c.webp','V203_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/4b6bef3f-ff32-433f-a0fe-0b1f5426744c.webp'),
	 ('d1919861-ae7e-4270-b7f5-656f91e060d1','technetsac','producto','d7c46b63-d459-4b4b-93d0-5b7544c12e7c.webp','ELITEBOOK 840 G3_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d7c46b63-d459-4b4b-93d0-5b7544c12e7c.webp'),
	 ('d1efd3fb-2afa-432a-bce4-e951ed6e5af7','technetsac','producto','2c69e470-2492-48e6-96fb-479635f2f61f.webp','PRODESKG5_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/2c69e470-2492-48e6-96fb-479635f2f61f.webp');

INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('db5d5181-e76e-40bc-98bb-986bfdf3f7ad','technetsac','producto','d5bb3528-d7df-4c59-bedc-47326ea59ecc.webp','p224_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d5bb3528-d7df-4c59-bedc-47326ea59ecc.webp'),
	 ('dce49319-fac0-4f15-a799-5fab418cf30f','technetsac','producto','9ca8c30a-e21e-4185-ada8-d193e7a79a33.webp','THINKVISION T22V-10_6.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9ca8c30a-e21e-4185-ada8-d193e7a79a33.webp'),
	 ('dd922d03-1627-4f9c-8555-def981f31d8e','technetsac','producto','e8d2a6b6-ee05-4890-b022-170347d18df2.webp','PRODESK-400-G7_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e8d2a6b6-ee05-4890-b022-170347d18df2.webp'),
	 ('dde6d969-9dd9-4ea6-86b6-49ae4333c0d4','technetsac','producto','955ccc0b-a512-479c-a7fd-78409271eef0.webp','OPTIPLEX 7010 PLUS MICRO_5.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/955ccc0b-a512-479c-a7fd-78409271eef0.webp'),
	 ('de730be4-1053-42d2-8fac-fd1d72581846','technetsac','producto','8c53172c-75a8-4533-b0c0-05b135edca31.webp','pc-hp-prodesk-400-g7-i5-2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/8c53172c-75a8-4533-b0c0-05b135edca31.webp'),
	 ('df073a3b-ba37-4992-889d-2338e90d0f98','technetsac','producto','7932d1f1-db15-4d1e-b07d-dd5c637b33cf.webp','711e9fbf-a867-407b-8f26-d27d00c6e63e.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7932d1f1-db15-4d1e-b07d-dd5c637b33cf.webp'),
	 ('e0cffa5b-6f01-44ee-9fe8-f89d5e4b8c8e','technetsac','producto','d7ad33bf-832f-41b7-82f8-b7949a9ab1a9.webp','THINKVISION T2054PC_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d7ad33bf-832f-41b7-82f8-b7949a9ab1a9.webp'),
	 ('e159a6e8-f20f-4430-935a-b49dd01bba6d','technetsac','producto','ad010dfe-4fc3-4e3e-bd3e-fd191e714a64.webp','M820Z_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/ad010dfe-4fc3-4e3e-bd3e-fd191e714a64.webp'),
	 ('e30fb698-3b48-4070-ba10-eca50a665f07','technetsac','producto','aae00c5d-6c51-4e4a-aa7a-d6394800e8c4.webp','E2222HS_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/aae00c5d-6c51-4e4a-aa7a-d6394800e8c4.webp'),
	 ('e3461269-e8a4-454e-a6c0-6620d3ffc66b','technetsac','producto','8ec2cc54-a39e-4437-8e35-3af886bc25a4.webp','M820Z_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/8ec2cc54-a39e-4437-8e35-3af886bc25a4.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('e3bd6b83-20b8-4153-8abd-17a0aa9ca7ca','technetsac','producto','9c9bb206-bc2f-4792-a18d-cabedc036f82.webp','PRECISION 5570_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9c9bb206-bc2f-4792-a18d-cabedc036f82.webp'),
	 ('e60289fb-62a8-4cc7-92b3-45827110784b','technetsac','producto','7d9e29e3-496a-49ba-be63-f96a143b58d1.webp','pc-hp-prodesk-400-g7-i5-1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7d9e29e3-496a-49ba-be63-f96a143b58d1.webp'),
	 ('e864089f-ee54-4aa2-93a6-e121c826d694','technetsac','producto','7a27cf84-1272-4484-ac57-b66d2045e3fb.webp','M820Z_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7a27cf84-1272-4484-ac57-b66d2045e3fb.webp'),
	 ('ebaeb3c1-007a-4ba0-8a0b-3300679ccce8','technetsac','producto','d720d1bf-5181-44d0-9dbd-a66ffc6522fd.webp','V190_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d720d1bf-5181-44d0-9dbd-a66ffc6522fd.webp'),
	 ('ed63c90e-77f8-440f-a9fb-9ba5138675bb','technetsac','producto','7a6329c9-911a-4195-87a5-20f223a5e838.webp','A1419_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7a6329c9-911a-4195-87a5-20f223a5e838.webp'),
	 ('eda7dc0e-c90b-4c2a-aed9-8e74071e3a0d','technetsac','producto','d20d1802-e296-47c5-a560-79a29873d9b5.webp','M820Z_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d20d1802-e296-47c5-a560-79a29873d9b5.webp'),
	 ('eea05e31-3386-4b6b-a9de-5dca1c4a8c83','technetsac','producto','bc7f6274-0e9f-40e0-9667-3172d150722a.webp','Compaq LA2405x_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/bc7f6274-0e9f-40e0-9667-3172d150722a.webp'),
	 ('ef0faf4b-04fa-48b1-bc39-0c0fc938d6e4','technetsac','flyer principal','6ff8871d-7b9c-47a5-9e76-13620b90db6a.jpg','172133904121660.jpg','imagenes_publicitarias','https://technetsac.s3.us-east-2.amazonaws.com/6ff8871d-7b9c-47a5-9e76-13620b90db6a.jpg'),
	 ('f52ed9c1-0a05-496c-b392-d49cd0e9b0f5','technetsac','producto','db036d89-6e69-4ab8-89c4-3449bc0cab53.webp','OPTIPLEX 7010 PLUS MICRO_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/db036d89-6e69-4ab8-89c4-3449bc0cab53.webp'),
	 ('f53581b2-eaed-411a-8bde-ec14890e73e2','technetsac','producto','64c9bf41-59c3-4c37-a142-9740a3fb913c.webp','LATITUDE 7490_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/64c9bf41-59c3-4c37-a142-9740a3fb913c.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('d2ce3a94-c96c-453c-8f65-dccaff35b4e2','technetsac','producto','5df85a8a-eb99-44e2-a2bf-038c6ee470af.webp','106437f1-9f1b-43a4-97ba-326da895b625.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5df85a8a-eb99-44e2-a2bf-038c6ee470af.webp'),
	 ('d3bd1f33-926e-4ede-8486-82fc62fb8684','technetsac','producto','5081e204-f219-49bb-8400-24ff421e0753.webp','p224_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/5081e204-f219-49bb-8400-24ff421e0753.webp'),
	 ('d3c06339-e53b-404e-aeba-f99397e93dc2','technetsac','producto','9ab2ba4d-bbb7-4d65-ba3d-1aeb31bcbeca.webp','THINKCENTRE M710S_I5_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9ab2ba4d-bbb7-4d65-ba3d-1aeb31bcbeca.webp'),
	 ('d3fb72e9-9a37-4885-a559-a68e861dca47','technetsac','producto','997447a6-94bc-422f-b899-4a67e7e4f3b0.webp','A1419_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/997447a6-94bc-422f-b899-4a67e7e4f3b0.webp'),
	 ('d4d00509-4219-4357-9dcc-450753aaf06a','technetsac','producto','6becab2f-7429-44a8-ae11-48b2f55a44d9.webp','PRECISION 5570_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/6becab2f-7429-44a8-ae11-48b2f55a44d9.webp'),
	 ('d5445b3a-2d7b-4382-a90c-c38c1ddc5d3c','technetsac','producto','36f4eba1-8b6a-447d-a852-fd3cfeef2495.webp','EliteDesk 800 G3_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/36f4eba1-8b6a-447d-a852-fd3cfeef2495.webp'),
	 ('d688228d-68b0-4467-a3a3-5bcd619fe316','technetsac','producto','dff49ee4-6a70-47bd-ab5c-11d9d8eba4e1.webp','EliteDesk 800 G4_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/dff49ee4-6a70-47bd-ab5c-11d9d8eba4e1.webp'),
	 ('d7240c90-f83a-4986-8cc3-25a3dac46cbd','technetsac','producto','e9e996ad-0dda-4f79-96d6-7678c68dd0f2.webp','LATITUDE 7490_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/e9e996ad-0dda-4f79-96d6-7678c68dd0f2.webp'),
	 ('d96f3372-3175-457d-a91d-cdf9c1415339','technetsac','producto','8a9761a8-ff77-41d9-8bd5-eebc84b33fd4.webp','Z2 TOWER G5_2.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/8a9761a8-ff77-41d9-8bd5-eebc84b33fd4.webp'),
	 ('da3de890-ab17-4c7c-93f3-8046338a2786','technetsac','producto','636fa2b3-633a-4769-a9de-49b4b3379b07.webp','THINKCENTRE M710S_I5_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/636fa2b3-633a-4769-a9de-49b4b3379b07.webp');
INSERT INTO Archivo (id,bucketname,descripcion,namekey,nombre,tipo_archivo,url) VALUES
	 ('f6ebb224-5700-4f88-aaea-6dab77d99f84','technetsac','producto','7a3b71bf-52a7-42ee-a341-477b3870cd34.webp','prodesk 400 g6 1050_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/7a3b71bf-52a7-42ee-a341-477b3870cd34.webp'),
	 ('f90f41f5-e52e-4aa9-bb42-acba64300e4e','technetsac','producto','d0bfc315-a9ff-40fa-b879-03c7fcc9576e.webp','THINKVISION T22V-10_3.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/d0bfc315-a9ff-40fa-b879-03c7fcc9576e.webp'),
	 ('f94871af-ae7e-483b-80a1-dd4cd37c2a86','technetsac','producto','9883b1ba-cdd2-4771-85f0-a41c8586753e.webp','p224_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/9883b1ba-cdd2-4771-85f0-a41c8586753e.webp'),
	 ('fa157ca8-988c-44cb-a223-24e7af4b83af','technetsac','producto','85c1283c-091f-42ce-9fc3-15b476899a07.webp','V190_4.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/85c1283c-091f-42ce-9fc3-15b476899a07.webp'),
	 ('fd013089-5d6e-4060-9ab7-2888bf4a63a2','technetsac','producto','61c1737e-ccd2-46cb-a3f9-bacf63ff4705.webp','P224_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/61c1737e-ccd2-46cb-a3f9-bacf63ff4705.webp'),
	 ('fdab826b-6b94-4e58-92f6-d61721f9fa5b','technetsac','producto','828c4f75-1d40-42fb-be22-4d5d786c07da.webp','M90Q_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/828c4f75-1d40-42fb-be22-4d5d786c07da.webp'),
	 ('ffd6fa43-6029-4c4e-b81f-ec739c123a76','technetsac','producto','580b6886-a0ea-4c3f-aa41-887b36a7b57c.webp','LATITUDE 5420_1.webp','imagen_producto','https://technetsac.s3.us-east-2.amazonaws.com/580b6886-a0ea-4c3f-aa41-887b36a7b57c.webp');


INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('4fe82275-f73c-4b7e-b7db-5bb0a6bc0e6a','83e4bcf2-da98-4216-97b8-5468d985edad', now(), now()),
	 ('4fe82275-f73c-4b7e-b7db-5bb0a6bc0e6a','5b047f27-bef8-470c-bdd0-1d059e0d8f83', now(), now()),
	 ('ccbcd7eb-24c0-470e-8d07-b5f24d020190','ae50782e-026a-45d6-879c-3376d7e92d9d', now(), now()),
	 ('fc29a826-530e-4c85-96df-807a5b797093','4f7ab1aa-ea3f-4b39-bf5e-24d55894476a', now(), now()),
	 ('fc29a826-530e-4c85-96df-807a5b797093','97587968-4d2b-499e-9eac-5b5337daf2f5', now(), now()),
	 ('fc29a826-530e-4c85-96df-807a5b797093','bd9b3a1b-06ec-421c-889f-70a73e6fdd6c', now(), now()),
	 ('87aae12b-e254-4512-a6f4-7e3cfbcd53e2','6d1f7abb-8a2d-485f-aa77-457fe16b05ff', now(), now()),
	 ('87aae12b-e254-4512-a6f4-7e3cfbcd53e2','50843289-8d23-4d52-b175-fec138384615', now(), now()),
	 ('87aae12b-e254-4512-a6f4-7e3cfbcd53e2','f6ebb224-5700-4f88-aaea-6dab77d99f84', now(), now()),
	 ('90db1d6b-18fb-45df-9975-660286860f94','4e23aea2-30fc-4a94-9664-8f524c93c2d0', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('90db1d6b-18fb-45df-9975-660286860f94','6edf28b8-691e-4027-b578-2770b0b8cdc9', now(), now()),
	 ('cbd1b299-46bf-45d4-87b3-ef05505ad565','c724f9cd-f0db-406d-9424-ca87b1cbb7e0', now(), now()),
	 ('cbd1b299-46bf-45d4-87b3-ef05505ad565','2cf3cb29-4480-4402-bd74-21ff737f0a38', now(), now()),
	 ('5a959328-4c44-4fe6-8cfb-d1d52aead09e','23aefee0-2455-444b-b7ee-05faaf1cf185', now(), now()),
	 ('5a959328-4c44-4fe6-8cfb-d1d52aead09e','4a755242-8d5f-426b-8ac9-ef4dcefaf09f', now(), now()),
	 ('5a959328-4c44-4fe6-8cfb-d1d52aead09e','70376d6d-2ad0-4f3c-b808-195ac4e43a88', now(), now()),
	 ('f045ab2e-726d-4813-b10e-85f274c24ead','26480cbb-7a24-4fb6-82e2-7b44f9cb088a', now(), now()),
	 ('f045ab2e-726d-4813-b10e-85f274c24ead','6af4a9a6-6999-49e0-8914-a6063ee385d3', now(), now()),
	 ('f045ab2e-726d-4813-b10e-85f274c24ead','a6df403c-e8b9-40aa-94d7-029c7d033a3a', now(), now()),
	 ('9793b748-5955-4c68-83fd-cf343f1c90fc','c2c8313f-745b-4b25-8aa7-e731d1c067f8', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('9793b748-5955-4c68-83fd-cf343f1c90fc','f52ed9c1-0a05-496c-b392-d49cd0e9b0f5', now(), now()),
	 ('9793b748-5955-4c68-83fd-cf343f1c90fc','6675e5a0-8a05-40f4-a28c-c78141149975', now(), now()),
	 ('9793b748-5955-4c68-83fd-cf343f1c90fc','dde6d969-9dd9-4ea6-86b6-49ae4333c0d4', now(), now()),
	 ('dc51268f-687a-430f-8c6c-faacfda3eb37','822d7836-a0a2-4fd9-815e-2079b6512866', now(), now()),
	 ('502f4a19-d46d-4a32-9957-b7f3aa36888e','d96f3372-3175-457d-a91d-cdf9c1415339', now(), now()),
	 ('347e07de-19df-4b57-b269-4cb98878c5d8','ed63c90e-77f8-440f-a9fb-9ba5138675bb', now(), now()),
	 ('347e07de-19df-4b57-b269-4cb98878c5d8','d3fb72e9-9a37-4885-a559-a68e861dca47', now(), now()),
	 ('8c3108a3-bdaa-4f64-a519-0d4a9b141472','4521ca0b-207e-4f0b-ba3a-2d2b2723d06e', now(), now()),
	 ('8c3108a3-bdaa-4f64-a519-0d4a9b141472','e159a6e8-f20f-4430-935a-b49dd01bba6d', now(), now()),
	 ('8c3108a3-bdaa-4f64-a519-0d4a9b141472','bcb023b2-bafb-4f8a-b237-eb8937412979', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('16cbac68-854c-48b5-8838-6c12f4bddaae','e864089f-ee54-4aa2-93a6-e121c826d694', now(), now()),
	 ('16cbac68-854c-48b5-8838-6c12f4bddaae','eda7dc0e-c90b-4c2a-aed9-8e74071e3a0d', now(), now()),
	 ('16cbac68-854c-48b5-8838-6c12f4bddaae','e3461269-e8a4-454e-a6c0-6620d3ffc66b', now(), now()),
	 ('0bad56e6-a28c-4512-ae91-64dc83b300e9','63b36f9b-9e44-4f7e-9277-98c233eb0aff', now(), now()),
	 ('f337a308-d91e-4792-9d43-9153948d91ec','ebaeb3c1-007a-4ba0-8a0b-3300679ccce8', now(), now()),
	 ('f337a308-d91e-4792-9d43-9153948d91ec','11e71353-e017-4fde-95b6-0e05418da633', now(), now()),
	 ('f337a308-d91e-4792-9d43-9153948d91ec','fa157ca8-988c-44cb-a223-24e7af4b83af', now(), now()),
	 ('ff0b6cc5-f0b7-492d-8bd8-702cbf01f90c','d00f4537-5095-40f9-9af5-953f47e0f6b7', now(), now()),
	 ('2410b947-8d7b-42ab-8847-e6e452c68723','d3bd1f33-926e-4ede-8486-82fc62fb8684', now(), now()),
	 ('2410b947-8d7b-42ab-8847-e6e452c68723','7d6f04fe-a353-454a-af5d-74a1dba5ed10', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('2410b947-8d7b-42ab-8847-e6e452c68723','f94871af-ae7e-483b-80a1-dd4cd37c2a86', now(), now()),
	 ('2410b947-8d7b-42ab-8847-e6e452c68723','db5d5181-e76e-40bc-98bb-986bfdf3f7ad', now(), now()),
	 ('53295b92-a16d-48f6-aa19-923986812d86','eea05e31-3386-4b6b-a9de-5dca1c4a8c83', now(), now()),
	 ('53295b92-a16d-48f6-aa19-923986812d86','b64530d3-a49b-4327-8e26-3ef9e10b61f9', now(), now()),
	 ('53295b92-a16d-48f6-aa19-923986812d86','80258b3c-8d9d-4887-9f2d-76414a454e1f', now(), now()),
	 ('44ec1915-8921-4328-814e-1bef30770619','2d8871c9-5976-4de0-97c3-02d3d9270441', now(), now()),
	 ('44ec1915-8921-4328-814e-1bef30770619','52f0f254-5ed8-478a-af20-c79736ebe5e8', now(), now()),
	 ('44ec1915-8921-4328-814e-1bef30770619','94f20a34-9e24-43f3-862b-79869d1c2f8d', now(), now()),
	 ('8ab8ffcd-c68d-4a9b-855a-06306b18be29','1cf09f82-ec20-4e28-982b-e2e35e83d185', now(), now()),
	 ('8ab8ffcd-c68d-4a9b-855a-06306b18be29','b7541052-3755-4d70-9e14-14343f54c139', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('8ab8ffcd-c68d-4a9b-855a-06306b18be29','3aac132a-4449-4f78-90f2-c362120ac1e6', now(), now()),
	 ('8ab8ffcd-c68d-4a9b-855a-06306b18be29','73dadf51-6abf-4438-be6c-06b935754b23', now(), now()),
	 ('b3759278-2a8c-4f1f-a1a2-f659fda45d5b','61fdb8d5-d29f-4463-8b1e-8088bfef0a1f', now(), now()),
	 ('b3759278-2a8c-4f1f-a1a2-f659fda45d5b','b24b7556-b727-4bce-8836-753e722ae89e', now(), now()),
	 ('86a3e622-7a23-423d-bc77-df5b64110a83','6285784c-9b83-46ed-a6ee-5bcf66c0a64d', now(), now()),
	 ('86a3e622-7a23-423d-bc77-df5b64110a83','e0cffa5b-6f01-44ee-9fe8-f89d5e4b8c8e', now(), now()),
	 ('86a3e622-7a23-423d-bc77-df5b64110a83','799d58b9-8fac-41d6-82c3-106fb43c831a', now(), now()),
	 ('998e2dfe-676d-4de4-8cf0-7aee3e1476e8','65924f63-1f59-4a87-b3fe-f06a80fcadf5', now(), now()),
	 ('998e2dfe-676d-4de4-8cf0-7aee3e1476e8','ce4f9ccd-b558-4221-9568-e87a7c0aff3b', now(), now()),
	 ('292f8f0d-b371-4956-8e46-4ea33d1bf625','f90f41f5-e52e-4aa9-bb42-acba64300e4e', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('292f8f0d-b371-4956-8e46-4ea33d1bf625','08b75b44-aeca-4f78-9f77-6b28ced6e01b', now(), now()),
	 ('292f8f0d-b371-4956-8e46-4ea33d1bf625','6218df98-f614-4809-bc9c-1921b45c3540', now(), now()),
	 ('292f8f0d-b371-4956-8e46-4ea33d1bf625','dce49319-fac0-4f15-a799-5fab418cf30f', now(), now()),
	 ('c1fdfcde-f557-4c22-addf-73f93f7204ea','3664aa25-300d-48ff-967b-ec085cd1f564', now(), now()),
	 ('c1fdfcde-f557-4c22-addf-73f93f7204ea','91251646-e35a-471c-ae01-4fd332fdc666', now(), now()),
	 ('c1fdfcde-f557-4c22-addf-73f93f7204ea','c579f09b-824a-4d07-83aa-e9848c4d6de4', now(), now()),
	 ('f601d64c-260a-4bcb-9153-adbb041f15fb','e30fb698-3b48-4070-ba10-eca50a665f07', now(), now()),
	 ('f601d64c-260a-4bcb-9153-adbb041f15fb','5ce0b849-8628-4e89-95b8-b085c1333812', now(), now()),
	 ('f601d64c-260a-4bcb-9153-adbb041f15fb','67fc748b-3736-495d-a1b5-049aa5359ca8', now(), now()),
	 ('f601d64c-260a-4bcb-9153-adbb041f15fb','96a06ff1-f125-4e1a-a45a-20f82f5a180b', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('3c4c3115-ef02-48f4-9511-9de22e3f21cf','ced11e75-86f9-452c-9ce1-f3efc190d73e', now(), now()),
	 ('3c4c3115-ef02-48f4-9511-9de22e3f21cf','86cd1fd9-5992-46fe-834a-e4982c1d3468', now(), now()),
	 ('3c4c3115-ef02-48f4-9511-9de22e3f21cf','7479584a-6792-4228-97e0-c75d0e0b5eb3', now(), now()),
	 ('3c4c3115-ef02-48f4-9511-9de22e3f21cf','bdab6bd9-f69a-4da0-b477-9f962577db4c', now(), now()),
	 ('d8ce56ae-292b-4695-ac9b-e7f50f97f882','26d3f879-2dc5-4af0-ba24-62114693595b', now(), now()),
	 ('d8ce56ae-292b-4695-ac9b-e7f50f97f882','0a25a0d1-8c17-4d2c-9276-bccf08f8cc96', now(), now()),
	 ('6fa9b09c-9161-4fc8-89d2-f264b2854c2b','676ec725-adf3-452a-90c9-7ef04ca7770c', now(), now()),
	 ('6fa9b09c-9161-4fc8-89d2-f264b2854c2b','9f8585c7-0c0f-4ba5-9eb7-6177a8f6ed11', now(), now()),
	 ('6fa9b09c-9161-4fc8-89d2-f264b2854c2b','8e92ca46-4d96-41a1-b798-901853c453a7', now(), now()),
	 ('6fa9b09c-9161-4fc8-89d2-f264b2854c2b','936dc2e6-c880-4c00-add0-00ad5eefa2c1', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('ffef661c-b7aa-4641-b08b-63fa1b2bd136','6545be87-c51b-48ce-82cd-52552666facd', now(), now()),
	 ('ffef661c-b7aa-4641-b08b-63fa1b2bd136','9b246d21-d1ba-4e8d-bf65-891d2a368ee8', now(), now()),
	 ('ffef661c-b7aa-4641-b08b-63fa1b2bd136','281c12d7-6c1a-45b1-a9b9-12be23f1a110', now(), now()),
	 ('ffef661c-b7aa-4641-b08b-63fa1b2bd136','b0498fd3-6fdc-4ac5-a5fc-3116fca43718', now(), now()),
	 ('ffef661c-b7aa-4641-b08b-63fa1b2bd136','a07dc7e6-ec78-4bcf-9290-ca74a08d0fc8', now(), now()),
	 ('c1b2b9cc-0e5e-4fbb-95cb-04385bcd4bfa','f53581b2-eaed-411a-8bde-ec14890e73e2', now(), now()),
	 ('c1b2b9cc-0e5e-4fbb-95cb-04385bcd4bfa','d7240c90-f83a-4986-8cc3-25a3dac46cbd', now(), now()),
	 ('c1b2b9cc-0e5e-4fbb-95cb-04385bcd4bfa','3066d1fb-c752-4f35-9c45-4f29e23f77ee', now(), now()),
	 ('22bf01e7-e9c0-48a4-bc60-37f88c2f2894','d1919861-ae7e-4270-b7f5-656f91e060d1', now(), now()),
	 ('22bf01e7-e9c0-48a4-bc60-37f88c2f2894','9a7fb0fb-4220-4a37-8db1-4366e6be7e04', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('22bf01e7-e9c0-48a4-bc60-37f88c2f2894','147249ba-9b23-4b2d-93f6-0ee83acf2bb6', now(), now()),
	 ('22bf01e7-e9c0-48a4-bc60-37f88c2f2894','94731f27-0875-44ab-a792-8697730fda85', now(), now()),
	 ('c09b99ab-c20f-4d5d-bc59-1a8d55fffbdf','a867646a-8256-497f-a1ce-1630c8b17e20', now(), now()),
	 ('c09b99ab-c20f-4d5d-bc59-1a8d55fffbdf','820424f1-8a60-40e1-a37d-90e6902ed185', now(), now()),
	 ('36b6a831-16d1-4c5e-ad9a-79c0c3d08263','69df979e-170c-48c9-97b6-b2696901e66f', now(), now()),
	 ('22026bdc-3bd1-4106-a498-112fa60884bb','12f9a076-5856-4255-8a5a-917b106b39d5', now(), now()),
	 ('22026bdc-3bd1-4106-a498-112fa60884bb','23369fb9-3d5a-4131-83e6-fc496a4f2f86', now(), now()),
	 ('22026bdc-3bd1-4106-a498-112fa60884bb','c57a55bf-6b8a-42a3-b1c2-0c9c01c35be3', now(), now()),
	 ('09fd384f-4efa-4cc1-900b-2ba4d4831b5b','6907c663-e260-43c9-8f8a-4ab768126714', now(), now()),
	 ('09fd384f-4efa-4cc1-900b-2ba4d4831b5b','d4d00509-4219-4357-9dcc-450753aaf06a', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('09fd384f-4efa-4cc1-900b-2ba4d4831b5b','66fb7036-2199-4f40-af30-83b07f21c775', now(), now()),
	 ('09fd384f-4efa-4cc1-900b-2ba4d4831b5b','cd234e55-2ac3-4e1b-b2e6-a4a8fa6fe304', now(), now()),
	 ('a7c5b7d2-4f1a-48f7-95a8-19494bf183da','d5445b3a-2d7b-4382-a90c-c38c1ddc5d3c', now(), now()),
	 ('a7c5b7d2-4f1a-48f7-95a8-19494bf183da','7163a059-6599-415a-805d-d92b30c5704f', now(), now()),
	 ('ac7fef37-00f7-4e6a-8249-f21d17ed32ac','d688228d-68b0-4467-a3a3-5bcd619fe316', now(), now()),
	 ('ac7fef37-00f7-4e6a-8249-f21d17ed32ac','b7f7974a-bb78-4699-aa3f-3c18bcaff902', now(), now()),
	 ('1bd62814-c7f5-44e4-bd39-6c891d0d68ad','37615979-de45-4d68-9e20-16930cb383e8', now(), now()),
	 ('1bd62814-c7f5-44e4-bd39-6c891d0d68ad','6608b677-e328-4717-abb6-93ee3198a2ad', now(), now()),
	 ('125ee909-c608-42bc-8480-a5b3df51820c','37f0c52f-d2dc-4447-b148-ccbeb75f95a9', now(), now()),
	 ('125ee909-c608-42bc-8480-a5b3df51820c','de730be4-1053-42d2-8fac-fd1d72581846', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('1328c8b5-0478-41f1-b4fb-23884b802467','0ff8241e-c47c-47c7-bb8c-458deed18e43', now(), now()),
	 ('1328c8b5-0478-41f1-b4fb-23884b802467','586b1767-8b5a-4275-9059-286f3fb5fe03', now(), now()),
	 ('823d9e9e-5b35-427c-9cbb-0a41f555be25','a1997853-75de-432a-aabf-ba1543755ece', now(), now()),
	 ('823d9e9e-5b35-427c-9cbb-0a41f555be25','99aa1451-d8ed-46b0-a32a-0333377ec4f5', now(), now()),
	 ('2751b138-9432-4f6e-bdef-e698625cb3e8','cebfc69f-2c0e-4820-bba5-0c215ac5d957', now(), now()),
	 ('2751b138-9432-4f6e-bdef-e698625cb3e8','6bfd387e-3800-43cb-914d-d88a06383e32', now(), now()),
	 ('2751b138-9432-4f6e-bdef-e698625cb3e8','d2ce3a94-c96c-453c-8f65-dccaff35b4e2', now(), now()),
	 ('6fd13a66-a2c2-4916-bea9-c5101d25860a','6755b0a7-8a02-437d-a7a8-475ffe356a23', now(), now()),
	 ('6fd13a66-a2c2-4916-bea9-c5101d25860a','2ff5f2d9-cee7-430c-ae0f-038e8f06704e', now(), now()),
	 ('794fc08c-6eb2-4980-bcf4-e4f47810de14','2aaa7081-3dbe-4740-bb10-9b931ce2010e', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('794fc08c-6eb2-4980-bcf4-e4f47810de14','0b65f556-fba5-485b-9731-61447d58ad19', now(), now()),
	 ('794fc08c-6eb2-4980-bcf4-e4f47810de14','0e496896-814b-4853-a5b5-7e614c9c804f', now(), now()),
	 ('ddaf8e8f-712d-4665-84d7-e47ca428386c','15df99b0-88b7-4a8c-9a90-8ce82070cbe8', now(), now()),
	 ('ddaf8e8f-712d-4665-84d7-e47ca428386c','238bfc5d-d7a3-4573-9a84-6aa1bd27dfea', now(), now()),
	 ('e8762ced-9f66-4d89-a039-2b34d62f53c8','b9b0f154-8436-4382-8903-ccc721079e80', now(), now()),
	 ('e8762ced-9f66-4d89-a039-2b34d62f53c8','51fc8c82-f583-4990-a5b3-654e38b7caf1', now(), now()),
	 ('e8762ced-9f66-4d89-a039-2b34d62f53c8','334efa1a-8f86-4694-8472-a32c22c6561f', now(), now()),
	 ('fa8c1057-13f7-4890-9348-66a03df78266','a4cf7c14-cc5f-48de-a779-1b34f6ce3c4c', now(), now()),
	 ('fa8c1057-13f7-4890-9348-66a03df78266','da3de890-ab17-4c7c-93f3-8046338a2786', now(), now()),
	 ('fa8c1057-13f7-4890-9348-66a03df78266','d3c06339-e53b-404e-aeba-f99397e93dc2', now(), now());
INSERT INTO producto_archivo (ProductoId, ArchivoId, createdAt, updatedAt) VALUES
	 ('fb765e62-f073-4847-a6a3-a1a588d09d44','c9715460-5318-4128-b55f-2df854800c20', now(), now()),
	 ('ff72851a-9344-4688-8486-d64ad06c8f70','34fddd78-4222-4be5-baa1-9813ab4c3075', now(), now()),
	 ('ff72851a-9344-4688-8486-d64ad06c8f70','dd922d03-1627-4f9c-8555-def981f31d8e', now(), now());



update Producto set ArchivoPrincipalId = '04483544-6251-4d3e-bd92-821fd27ecd4d' where id = '998e2dfe-676d-4de4-8cf0-7aee3e1476e8';
update Producto set ArchivoPrincipalId = '0ab2965a-581d-4c6d-adc2-5657650b234e' where id = 'ccbcd7eb-24c0-470e-8d07-b5f24d020190';
update Producto set ArchivoPrincipalId = '11c193c2-7251-4240-b88c-2be2618c351f' where id = 'b3759278-2a8c-4f1f-a1a2-f659fda45d5b';
update Producto set ArchivoPrincipalId = '1452d9bb-a3e2-4e5e-916e-1ca31f1c970d' where id = '4fe82275-f73c-4b7e-b7db-5bb0a6bc0e6a';
update Producto set ArchivoPrincipalId = '16f848d9-2955-4425-b937-1c319fed3384' where id = '86a3e622-7a23-423d-bc77-df5b64110a83';
update Producto set ArchivoPrincipalId = '19ab7874-a740-428c-8a49-c0cb80a9a67c' where id = 'a7c5b7d2-4f1a-48f7-95a8-19494bf183da';
update Producto set ArchivoPrincipalId = '28a4e672-ceb4-4336-b004-180d035a1d9a' where id = '2751b138-9432-4f6e-bdef-e698625cb3e8';
update Producto set ArchivoPrincipalId = '29eceb41-a4fa-4f88-8fb9-b3e1f703b3d9' where id = '0bad56e6-a28c-4512-ae91-64dc83b300e9';
update Producto set ArchivoPrincipalId = '2ab5e9a2-900c-4ff1-b206-3bd78f9c575b' where id = '3c4c3115-ef02-48f4-9511-9de22e3f21cf';
update Producto set ArchivoPrincipalId = '2f517b6d-8c6b-4fa3-93a0-b3c25eb6ac2a' where id = '36b6a831-16d1-4c5e-ad9a-79c0c3d08263';
update Producto set ArchivoPrincipalId = '4021e25a-e89a-48a4-acde-3fd84a510a20' where id = '6fd13a66-a2c2-4916-bea9-c5101d25860a';
update Producto set ArchivoPrincipalId = '48bc8267-47d7-4ea8-932f-98167d558977' where id = '9793b748-5955-4c68-83fd-cf343f1c90fc';
update Producto set ArchivoPrincipalId = '4ecbc98f-6dfd-40a1-9e86-534c4e29e908' where id = '87aae12b-e254-4512-a6f4-7e3cfbcd53e2';
update Producto set ArchivoPrincipalId = '52e59b59-af5c-47ad-b645-cc18f5320156' where id = 'fa8c1057-13f7-4890-9348-66a03df78266';
update Producto set ArchivoPrincipalId = '541a8b39-67a9-46b2-8ce1-786461de3025' where id = '22026bdc-3bd1-4106-a498-112fa60884bb';
update Producto set ArchivoPrincipalId = '54869084-817b-49db-a6b5-123987c63675' where id = 'ff0b6cc5-f0b7-492d-8bd8-702cbf01f90c';
update Producto set ArchivoPrincipalId = '54de8dec-1a17-4087-8224-19ebe07dea62' where id = '22bf01e7-e9c0-48a4-bc60-37f88c2f2894';
update Producto set ArchivoPrincipalId = '581356c2-c1ad-4de3-82fd-8600733ce255' where id = '794fc08c-6eb2-4980-bcf4-e4f47810de14';
update Producto set ArchivoPrincipalId = '5b107169-a1e7-465c-86d4-0f73e59f69a7' where id = '16cbac68-854c-48b5-8838-6c12f4bddaae';
update Producto set ArchivoPrincipalId = '61923bcf-80cb-40b9-9ebb-dda4427b4132' where id = 'f045ab2e-726d-4813-b10e-85f274c24ead';
update Producto set ArchivoPrincipalId = '61ed9fff-2a1f-4526-bb8d-10a25de56a7b' where id = 'cbd1b299-46bf-45d4-87b3-ef05505ad565';
update Producto set ArchivoPrincipalId = '66054895-bae0-4022-b123-d95dd72d1de7' where id = '502f4a19-d46d-4a32-9957-b7f3aa36888e';
update Producto set ArchivoPrincipalId = '688d16b0-a4ab-4a99-812a-befd8d8f65a7' where id = 'c1b2b9cc-0e5e-4fbb-95cb-04385bcd4bfa';
update Producto set ArchivoPrincipalId = '6e81942f-5e18-4172-aa16-782ff312f22e' where id = 'f337a308-d91e-4792-9d43-9153948d91ec';
update Producto set ArchivoPrincipalId = '6f7b9f6d-70a3-4f60-bca2-1fc83f880eeb' where id = 'fb765e62-f073-4847-a6a3-a1a588d09d44';
update Producto set ArchivoPrincipalId = '738c5c1d-99f2-4921-b16a-1880b4190f78' where id = '8c3108a3-bdaa-4f64-a519-0d4a9b141472';
update Producto set ArchivoPrincipalId = '76aa781f-d435-496f-b918-b113645564b0' where id = 'd8ce56ae-292b-4695-ac9b-e7f50f97f882';
update Producto set ArchivoPrincipalId = '7aa61479-1f6b-40d4-9d3f-d26256bbc427' where id = '53295b92-a16d-48f6-aa19-923986812d86';
update Producto set ArchivoPrincipalId = '8825df3a-ce9e-4c4b-8791-1375803b5aba' where id = '1328c8b5-0478-41f1-b4fb-23884b802467';
update Producto set ArchivoPrincipalId = '8b0eaa19-113d-4772-90c8-b8edfd0428e6' where id = '347e07de-19df-4b57-b269-4cb98878c5d8';
update Producto set ArchivoPrincipalId = '8c1cdf05-0eaf-44f2-badf-aac898a28be7' where id = 'c09b99ab-c20f-4d5d-bc59-1a8d55fffbdf';
update Producto set ArchivoPrincipalId = '8c2c6d57-5223-4abc-8f74-fa3a25d8c1e2' where id = 'f601d64c-260a-4bcb-9153-adbb041f15fb';
update Producto set ArchivoPrincipalId = '9ff564ed-95a6-4a17-80f4-2da4f66d81fd' where id = '44ec1915-8921-4328-814e-1bef30770619';
update Producto set ArchivoPrincipalId = 'a8e145d7-c129-4839-99d2-4ce246f2dd59' where id = '5a959328-4c44-4fe6-8cfb-d1d52aead09e';
update Producto set ArchivoPrincipalId = 'aa36eb34-764d-4aa5-a17b-d455ca09ad13' where id = 'c1fdfcde-f557-4c22-addf-73f93f7204ea';
update Producto set ArchivoPrincipalId = 'ae9f9076-369a-4755-9c65-be0e73ea68e8' where id = '1bd62814-c7f5-44e4-bd39-6c891d0d68ad';
update Producto set ArchivoPrincipalId = 'b07be0d1-655a-4070-a7eb-3f70676661e4' where id = 'ac7fef37-00f7-4e6a-8249-f21d17ed32ac';
update Producto set ArchivoPrincipalId = 'b912be0b-5b15-42c7-bc10-1aed772e2de0' where id = '292f8f0d-b371-4956-8e46-4ea33d1bf625';
update Producto set ArchivoPrincipalId = 'b9cd0a3f-3027-4612-b19f-294e0717267a' where id = 'fc29a826-530e-4c85-96df-807a5b797093';
update Producto set ArchivoPrincipalId = 'c4a230f4-6576-4c14-8c84-ae2d0e69b8f0' where id = '90db1d6b-18fb-45df-9975-660286860f94';
update Producto set ArchivoPrincipalId = 'c56e0573-fa15-4120-8fcb-13c9611e1798' where id = '6fa9b09c-9161-4fc8-89d2-f264b2854c2b';
update Producto set ArchivoPrincipalId = 'c6ef9ad7-92be-48d3-9afc-63cfd2d9ebad' where id = 'ff72851a-9344-4688-8486-d64ad06c8f70';
update Producto set ArchivoPrincipalId = 'c7d1a8c9-58c7-4973-b6f1-87df13b17d03' where id = '8ab8ffcd-c68d-4a9b-855a-06306b18be29';
update Producto set ArchivoPrincipalId = 'cc023d83-02e7-444c-82f7-4c34e2ca141b' where id = 'e8762ced-9f66-4d89-a039-2b34d62f53c8';
update Producto set ArchivoPrincipalId = 'd1efd3fb-2afa-432a-bce4-e951ed6e5af7' where id = 'ddaf8e8f-712d-4665-84d7-e47ca428386c';
update Producto set ArchivoPrincipalId = 'df073a3b-ba37-4992-889d-2338e90d0f98' where id = '823d9e9e-5b35-427c-9cbb-0a41f555be25';
update Producto set ArchivoPrincipalId = 'e3bd6b83-20b8-4153-8abd-17a0aa9ca7ca' where id = '09fd384f-4efa-4cc1-900b-2ba4d4831b5b';
update Producto set ArchivoPrincipalId = 'e60289fb-62a8-4cc7-92b3-45827110784b' where id = '125ee909-c608-42bc-8480-a5b3df51820c';
update Producto set ArchivoPrincipalId = 'fd013089-5d6e-4060-9ab7-2888bf4a63a2' where id = '2410b947-8d7b-42ab-8847-e6e452c68723';
update Producto set ArchivoPrincipalId = 'fdab826b-6b94-4e58-92f6-d61721f9fa5b' where id = 'dc51268f-687a-430f-8c6c-faacfda3eb37';
update Producto set ArchivoPrincipalId = 'ffd6fa43-6029-4c4e-b81f-ec739c123a76' where id = 'ffef661c-b7aa-4641-b08b-63fa1b2bd136';


