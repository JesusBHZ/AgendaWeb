/*Creamos la tabla usuarios*/
create table usuarios(
  uid integer PRIMARY KEY AUTOINCREMENT,
  email varchar(75) not null,
  password varchar(32),
  nombre varchar(100) not null,
  primer_apellido varchar(50),
  segundo_apellido varchar(50),
  rol varchar(50) check(rol IN ('usuario','administrador')) not null,
  status varchar(10) check(status IN ('activo','inactivo')) not null,
  times timestamp DEFAULT (datetime('now', 'localtime'))
);

/*Creamos el indice UNICO para la columna email*/
create unique index usuarios_email ON usuarios(email);

/*Insertamos dos registros (1 administrador y un usuario*/
insert into usuarios(uid,email,password,nombre,primer_apellido,segundo_apellido,rol,status) values(1,'email@gmail.com','e178b92b2289980c649103924b4f1cf7
','Jesus','Bautista','Hernandez','administrador','activo'),
(2,'email2@gmail.com','6ef5adb9124d953831b4d09708c93bbd','Juan Manuel','Bautista','Hernandez','usuario','activo');

/*Mostramos todos los registros*/
select * from usuarios;

select count(uid) "No.Usuarios" from usuarios where email = 'x' and password = 'y' and status ="activo"; 


insert into usuarios(uid,email,password,nombre,primer_apellido,segundo_apellido,rol,status) values(1,'email@gmail.com','e178b92b2289980c649103924b4f1cf7
','Jesus','Bautista','Hernandez','administrador','activo'),
(2,'email2@gmail.com','6ef5adb9124d953831b4d09708c93bbd','Juan Manuel','Bautista','Hernandez','usuario','activo');