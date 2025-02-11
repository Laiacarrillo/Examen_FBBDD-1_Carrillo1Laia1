CREATE DATABASE CampusBiker;
USE CampusBiker;

CREATE TABLE Compras (
id_compra int primary key auto_increment,
id_proveedor int,
fecha_compra date not null,
total int not null,
FOREIGN KEY (id_bicicleta) REFERENCES Bicicleta(id_bicicleta),
FOREIGN KEY (id_repuesto) REFERENCES Repuestos(id_repuesto)
);

CREATE TABLE Proveedores(
id_proveedores int primary key auto_increment,
nombre varchar(50) not null,
telefono int,
direccion varchar(100),
email varchar(100),
producto_proporcionado boolean not null
);

CREATE TABLE Clientes(
id_clientes int primary key auto_increment,
nombre varchar(50) not null,
email varchar(100),
telefono int,
direccion varchar(100),
fecha_registro date not null,
historial_compras boolean
);

CREATE TABLE Bicicletas(
id_bicicletas int primary key auto_increment,
modelo int not null,
marca string not null,
categoria boolean,
precio int not null,
cantidad_stock int not null,
FOREIGN KEY id_proveedor REFERENCES Proveedores(id_proovedor)
);

CREATE TABLE Inventarios(
    id_inventario int primary key auto_increment,
    id_bicicleta int,
    id_repuesto int,
    cantidad_actual int not null
);

CREATE TABLE Ventas(
    id_venta int primary key,
    id_cliente int not null,
    fecha_venta date not null,
    total int,
    FOREIGN KEY id_bicibleta REFERENCES Bicicleta(id_bicicleta)
    FOREIGN KEY id_repuesto REFERENCES Repuestos(id_repuesto)
);

CREATE TABLE Repuestos(
    id_repuesto int primary key,
    nombre varchar(50) not null,
    tipo boolean,
    precio int not null,
    cantidad_stock int,
    FOREIGN KEY Id_proveedor REFERENCES Proveedores(id_proveedor)
);