CREATE TABLE IF NOT EXISTS mascotas(
id_mascota int primary key,
nombre varchar (15),
especie varchar (1),
sexo varchar (1),
ubicacion varchar (10),
estado varchar (1));

CREATE TABLE IF NOT EXISTS persona(
id_persona int primary key,
nombre_persona varchar (20),
ubicacion varchar (20)
);