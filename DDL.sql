CREATE SCHEMA IF NOT EXISTS negocio_schema;
#CREACIÓN DE TABLAS

#CREACIÓN TABLA VENTA 
CREATE TABLE `negocio_schema`.`venta`(
`venta_id` bigint NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`venta_id`));

#CREACIÓN BOLETA
CREATE TABLE `negocio_schema`.`boleta`(
`boleta_id` bigint NOT NULL AUTO_INCREMENT,
`precio` INT NOT NULL,
`fecha`  DATE NOT NULL,
`cantidad`  INT NOT NULL,
PRIMARY KEY (`boleta_id`));

#CREACIÓN TABLA PRODUCTO
CREATE TABLE `negocio_schema`.`producto`(
`producto_id` bigint NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(40) NOT NULL,
`tipo` VARCHAR(40) NOT NULL,
`fecha_vencimiento`  DATE NOT NULL,
`precio` INT NOT NULL,
`marca` VARCHAR(40) NOT NULL,
PRIMARY KEY (`producto_id`));

#CREACIÓN TABLA PROVEEDOR_PRODUCTO
CREATE TABLE `negocio_schema`.`proveedor_producto`(
`proveedor_producto_id` bigint NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`proveedor_producto_id`));

#CREACIÓN TABLA PROVEEDOR
CREATE TABLE `negocio_schema`.`proveedor`(
`proveedor_id` bigint NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(40) NOT NULL,
`telefono` INT NOT NULL,
`email` VARCHAR(40) NOT NULL,
`rut` VARCHAR(40) NOT NULL,
PRIMARY KEY (`proveedor_id`));

#CREACIÓN FK EN LAS TABLAS CORRESPONDIENTES

#CREACION FK EN TABLA BOLETA
#VENTA FK
ALTER TABLE negocio_schema.boleta ADD venta_id bigint NOT NULL;
ALTER TABLE negocio_schema.boleta ADD CONSTRAINT boletaVenta FOREIGN KEY (venta_id) REFERENCES negocio_schema.venta(venta_id);
#           (tabla que contiene la FK)               (nombre relación)            (nombre de la FK)          (hace referencia a la tabla de la que se desprende la FK y a su id)

#PRODUCTO FK
ALTER TABLE negocio_schema.boleta ADD producto_id bigint NOT NULL;
ALTER TABLE negocio_schema.boleta ADD CONSTRAINT boletaProducto FOREIGN KEY (producto_id) REFERENCES negocio_schema.producto(producto_id);

#CREACION FK EN TABLA PROVEEDOR_PRODUCTO
#PRODUCTO FK
ALTER TABLE negocio_schema.proveedor_producto ADD producto_id bigint NOT NULL;
ALTER TABLE negocio_schema.proveedor_producto ADD CONSTRAINT proveedorProducto FOREIGN KEY (producto_id) REFERENCES negocio_schema.producto(producto_id);

#PROVEEDOR FK
ALTER TABLE negocio_schema.proveedor_producto ADD proveedor_id bigint NOT NULL;
ALTER TABLE negocio_schema.proveedor_producto ADD CONSTRAINT proveedor_proveedorProducto FOREIGN KEY (proveedor_id) REFERENCES negocio_schema.proveedor(proveedor_id);