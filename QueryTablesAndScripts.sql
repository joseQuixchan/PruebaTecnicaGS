CREATE TABLE LibroDiario (
	id_libro int PRIMARY KEY NOT NULL,
	descrpcion nvarchar(20),
	fecha_ingreso datetime,
	fecha_inicio datetime,
	fecha_final datetime,
	estado tinyint
)

CREATE TABLE RegistroDiario (
	id_registro int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	id_libro int NOT NULL,
	id_cuenta int NOT NULL,
	id_factura int NOT NULL,
	asieto nvarchar(15),
	ap nvarchar(15),
	comentario nvarchar(50),
	debe decimal(5,3),
	haber decimal(5,3),
	fecha_ingreso datetime Default GetDate(),
	subtotal decimal(5,2)

	CONSTRAINT fk_id_libro FOREIGN KEY (id_libro) REFERENCES LibroDiario (id_libro),
	CONSTRAINT fk_id_cuenta FOREIGN KEY (id_cuenta) REFERENCES Cuenta (id_cuenta),
	CONSTRAINT fk_idFactura FOREIGN KEY (id_factura) REFERENCES Factura (id_factura)
)

CREATE TABLE Cuenta (
	id_cuenta int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	numero_cuenta nvarchar(15),
	descripcion nvarchar(50),
	fecha_ingreso datetime Default GetDate()
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