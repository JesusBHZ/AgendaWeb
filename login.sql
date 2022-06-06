create table usuarios(
  id_usuario integer PRIMARY KEY AUTOINCREMENT,
  email varchar(75),
  password varchar(32),
  nombre varchar(100),
  primer_apellido varchar(100),
  segundo_apellido varchar(100),
  rol varchar(50) check(rol IN ('usuario','administrador')),
  status varchar(10) check(status IN ('activo','inactivo')),
  times timestamp DEFAULT (datetime('now', 'localtime'))
);

create unique index usuarios_email ON usuarios(email);
insert into usuarios(id_usuario,email,password,nombre,primer_apellido,segundo_apellido,rol,status) values(1,'email@gmail.com','e178b92b2289980c649103924b4f1cf7
','Jesus','Bautista','Hernandez','administrador','activo'),
(2,'email2@gmail.com','6ef5adb9124d953831b4d09708c93bbd','Juan Manuel','Bautista','Hernandez','usuario','activo');

select * from usuarios;

select count(id_usuario) "No.Usuario",id_usuario "UID",rol "Rol" from usuarios where email = 'X' and password = 'X' and status ="activo"; 