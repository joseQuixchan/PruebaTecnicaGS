CREATE TABLE LibroDiario (
	id_libro int PRIMARY KEY NOT NULL,
	descrpcion nvarchar(20),
	fecha_ingreso datetime,
	fecha_inicio datetime,
	fecha_final datetime,
	estado tinyint
)

CREATE TABLE RegistroDiario (
	id_registro int PRIMARY KEY NOT NULL,
	id_libro int NOT NULL,
	id_cuenta int NOT NULL,
	id_factura int NOT NULL,
	asieto nvarchar(15),
	ap nvarchar(15),
	comentario nvarchar(50),
	debe decimal(5,3),
	haber decimal(5,3),
	fecha_ingreso datetime,
	subtotal decimal(5,2)

	CONSTRAINT fk_id_libro FOREIGN KEY (id_libro) REFERENCES LibroDiario (id_libro),
	CONSTRAINT fk_id_cuenta FOREIGN KEY (id_cuenta) REFERENCES Cuenta (id_cuenta),
	CONSTRAINT fk_idFactura FOREIGN KEY (id_factura) REFERENCES Factura (id_factura)
)

CREATE TABLE Cuenta (
	id_cuenta int PRIMARY KEY NOT NULL,
	numero_cuenta nvarchar(15),
	descripcion nvarchar(50),
	fecha_ingreso datetime
)


ALTER TABLE Factura (
	id_factura int PRIMARY KEY NOT NULL,
	fecha_ingreso datetime

)

CREATE TABLE DetalleFactura (
	id_detalle int PRIMARY KEY NOT NULL,
	id_factura int NOT NULL,
	fecha_ingreso datetime,
	descripcion nvarchar(100)

	CONSTRAINT fk_id_factura FOREIGN KEY (id_factura) REFERENCES Factura (id_factura)
)




SELECT A.fecha_ingreso, A.asieto, A.ap, B.numero_cuenta, B.descripcion, C.numero_factura, A.comentario, A.debe, A.haber, A.subtotal
from RegistroDiario A, Cuenta B, Factura C WHERE A.id_cuenta = B.id_cuenta and A.id_cuenta = C.id_factura


SELECT B., G.NOMBRE, F.
FROM TIPO_INFORMACION A INNER JOIN FORMATO_MENSAJE B ON A.COD_TIPO_INFORMACION = B.COD_TIPO_INFORMACION
INNER JOIN MENSAJE C ON C.COD_FORMATO = B.COD_FORMATO INNER JOIN PRODUCTO_PROYECTO D ON D.PROYECTO = C.PROYECTO
INNER JOIN PRODUCTO F ON F.PRODUCTO = D.PRODUCTO INNER JOIN PROYECTO G ON G.PROYECTO = D.PROYECTO


SELECT A.NOMBRE. C.PRODUCTO, C.DESCRIPCION
FROM PROYECTO A INNER JOIN PRODUCTO_PROYECTO B ON A.PROYECTO = B.PROYECTO
INNER JOIN PRODUCTO C ON B.PRODUCTO = C.PRODUCTO WHERE A.PROYECTO = 1 --PROYECTO PREMIA