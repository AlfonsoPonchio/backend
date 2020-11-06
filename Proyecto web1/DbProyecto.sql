#Creamos base de datos
create database iniciosesion;

#Creamos tabla de Usuarios Docentes
CREATE TABLE `iniciosesion`.`usuariosdoc` (
  `Usuario` VARCHAR(10) NOT NULL,
  `Contraseña` VARCHAR(25) NULL)
ENGINE = InnoDB;


insert into iniciosesion.usuariosdoc (`Usuario`, `Contraseña`) values('rene','doc1234');
insert into iniciosesion.usuariosdoc (`Usuario`, `Contraseña`) values('german','doc4321');
insert into iniciosesion.usuariosdoc (`Usuario`, `Contraseña`) values('docente','docente');
insert into iniciosesion.usuariosdoc (`Usuario`, `Contraseña`) values('doc','doc');


SELECT * FROM iniciosesion.usuariosdoc WHERE usuariosdoc.Usuario='doc' && usuariosdoc.Contraseña='doc';