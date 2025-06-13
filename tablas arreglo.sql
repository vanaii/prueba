create table if not exists tienda(
	id_tienda serial PRIMARY KEY,
	nombre_tienda varchar(50),
	ubicacion_tienda varchar(50),
	nombre_jefe varchar(50)
);

create table if not exists lista_deseos(
	id_lista serial PRIMARY KEY,
	fecha_carrito date,
	nombre_lista varchar(50)
);

create table if not exists usuario(
	correo varchar(50) PRIMARY KEY,
	rol varchar(50),
	nombre_usuario varchar(50),
	contraseña varchar(50),
	direccion_cliente varchar(50)
);

create table if not exists permiso(
	id_permiso serial PRIMARY KEY,
	permiso_app varchar(50),
	permiso_tienda varchar(50),
    correo varchar(50),
	FOREIGN KEY (correo) REFERENCES usuario(correo)
);

create table if not exists carro_de_compras(
	id_carro serial PRIMARY KEY,
	monto_total int,
	cantidad int,
	correo varchar(50),
	FOREIGN KEY (correo) REFERENCES usuario(correo)
);

create table if not exists boleta(
	n_boleta serial PRIMARY KEY,
	metodo_pago varchar(50),
	fecha_c date,
	id_carro serial,
	FOREIGN KEY (id_carro) REFERENCES carro_de_compras(id_carro)
);

create table if not exists carta(
	id_carta serial PRIMARY KEY,
	rareza varchar(50),
	año int,
	estado varchar(50),
	formato varchar(50),
	id_carro serial,
    id_producto serial,
	FOREIGN KEY (id_carro) REFERENCES carro_de_compras(id_carro),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table if not exists juego_de_mesa(
	id_juego serial PRIMARY KEY,
    tipo_juego varchar(50),
	id_producto serial,
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table if not exists producto(
	id_producto serial PRIMARY KEY,
	url_producto varchar(100),
	stock int,
	categoria varchar(50),
	nombre_producto varchar(50),
	venta_producto int
);

create table if not exists ranking(
	id_rank serial PRIMARY KEY,
	posicion_rank int,
	posicion_mundial int,
	id_producto serial,
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table if not exists valoracion(
	id_usuario varchar(50) PRIMARY KEY,
	fecha_v date,
	comentario varchar(300),
	puntuacion int,
	correo varchar(50),
    id_producto serial,
	FOREIGN KEY (correo) REFERENCES usuario(correo),
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table if not exists ranking_carta(
	id_rank_c serial PRIMARY KEY,
    posicion_rank int,
	id_lista serial,
    id_carta serial,
	FOREIGN KEY (id_lista) REFERENCES lista_deseos(id_lista),
	FOREIGN KEY (id_carta) REFERENCES carta(id_carta)
);

create table if not exists usuario_x_producto(
	correo varchar(50) PRIMARY KEY,
    id_producto serial,
	FOREIGN KEY (correo) REFERENCES usuario(correo),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table if not exists lista_deseos_x_producto(
	id_lista serial PRIMARY KEY,
    id_producto serial,
	FOREIGN KEY (id_lista) REFERENCES lista_deseos(id_lista),
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table if not exists producto_x_carro_de_compras(
	id_producto serial PRIMARY KEY,
    id_carro serial,
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
	FOREIGN KEY (id_carro) REFERENCES carro_de_compras(id_carro)
);

create table if not exists lista_deseos_x_carro_de_compras(
	id_lista serial PRIMARY KEY,
    id_carro serial,
	FOREIGN KEY (id_lista) REFERENCES lista_deseos(id_lista),
	FOREIGN KEY (id_carro) REFERENCES carro_de_compras(id_carro)
);

create table if not exists lista_deseos_x_ranking_carta(
	id_lista serial PRIMARY KEY,
	id_carta serial,
	FOREIGN KEY (id_lista) REFERENCES lista_deseos(id_lista),
	FOREIGN KEY (id_carta) REFERENCES carta(id_carta)
);