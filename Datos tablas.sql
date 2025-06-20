INSERT INTO tienda (nombre_tienda, ubicacion_tienda, nombre_jefe) VALUES
('Wakanda Games', 'Santiago Centro', 'Chadwick Boseman'),
('Casa Gryffindor', 'Providencia', 'Emma Watson'),
('BatCave Store', 'Las Condes', 'Christian Bale'),
('Pokémon Plaza', 'Ñuñoa', 'Ash Ketchum'),
('Tatooine Traders', 'La Florida', 'Mark Hamill'),
('Stark Industries Toys', 'Viña del Mar', 'Robert Downey Jr.'),
('Mushroom Kingdom', 'Puente Alto', 'Charles Martinet'),
('Ghibli World', 'Maipú', 'Hayao Miyazaki'),
('Middle Earth Market', 'Concepción', 'Ian McKellen'),
('Zelda Zone', 'Valparaíso', 'Shigeru Miyamoto')
;

INSERT INTO lista_deseos (fecha_carrito, nombre_lista) VALUES
('2025-06-01', 'Para el torneo de Kanto'),
('2025-06-02', 'Cartas de Hogwarts'),
('2025-06-03', 'Mis favoritas de Marvel'),
('2025-06-04', 'Duelos de las galaxias'),
('2025-06-05', 'Anillos del poder'),
('2025-06-06', 'Regalos para el Consejo Jedi'),
('2025-06-07', 'Accesorios de los Vengadores'),
('2025-06-08', 'Colección de Miyazaki'),
('2025-06-09', 'Tablero de Westeros'),
('2025-06-10', 'Productos del Reino Champiñón')
;

INSERT INTO usuario (correo, rol, nombre_usuario, contraseña, direccion_cliente, id_tienda, id_lista) VALUES
('tony@stark.com', 'administrador', 'IronAdmin', 'jarvis123', 'Av. Stark 10880', 6, 3),
('bruce@wayne.com', 'jefe', 'BatJefe', 'batpass', 'Batcueva 1', 3, 2),
('harry@hogwarts.com', 'cliente', 'PotterFan', 'expelliarmus', 'Privet Drive 4', 2, 2),
('frodo@baggins.com', 'cliente', 'RingBearer', 'mordor1', 'La Comarca 7', 5, 5),
('luke@rebels.com', 'cliente', 'SkyWalker', 'force99', 'Tatooine Norte', 4, 4),
('ash@poke.com', 'jefe', 'AshJefe', 'pikachu!', 'Pallet Town 1', 4, 1),
('mario@nintendo.com', 'cliente', 'ItsaMe', 'mushroom', 'Castillo Peach', 7, 10),
('totoro@ghibli.com', 'cliente', 'ForestSpirit', 'nekobus', 'Bosque Encantado', 8, 8),
('arya@stark.com', 'cliente', 'NoOne', 'valarmorghulis', 'Winterfell 9', 9, 9),
('zelda@hyrule.com', 'cliente', 'PrincessZ', 'triforce', 'Castillo Hyrule', 10, 10)
;

INSERT INTO permiso (id_permiso, correo, permiso_app, permiso_tienda) VALUES
(1, 'tony@stark.com', 'total', 'total'),
(2, 'bruce@wayne.com', 'gestión de productos', 'jefe'),
(3, 'ash@poke.com', 'gestión de productos', 'jefe'),
(4, 'harry@hogwarts.com', 'limitado', 'cliente'),
(5, 'frodo@baggins.com', 'limitado', 'cliente'),
(6, 'luke@rebels.com', 'limitado', 'cliente'),
(7, 'mario@nintendo.com', 'limitado', 'cliente'),
(8, 'totoro@ghibli.com', 'limitado', 'cliente'),
(9, 'arya@stark.com', 'limitado', 'cliente'),
(10, 'zelda@hyrule.com', 'limitado', 'cliente')
;

INSERT INTO carro_de_compras (monto_total, cantidad, correo) VALUES
(15000, 1, 'harry@hogwarts.com'),
(30000, 2, 'frodo@baggins.com'),
(50000, 3, 'luke@rebels.com'),
(45000, 3, 'mario@nintendo.com'),
(20000, 2, 'totoro@ghibli.com'),
(60000, 4, 'arya@stark.com'),
(75000, 5, 'zelda@hyrule.com'),
(100000, 5, 'tony@stark.com'),
(80000, 4, 'ash@poke.com'),
(65000, 3, 'bruce@wayne.com')
;

INSERT INTO boleta (metodo_pago, fecha_c, id_carro) VALUES
('Tarjeta StarkPay', '2025-06-01', 1),      -- Harry
('Transferencia WayneBank', '2025-06-02', 2),  -- Frodo
('Créditos Jedi', '2025-06-03', 3),         -- Luke
('PokePesos', '2025-06-04', 4),             -- Mario
('Espíritu del Bosque', '2025-06-05', 5),   -- Totoro
('Dragones de Oro', '2025-06-06', 6),       -- Arya
('Rupias de Hyrule', '2025-06-07', 7),      -- Zelda
('Crédito Ilimitado StarkCard', '2025-06-08', 8), -- Tony
('Pago con Pokébola', '2025-06-09', 9),     -- Ash
('BatiCrédito', '2025-06-10', 10)          -- Bruce
;

INSERT INTO carta (id_producto, rareza, año, estado, formato, id_carro) VALUES
(1, 'Rara', 2001, 'Usada', 'Legacy', 1),
(2, 'Ultra Rara', 2003, 'Nueva', 'Commander', 2),
(3, 'Legendaria', 2022, 'Nueva', 'Standard', 3),
(4, 'Rara', 2020, 'Usada', 'Expanded', 4),
(5, 'Común', 1997, 'Dañada', 'Vintage', 5)
;

INSERT INTO juego_de_mesa (id_producto, tipo_juego) VALUES
(6, 'Estrategia'),
(7, 'Guerra'),
(8, 'Fantasía'),
(9, 'Intriga'),
(10, 'Aventura')
;

INSERT INTO producto (url, stock, categoria, nombre_producto, venta_producto) VALUES
('url_hogwarts.jpg', 10, 'Cartas', 'Varita de Hermione', 25000),
('url_ring.jpg', 5, 'Cartas', 'Anillo Único Foil', 40000),
('url_sable.jpg', 3, 'Cartas', 'Sable Luz Azul', 35000),
('url_poke.jpg', 8, 'Cartas', 'Carta Pikachu VMAX', 30000),
('url_marauder.jpg', 6, 'Cartas', 'Mapa del Merodeador', 27000),
('url_catan.jpg', 4, 'Juego de mesa', 'Catan Deluxe', 55000),
('url_risk.jpg', 2, 'Juego de mesa', 'Risk Star Wars Edition', 50000),
('url_miyazaki.jpg', 3, 'Juego de mesa', 'Spirited Away Board Game', 47000),
('url_trono.jpg', 5, 'Juego de mesa', 'Juego de Tronos', 60000),
('url_zelda.jpg', 7, 'Juego de mesa', 'Aventura en Hyrule', 65000)
;

INSERT INTO ranking (posicion_rank, posicion_mundial, id_producto) VALUES
(1, 10, 10), -- Zelda
(2, 15, 9), -- Juego de Tronos
(3, 18, 6), -- Catan
(4, 22, 7), -- Risk Star Wars
(5, 25, 4), -- Pikachu
(6, 30, 1), -- Varita
(7, 35, 2), -- Anillo Único
(8, 40, 3), -- Sable Luz
(9, 45, 5), -- Mapa Merodeador
(10, 50, 8) -- Spirited Away
;

INSERT INTO valoracion (id_usuario, id_producto, fecha_v, comentario, puntuacion) VALUES
('harry@hogwarts.com', 1, '2025-06-01', 'Una varita digna de Hermione. 10/10', 5),
('frodo@baggins.com', 2, '2025-06-02', 'El anillo... me llama. Pero es carísimo.', 4),
('luke@rebels.com', 3, '2025-06-03', 'Más azul que mi esperanza.', 5),
('mario@nintendo.com', 4, '2025-06-04', '¡Pika Pika! Muy electrizante.', 5),
('totoro@ghibli.com', 5, '2025-06-05', 'Lo usé una vez, ahora estoy perdido.', 3),
('arya@stark.com', 6, '2025-06-06', 'Catan es juego de asesinos ahora.', 4),
('zelda@hyrule.com', 7, '2025-06-07', 'Risk con jedis: sueño cumplido.', 5),
('tony@stark.com', 8, '2025-06-08', 'Miyazaki es mi espíritu animal.', 5),
('ash@poke.com', 9, '2025-06-09', 'Juego de Tronos me hizo llorar.', 4),
('bruce@wayne.com', 10, '2025-06-10', 'Zelda me hizo olvidarme de Gotham.', 5)
;

INSERT INTO ranking_carta (id_rank_c, id_lista, id_carta, posicion_rank) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 2, 6),
(7, 7, 1, 7),
(8, 8, 4, 8),
(9, 9, 5, 9),
(10, 10, 3, 10)
;

INSERT INTO usuario_x_producto (correo, id_producto) VALUES
('harry@hogwarts.com', 1),
('frodo@baggins.com', 2),
('luke@rebels.com', 3),
('mario@nintendo.com', 4),
('totoro@ghibli.com', 5),
('arya@stark.com', 6),
('zelda@hyrule.com', 7),
('tony@stark.com', 8),
('ash@poke.com', 9),
('bruce@wayne.com', 10)
;

INSERT INTO lista_deseos_x_producto (id_lista, id_producto) VALUES
(1, 4),  -- Pikachu
(2, 1),  -- Varita
(3, 8),  -- Spirited Away
(4, 3),  -- Sable
(5, 2),  -- Anillo
(6, 7),  -- Risk Star Wars
(7, 6),  -- Catan
(8, 9),  -- Tronos
(9, 10), -- Zelda
(10, 5) -- Mapa Merodeador
;

INSERT INTO producto_x_carro_de_compras (id_producto, id_carro) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10)
;

INSERT INTO lista_deseos_x_carro_de_compras (id_lista, id_carro) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10)
;

INSERT INTO lista_deseos_x_ranking_carta (id_lista, id_carta) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 2),
(7, 1),
(8, 4),
(9, 5),
(10, 3)
;
