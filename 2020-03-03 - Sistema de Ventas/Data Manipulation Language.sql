--
-- Insertar datos en las tablas
--

-- Categorias
INSERT INTO categorias VALUES (1, 'Panaderia', 'Incluye hasta pan de barrido');
INSERT INTO categorias VALUES (2, 'Pasteleria', 'Para los amantes del dulce');
INSERT INTO categorias VALUES (3, 'Gelateria', 'Para congelar el "celebro"');

-- Clientes
INSERT INTO clientes VALUES (1, '11111111-1', 'Elsi Goto', 'Calle #11, Comuna, Ciudad');
INSERT INTO clientes VALUES (2, '2222222-2', 'Helena Nito', 'Calle #22, Comuna, Ciudad');
INSERT INTO clientes VALUES (3, '33333333-3', 'Sevelina Parada', 'Calle #33, Comuna, Ciudad');
INSERT INTO clientes VALUES (4, '4444444-4', 'Alan Brito Delgado', 'Calle #44, Comuna, Ciudad');
INSERT INTO clientes VALUES (5, '55555555-5', 'Elba Zurita', 'Calle #55, Comuna, Ciudad');

-- Proveedores
INSERT INTO proveedores VALUES (1, '10000000-0', 'Proveedor #1', 'Calle #1, Comuna, Ciudad', '10000000', '');
INSERT INTO proveedores VALUES (2, '20000000-0', 'Proveedor #2', 'Calle #2, Comuna, Ciudad', '20000000', '');
INSERT INTO proveedores VALUES (3, '30000000-0', 'Proveedor #3', 'Calle #3, Comuna, Ciudad', '30000000', '');
INSERT INTO proveedores VALUES (4, '40000000-0', 'Proveedor #4', 'Calle #4, Comuna, Ciudad', '40000000', '');
INSERT INTO proveedores VALUES (5, '50000000-0', 'Proveedor #5', 'Calle #5, Comuna, Ciudad', '50000000', '');
INSERT INTO proveedores VALUES (6, '60000000-0', 'Proveedor #6', 'Calle #6, Comuna, Ciudad', '60000000', '');

-- Productos
INSERT INTO productos VALUES (1, 'Marraqueta', 1500, 500, 1, 1);
INSERT INTO productos VALUES (2, 'Hallulla', 1600, 450, 1, 1);
INSERT INTO productos VALUES (3, 'Pan Integral', 2000, 200, 1, 2);
INSERT INTO productos VALUES (4, 'Pan sin Gluten', 4000, 50, 1, 2);
INSERT INTO productos VALUES (5, 'Colegiales', 300, 1000, 2, 3);
INSERT INTO productos VALUES (6, 'Palmeras', 500, 600, 2, 4);
INSERT INTO productos VALUES (7, 'Torta 10 personas', 20000, 30, 2, 5);
INSERT INTO productos VALUES (8, 'Cachitos', 250, 444, 2, 5);
INSERT INTO productos VALUES (9, 'Helado cono sabor unico', 1000, 1000, 3, 6);
INSERT INTO productos VALUES (10, 'Helado cono dos sabores', 1500, 500, 3, 6);
INSERT INTO productos VALUES (11, 'Helado vaso un sabor', 2000, 250, 3, 6);
INSERT INTO productos VALUES (12, 'Helado vaso dos sabores', 3000, 250, 3, 6);

-- Telefonos
INSERT INTO telefonos VALUES (1, 22, 1111111, 1);
INSERT INTO telefonos VALUES (2, 22, 1111112, 1);
INSERT INTO telefonos VALUES (3, 22, 1111113, 1);
INSERT INTO telefonos VALUES (4, 22, 2222222, 2);
INSERT INTO telefonos VALUES (5, 22, 3333333, 3);
INSERT INTO telefonos VALUES (6, 22, 4444444, 4);
INSERT INTO telefonos VALUES (7, 22, 5555555, 5);
INSERT INTO telefonos VALUES (8, 22, 5555556, 5);
INSERT INTO telefonos VALUES (9, 22, 5555557, 5);
INSERT INTO telefonos VALUES (10, 22, 5555558, 5);
INSERT INTO telefonos VALUES (11, 22, 5555559, 5);

-- Ventas
INSERT INTO ventas VALUES (1, TO_DATE('12-12-2019 12:12', 'DD-MM-YYYY HH24:MI'), 0, 1);
INSERT INTO ventas VALUES (2, TO_DATE('13-12-2019 12:24', 'DD-MM-YYYY HH24:MI'), 0, 1);
INSERT INTO ventas VALUES (3, TO_DATE('25-12-2019 10:01', 'DD-MM-YYYY HH24:MI'), 5, 2);
INSERT INTO ventas VALUES (4, TO_DATE('26-12-2019 13:44', 'DD-MM-YYYY HH24:MI'), 0, 3);
INSERT INTO ventas VALUES (5, TO_DATE('03-01-2020 09:45', 'DD-MM-YYYY HH24:MI'), 10, 4);
INSERT INTO ventas VALUES (6, TO_DATE('05-01-2020 17:21', 'DD-MM-YYYY HH24:MI'), 0, 5);
INSERT INTO ventas VALUES (7, TO_DATE('11-01-2020 13:31', 'DD-MM-YYYY HH24:MI'), 5, 4);
INSERT INTO ventas VALUES (8, TO_DATE('11-01-2020 19:49', 'DD-MM-YYYY HH24:MI'), 0, 4);

-- Venta_Producto
INSERT INTO venta_producto VALUES (1, 1, 1.52);
INSERT INTO venta_producto VALUES (2, 1, 0.5);
INSERT INTO venta_producto VALUES (5, 2, 6);
INSERT INTO venta_producto VALUES (7, 3, 2);
INSERT INTO venta_producto VALUES (10, 4, 5);
INSERT INTO venta_producto VALUES (6, 5, 120);
INSERT INTO venta_producto VALUES (9, 6, 2);
INSERT INTO venta_producto VALUES (12, 7, 4);
INSERT INTO venta_producto VALUES (3, 8, 45);

-- 
-- Consultas a la base de datos
--

-- Mostrar los productos de cada proveedor
SELECT
    proveedores.proveedor_id AS ID,
    proveedores.nombre AS Proveedor,
    productos.nombre AS Producto
FROM proveedores
    LEFT JOIN productos ON proveedores.proveedor_id = productos.proveedor_id
ORDER BY
    Proveedor;

-- Dado un cliente, mostrar el historial de compras
SELECT
    clientes.cliente_id AS ID,
    clientes.nombre AS Nombre,
    ventas.fecha AS Fecha,
    productos.nombre AS Producto,
    venta_producto.cantidad AS Cantidad,
    productos.precio AS Unitario,
    ventas.descuento AS Descuento,
    (venta_producto.cantidad * productos.precio) AS SubTotal,
    (venta_producto.cantidad * productos.precio - (venta_producto.cantidad * productos.precio * (ventas.descuento / 100))) AS Total
FROM clientes
    LEFT JOIN ventas ON clientes.cliente_id = ventas.cliente_id
    LEFT JOIN venta_producto ON ventas.venta_id = venta_producto.venta_id
    LEFT JOIN productos ON venta_producto.producto_id = productos.producto_id
WHERE
    clientes.cliente_id = 2
--    clientes.cliente_id BETWEEN 1 AND 4
GROUP BY
    clientes.cliente_id,
    clientes.nombre,
    ventas.fecha,
    ventas.descuento,
    productos.nombre,
    productos.precio,
    venta_producto.cantidad
ORDER BY
    ID;