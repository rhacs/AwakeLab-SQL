--
-- Insertar datos en las tablas
--

-- Articulos
INSERT INTO articulos VALUES (1, 'Carne', 'La mejor seleccion de carnes rojas');
INSERT INTO articulos VALUES (2, 'Carbon', 'Carbon de espino de la mas alta calidad');
INSERT INTO articulos VALUES (3, 'Cebolla', 'Para dar unos besos del terror');
INSERT INTO articulos VALUES (4, 'Pimentones', 'Rojos, verdes y amarillos para bailar al ritmo del Reggae');
INSERT INTO articulos VALUES (5, 'Utencilios', 'Tanto para dar vuelta la carne como para urgar esa hilacha de carne que queda en la ultima muela del juicio');
INSERT INTO articulos VALUES (6, 'Parrilla', 'De esas que al segundo asado ya hay que reemplazarles el fondo');
INSERT INTO articulos VALUES (7, 'Bebestibles', 'Quien dijo asado de vidrio?');
INSERT INTO articulos VALUES (8, 'Musica', 'No hay parrillada sin una buena zapateada');

-- Clientes
INSERT INTO clientes VALUES (1, 'Lola Mento', 1000, 0);
INSERT INTO clientes VALUES (2, 'Helen Chufe', 2500, 5);
INSERT INTO clientes VALUES (3, 'Susana Horia', 5000, 0);
INSERT INTO clientes VALUES (4, 'Sevelina Parada', 3500, 10);
INSERT INTO clientes VALUES (5, 'Elena Nito', 4000, 5);
INSERT INTO clientes VALUES (6, 'Alex Plosivo', 1200, 10);
INSERT INTO clientes VALUES (7, 'Cindy Nero', 5000, 15);
INSERT INTO clientes VALUES (8, 'Aitor Tilla', 3150, 0);
INSERT INTO clientes VALUES (9, 'Elmer Curio', 2000, 5);
INSERT INTO clientes VALUES (10, 'Elsi Goto', 1000, 0);

-- Fabricas
INSERT INTO fabricas VALUES (1, 'Fabrica #1', '111111111', 1);
INSERT INTO fabricas VALUES (2, 'Fabrica #2', '222222222', 1);
INSERT INTO fabricas VALUES (3, 'Fabrica #3', '333333333', 1);
INSERT INTO fabricas VALUES (4, 'Fabrica #4', '444444444', 1);
INSERT INTO fabricas VALUES (5, 'Fabrica #5', '555555555', 2);
INSERT INTO fabricas VALUES (6, 'Fabrica #6', '666666666', 2);
INSERT INTO fabricas VALUES (7, 'Fabrica #7', '777777777', 2);
INSERT INTO fabricas VALUES (8, 'Fabrica #8', '888888888', 3);
INSERT INTO fabricas VALUES (9, 'Fabrica #9', '999999999', 3);
INSERT INTO fabricas VALUES (10, 'Fabrica #10', '100000000', 4);
INSERT INTO fabricas VALUES (11, 'Fabrica #11', '110000000', 4);
INSERT INTO fabricas VALUES (12, 'Fabrica #12', '120000000', 4);
INSERT INTO fabricas VALUES (13, 'Fabrica #13', '130000000', 5);
INSERT INTO fabricas VALUES (14, 'Fabrica #14', '140000000', 5);
INSERT INTO fabricas VALUES (15, 'Fabrica #15', '150000000', 5);
INSERT INTO fabricas VALUES (16, 'Fabrica #16', '160000000', 5);
INSERT INTO fabricas VALUES (17, 'Fabrica #17', '170000000', 6);
INSERT INTO fabricas VALUES (18, 'Fabrica #18', '180000000', 6);
INSERT INTO fabricas VALUES (19, 'Fabrica #19', '190000000', 7);
INSERT INTO fabricas VALUES (20, 'Fabrica #20', '200000000', 7);
INSERT INTO fabricas VALUES (21, 'Fabrica #21', '210000000', 7);
INSERT INTO fabricas VALUES (22, 'Fabrica #22', '220000000', 8);
INSERT INTO fabricas VALUES (23, 'Fabrica #23', '230000000', 8);

-- Direcciones
INSERT INTO direcciones VALUES (1, 'Plaza de Armas', '444', 'Santiago', 'Santiago', 1);
INSERT INTO direcciones VALUES (2, 'Libertad', '430', 'Santiago', 'Santiago', 1);
INSERT INTO direcciones VALUES (3, 'Alameda', '227', 'Santiago', 'Santiago', 2);
INSERT INTO direcciones VALUES (4, 'Huerfanos', '1373', 'Santiago', 'Santiago', 3);
INSERT INTO direcciones VALUES (5, 'Avenida Peru', '1001', 'Recoleta', 'Santiago', 4);
INSERT INTO direcciones VALUES (6, 'Avenida Providencia', '1645', 'Las Condes', 'Santiago', 4);
INSERT INTO direcciones VALUES (7, 'Avenida Vicuna Mackena', '4860', 'Macul', 'Santiago', 4);
INSERT INTO direcciones VALUES (8, 'Avenida Apoquindo', '4501', 'Las Condes', 'Santiago', 5);
INSERT INTO direcciones VALUES (9, 'Calle Uno', 'S/N', 'Huechuraba', 'Santiago', 5);
INSERT INTO direcciones VALUES (10, 'Avenida El Comendador', '1916', 'Providencia', 'Santiago', 6);
INSERT INTO direcciones VALUES (11, 'Avenida Bicentenario', '4050', 'Vitacura', 'Santiago', 7);
INSERT INTO direcciones VALUES (12, 'Avenida Vicuna Mackena', '4860', 'Macul', 'Santiago', 8);
INSERT INTO direcciones VALUES (13, 'Espoz', '3125', 'Vitacura', 'Santiago', 8);
INSERT INTO direcciones VALUES (14, 'Gandarillas', '78', 'Recoleta', 'Santiago', 8);
INSERT INTO direcciones VALUES (15, 'Avenida Departamental', '1390', 'San Miguel', 'Santiago', 9);
INSERT INTO direcciones VALUES (16, 'Avenida Costanera Sur', '3201', 'Quinta Normal', 'Santiago', 10);

-- Pedidos
INSERT INTO pedidos VALUES (1, TO_DATE('01-01-2020 12:53', 'DD-MM-YYYY HH24:MI'), 1, 2);
INSERT INTO pedidos VALUES (2, TO_DATE('02/02/2020 10:23', 'DD-MM-YYYY HH24:MI'), 2, 3);
INSERT INTO pedidos VALUES (3, TO_DATE('07/12/2019 13:44', 'DD-MM-YYYY HH24:MI'), 4, 4);
INSERT INTO pedidos VALUES (4, TO_DATE('18/09/2019 15:49', 'DD-MM-YYYY HH24:MI'), 5, 7);
INSERT INTO pedidos VALUES (5, TO_DATE('18/09/2019 18:21', 'DD-MM-YYYY HH24:MI'), 6, 8);
INSERT INTO pedidos VALUES (6, TO_DATE('20/02/2020 06:00', 'DD-MM-YYYY HH24:MI'), 7, 11);
INSERT INTO pedidos VALUES (7, TO_DATE('29/02/2020 09:54', 'DD-MM-YYYY HH24:MI'), 9, 15);

-- Detalles
INSERT INTO detalles VALUES (1, 2, 1, 1);
INSERT INTO detalles VALUES (2, 5, 1, 3);
INSERT INTO detalles VALUES (3, 3, 1, 4);
INSERT INTO detalles VALUES (4, 10, 2, 2);
INSERT INTO detalles VALUES (5, 5, 3, 7);
INSERT INTO detalles VALUES (6, 3, 4, 5);
INSERT INTO detalles VALUES (7, 1, 4, 8);
INSERT INTO detalles VALUES (8, 1, 4, 6);
INSERT INTO detalles VALUES (9, 5, 4, 1);
INSERT INTO detalles VALUES (10, 3, 5, 1);
INSERT INTO detalles VALUES (11, 4, 5, 2);
INSERT INTO detalles VALUES (12, 1, 5, 3);
INSERT INTO detalles VALUES (13, 5, 6, 7);
INSERT INTO detalles VALUES (14, 1, 6, 8);
INSERT INTO detalles VALUES (15, 1, 7, 8);
INSERT INTO detalles VALUES (16, 1, 7, 1);
INSERT INTO detalles VALUES (17, 1, 7, 5);

--
-- Consultas a la base de datos
--

