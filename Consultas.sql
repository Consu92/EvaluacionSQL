#GENERAR UNA CONSULTA QUE UNA A LO MENOS 2 TABLAS (JOIN)

SELECT * FROM negocio_schema.producto;

#CONSULTAR LA CANTIDAD Y NOMBRE DEL PRODUCTO QUE SE COMPRÓ

#INSERTAR DATOS EN TABLA BOLETA
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(180000, '2022-06-21', 60);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(220000, '2022-06-21', 20);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(200000, '2022-06-21', 40);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(50000, '2022-07-21', 100);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(84000, '2022-07-02', 120);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(150000, '2022-07-02', 150);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(120000, '2022-07-02', 80);
#INSERT INTO negocio_schema.boleta (precio, fecha, cantidad) VALUES(80000, '2022-07-02', 40);

#PARA REALIZAR EL JOIN QUE ME ARROJE LA CANTIDAD, PRECIO TOTAL QUE COMPRÉ AL PROVEEDOR, NECESITO:
#TABLA 1 = TABLA PRODUCTO  Y TABLA 2 = TABLA BOLETA
# DE LA TABLA 1 "PRODUCTO" EXTRAERIA LOS DATOS DEL NOMBRE DEL PRODUCTO
# DE LA TABLA 2 "BOLETA" EXTRAERIA LOS DATOS DE LA CANTIDAD y PRECIO (CORRESPONDE AL VALOR TOTAL DE LA COMPRA)
#LUEGO HARIA EL LEFT JOIN 
#Primero debo seleccionar las tablas
#select * from negocio_schema.producto;   //Estoy seleccionando la tabla producto
#select * from negocio_schema.boleta;     //Estoy seleccionado la tabla boleta

#Luego SELECT producto.nombre
#      FROM negocio_schema.producto 
#      LEFT JOIN negocio_schema.boleta on negocio_schema.producto.producto_id = negocio_schema.boleta.producto_id;

#DEBERIÁ MOSTRAR LAS COLUMNAS DE NOMBRE, CANTIDAD......
#PERO FALTA INGRESAR ATRIBUTOS EN VENTA alter
#POR OTRO LADO PARA SACAR LA GANANCIA ANUAL DEBERIA HABER INCERTADO OTRA TABLA DE CLIENTE QUIZÁS...