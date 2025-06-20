-- 1. Agregar un juego de mesa / carta al carrito de compras
INSERT INTO producto_x_carro_de_compras (id_producto, id_carro)
VALUES (101, 401); -- Pikachu VMAX al carro 401

-- 2. Eliminar un juego de mesa / carta del carrito de compras
DELETE FROM producto_x_carro_de_compras
WHERE id_producto = 101 AND id_carro = 401;

-- 3. Mostrar los juegos de mesa / cartas del carrito de compras
SELECT p.nombre_producto, p.categoria, p.stock, p.venta_producto
FROM producto p
JOIN producto_x_carro_de_compras pc ON p.id_producto = pc.id_producto
WHERE pc.id_carro = 401;

-- 4. Mostrar el precio total a pagar por el carrito de compras
SELECT SUM(p.venta_producto) AS total_a_pagar
FROM producto p
JOIN producto_x_carro_de_compras pc ON p.id_producto = pc.id_producto
WHERE pc.id_carro = 401;

-- 5. Mostrar todos los juegos de mesa y cartas que se venden en una ubicación geográfica específica
SELECT p.*
FROM producto p
JOIN usuario u ON p.id_producto = ANY (
    SELECT id_producto FROM producto_x_carro_de_compras pc
    JOIN carro_de_compras cdc ON pc.id_carro = cdc.id_carro
    WHERE cdc.correo = u.correo
)
JOIN tienda t ON u.id_tienda = t.id_tienda
WHERE t.ubicacion_tienda = 'Santiago';

-- 6. Mostrar ranking de los productos con más ventas
SELECT nombre_producto, venta_producto
FROM producto
ORDER BY venta_producto DESC
LIMIT 10;

-- 7. Mostrar lista de deseos de un usuario
SELECT ld.nombre_lista, p.nombre_producto, p.categoria
FROM lista_deseos ld
JOIN lista_deseos_x_producto ldp ON ld.id_lista = ldp.id_lista
JOIN producto p ON ldp.id_producto = p.id_producto
WHERE ld.id_lista = 2001;

