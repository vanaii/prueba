-- 📦 PRODUCTOS (MEZCLADOS entre cartas y juegos)
INSERT INTO producto (id_producto, url_producto, stock, categoria, nombre_producto, venta_producto, id_carta, id_juego) VALUES
(101, 'https://img.cards/pikachu-vmax', 5, 'Carta', 'Pikachu VMAX', 12, 201, NULL),
(102, 'https://img.board/risk', 7, 'Juego de Mesa', 'Risk', 22, NULL, 301),
(103, 'https://img.cards/mewtwo-shadow', 6, 'Carta', 'Mewtwo Sombra', 19, 202, NULL),
(104, 'https://img.board/magic-maze', 6, 'Juego de Mesa', 'Magic Maze', 18, NULL, 302),
(105, 'https://img.cards/black-lotus', 2, 'Carta', 'Black Lotus', 40, 203, NULL),
(106, 'https://img.board/zombicide', 5, 'Juego de Mesa', 'Zombicide', 21, NULL, 303),
(107, 'https://img.cards/sailor-moon', 8, 'Carta', 'Sailor Moon Rare', 8, 204, NULL),
(108, 'https://img.board/monopoly-mario', 8, 'Juego de Mesa', 'Monopoly Mario Kart', 28, NULL, 304),
(109, 'https://img.cards/darth-vader', 5, 'Carta', 'Darth Vader Especial', 12, 205, NULL),
(110, 'https://img.board/trivial-pursuit', 9, 'Juego de Mesa', 'Trivial Pursuit Geek', 26, NULL, 305);

-- 🃏 CARTAS
INSERT INTO carta (id_carta, id_producto, rareza, año, estado, formato, id_carro) VALUES
(201, 101, 'Ultra Rara', 1999, 'Nuevo', 'Holográfico', 401),
(202, 103, 'Legendaria', 1996, 'Excelente', 'Foil', 402),
(203, 105, 'Exclusiva', 2010, 'Perfecto', 'Full Art', 403),
(204, 107, 'Promocional', 2018, 'Excelente', 'Stamped', 404),
(205, 109, 'Oscura', 2012, 'Bueno', '3D', 405);

-- 🎲 JUEGOS DE MESA
INSERT INTO juego_de_mesa (id_juego, id_producto, tipo_juego) VALUES
(301, 102, 'Tablero'),
(302, 104, 'Guerra'),
(303, 106, 'Rol'),
(304, 108, 'Cooperativo'),
(305, 110, 'Familia');

-- TIENDA
INSERT INTO tienda (id_tienda, nombre_tienda, ubicacion_tienda, nombre_jefe) VALUES
(1001, 'Juegos Galácticos', 'Nueva York', 'Elon Musk'),
(1002, 'Cartas Legendarias', 'Tokio', 'Hayao Miyazaki'),
(1003, 'La Mesa Mística', 'Berlín', 'Emma Watson'),
(1004, 'Freaky Store', 'Santiago', 'Bad Bunny'),
(1005, 'Geek Central', 'Los Ángeles', 'Robert Downey Jr.');

-- LISTA DE DESEOS
INSERT INTO lista_deseos (id_lista, fecha_carrito, nombre_lista) VALUES
(2001, '2025-01-01', 'Mi Colección Soñada'),
(2002, '2025-02-14', 'Amor a las Cartas'),
(2003, '2025-03-20', 'Top Juegos 2025'),
(2004, '2025-04-10', 'Viaje Geek'),
(2005, '2025-05-05', 'Lo Quiero Ya');

-- USUARIOS
INSERT INTO usuario (correo, rol, nombre_usuario, contraseña, direccion_cliente, id_tienda, id_lista) VALUES
('admin@invenpo.com', 'Administrador', 'Tony Stark', 'ironman123', 'Malibu, CA', 1001, 2001),
('jefe1@invenpo.com', 'Jefe', 'Bruce Wayne', 'batcave456', 'Gotham City', 1002, 2002),
('cliente1@invenpo.com', 'Cliente', 'Peter Parker', 'spidey789', 'Queens, NY', 1003, 2003),
('cliente2@invenpo.com', 'Cliente', 'Leia Organa', 'alderaan007', 'Corellia', 1004, 2004),
('jefe2@invenpo.com', 'Jefe', 'Gandalf', 'mellon999', 'Minas Tirith', 1005, 2005);

-- PERMISOS
INSERT INTO permiso (id_permiso, correo, permiso_app, permiso_tienda) VALUES
(1, 'admin@invenpo.com', 'CRUD_TOTAL', 'ADMIN_TODO'),
(2, 'jefe1@invenpo.com', 'CRUD_PRODUCTO', 'GESTION_LOCAL'),
(3, 'jefe2@invenpo.com', 'CRUD_PRODUCTO', 'GESTION_LOCAL'),
(4, 'cliente1@invenpo.com', 'LECTURA', 'LECTURA'),
(5, 'cliente2@invenpo.com', 'LECTURA', 'LECTURA');

-- CARRO DE COMPRAS
INSERT INTO carro_de_compras (id_carro, monto_total, cantidad, correo) VALUES
(401, 24, 2, 'cliente1@invenpo.com'),
(402, 35, 3, 'cliente2@invenpo.com'),
(403, 15, 1, 'cliente1@invenpo.com'),
(404, 60, 5, 'cliente2@invenpo.com'),
(405, 10, 1, 'cliente1@invenpo.com');

-- BOLETAS
INSERT INTO boleta (n_boleta, metodo_pago, fecha_c, id_carro) VALUES
(501, 'Tarjeta', '2025-01-03', 401),
(502, 'Transferencia', '2025-01-04', 402),
(503, 'Efectivo', '2025-01-06', 403),
(504, 'Tarjeta', '2025-01-09', 404),
(505, 'Criptomoneda', '2025-01-11', 405);

-- VALORACIÓN
INSERT INTO valoracion (id_usuario, fecha_v, comentario, puntuacion, correo, id_producto) VALUES
('cliente1@invenpo.com', '2025-01-05', 'Impresionante carta vintage.', 5, 'cliente1@invenpo.com', 101),
('cliente2@invenpo.com', '2025-01-07', 'Muy divertido para jugar en familia.', 4, 'cliente2@invenpo.com', 102);

-- RANKING PRODUCTO
INSERT INTO ranking (id_rank, posicion_rank, posicion_mundial, id_producto) VALUES
(601, 1, 15, 105),
(602, 2, 30, 102);

-- USUARIO X PRODUCTO
INSERT INTO usuario_x_producto (correo, id_producto) VALUES
('cliente1@invenpo.com', 101),
('cliente2@invenpo.com', 102);

-- LISTA DESEOS X PRODUCTO
INSERT INTO lista_deseos_x_producto (id_lista, id_producto) VALUES
(2001, 101),
(2002, 102);

-- PRODUCTO X CARRO DE COMPRAS
INSERT INTO producto_x_carro_de_compras (id_producto, id_carro) VALUES
(101, 401),
(102, 402);

-- LISTA DESEOS X CARRO DE COMPRAS
INSERT INTO lista_deseos_x_carro_de_compras (id_lista, id_carro) VALUES
(2001, 401),
(2002, 402);

-- LISTA DESEOS X RANKING CARTA
INSERT INTO lista_deseos_x_ranking_carta (id_lista, id_carta) VALUES
(2001, 201),
(2002, 202);

-- RANKING CARTA
INSERT INTO ranking_carta (id_rank_c, id_lista, id_carta, posicion_rank) VALUES
(701, 2001, 201, 1),
(702, 2002, 202, 2);
