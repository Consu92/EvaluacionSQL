#POBLAR LA BASE CON AL MENOS 5 PRODUCTOS
#POBLAR LA BASE CON AL MENOS 4 TIPOS DE PRODUCTOS

#INSERTA DATOS CATEGORIA ACEITES -> TIPO DE ACEITE -> NOMBRE PRODUCTO ACEITE ->MARCA ACEITE
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca) VALUES('Aceite Vegetal Miraflores', 'Aceite vegetal', '2025-09-24', 3000, 'Miraflores');
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca)VALUES('Aceite Coco Manare', 'Aceite de coco', '2025-09-22', 11000,'Manare');
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca)VALUES('Aceite Oliva Extra virgen', 'Aceite de Oliva', '2025-09-23', 5000,'Banquete');

#INSERTA DATOS CATEGORIA GALLETAS -> TIPO DE GALLETA -> NOMBRE PRODUCTO GALLETA ->MARCA GALLETA
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca) VALUES('Galleta Nick Vainilla', 'Galleta Oblea', '2025-09-15', 500, 'Costa');
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca)VALUES('Galleta Choc Kiss', 'Galleta Chips', '2023-09-24', 700, 'Arcor');
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca)VALUES('Galletas Obsesión Menta', 'Galleta Oblea', '2023-09-24', 1000, 'Costa');

#INSERTA DATOS CATEGORIA ARROZ -> TIPO DE ARROZ -> NOMBRE PRODUCTO ARROZ ->MARCA ARROZ
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca) VALUES('Arroz grado 1 grano largo delgado', 'Arroz Blanco', '2027-09-20', 1500, 'Tucapel');
INSERT INTO negocio_schema.producto (nombre, tipo, fecha_vencimiento, precio, marca)VALUES('Arroz grado 1 integral', 'Arroz Integral', '2027-10-01', 2000, 'Miraflores');