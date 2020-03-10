-- Insertar datos en las tablas

-- Sedes
INSERT INTO sedes (nombre, presupuesto) VALUES ('Estadio Esparta', 55.8);
INSERT INTO sedes (nombre, presupuesto) VALUES ('Estadio Bicentenario de La Florida', 89.2);

-- Complejos
-- Estadio Esparta
INSERT INTO complejos (localizacion, jefe_organizacion, area_ocupada, tipo, sedes_sede_id)
VALUES ('CENTRO', 'Susana Oria', 8250.0, 'uni', 1);
INSERT INTO complejos (localizacion, jefe_organizacion, area_ocupada, tipo, sedes_sede_id)
VALUES ('NORTE', 'Sevelinda Parada', 8250.0, 'uni', 1);
INSERT INTO complejos (localizacion, jefe_organizacion, area_ocupada, tipo, sedes_sede_id)
VALUES ('SURESTE', 'Alan Brito Delgado', 420.0, 'uni', 1);

-- Estadio Bicentenario de La Florida
INSERT INTO complejos (localizacion, jefe_organizacion, area_ocupada, tipo, sedes_sede_id)
VALUES ('CENTRO', 'Elba Zurita', 8250.0, 'poli', 2);

--
-- Eventos
INSERT INTO eventos (nombre, fecha, duracion, qty_participantes, complejos_complejo_id)
VALUES ('Academia de Futbol Adulto', '15/03/2019', 1, 100, 2);
INSERT INTO eventos (nombre, fecha, duracion, qty_participantes, complejos_complejo_id)
VALUES ('Como comer pasto', '16/04/2020', 1, 200, 1);
INSERT INTO eventos (nombre, fecha, duracion, qty_participantes, complejos_complejo_id)
VALUES ('Haciendo hoyos', '20/12/2020', 1, 50, 1);
INSERT INTO eventos (nombre, fecha, duracion, qty_participantes, complejos_complejo_id)
VALUES ('LA Lakers vs Chicago Bulls', '15/06/2020', 1, 5000, 3);
INSERT INTO eventos (nombre, fecha, duracion, qty_participantes, complejos_complejo_id)
VALUES ('La U a Segunda', '10/03/2020', 1, 21, 4);

-- Equipamientos
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Cloro', 'Limpieza', 5);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Pelotas', 'Deporte', 1);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Conos', 'Deporte', 1);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Pecheras', 'Deporte', 1);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Pasto', 'Recreativo', 2);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Condimentos', 'Recreativo', 2);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Palas', 'Mantenimiento', 3);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Carretillas', 'Mantenimiento', 3);
INSERT INTO equipamientos (nombre, tipo, eventos_evento_id) VALUES ('Pelotas Basketball', 'Deporte', 4);

-- Comisarios
INSERT INTO comisarios (nombre, tarea, eventos_evento_id) VALUES ('Elsi Goto', 'Conserje', 5);
INSERT INTO comisarios (nombre, tarea, eventos_evento_id) VALUES ('Helen Brion', 'Pelotera', 4);
INSERT INTO comisarios (nombre, tarea, eventos_evento_id) VALUES ('Yola Prieto', 'Aguatero', 1);
INSERT INTO comisarios (nombre, tarea, eventos_evento_id) VALUES ('Noe Nacido', 'Arbitro', 3);


-- Consultas
-- Mostrar equipamiento que utiliza un centro deportivo para todos los eventos que ha realizado
SELECT
    complejos.complejo_id,
    eventos.nombre AS EVENTO_NOMBRE,
    equipamientos.nombre AS EQUIPAMIENTO_NOMBRE,
    equipamientos.tipo AS EQUIPAMIENTO_TIPO
FROM complejos 
    INNER JOIN eventos ON complejos.complejo_id = eventos.complejos_complejo_id
    INNER JOIN equipamientos ON eventos.evento_id = equipamientos.eventos_evento_id 
GROUP BY
    complejo_id, eventos.nombre, equipamientos.nombre, equipamientos.tipo
ORDER BY 
    complejo_id,
    EQUIPAMIENTO_NOMBRE;

-- Comisarios que trabajaron en cierta fecha en una determinada sede
SELECT
    sedes.sede_id,
    sedes.nombre AS SEDE_NOMBRE,
    eventos.nombre AS EVENTO_NOMBRE,
    eventos.fecha AS EVENTO_FECHA,
    comisarios.nombre AS COMISARIO_NOMBRE,
    comisarios.tarea AS COMISARIO_TAREA
FROM sedes
    INNER JOIN complejos ON sedes.sede_id = complejos.sedes_sede_id
    INNER JOIN eventos ON complejos.complejo_id = eventos.complejos_complejo_id
    INNER JOIN comisarios ON eventos.evento_id = comisarios.eventos_evento_id
WHERE
    fecha = '15/03/19' AND sedes.nombre LIKE '%Florida'
ORDER BY
    sedes.sede_id,
    COMISARIO_NOMBRE;