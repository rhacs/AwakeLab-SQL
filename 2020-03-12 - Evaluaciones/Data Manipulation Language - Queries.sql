-- Consultas

-- P1: Conocer el número de evaluaciones por curso.
SELECT
    cursos.curso_id AS ID,
    cursos.programa AS Programa,
    COUNT(curso_evaluacion.curso_id) AS Evaluaciones
FROM cursos
    LEFT JOIN curso_evaluacion ON cursos.curso_id = curso_evaluacion.curso_id
GROUP BY
    cursos.curso_id,
    cursos.programa
ORDER BY ID;

-- P2: Conocer los cursos sin evaluaciones.
SELECT
    cursos.curso_id AS ID,
    cursos.programa AS Programas,
    COUNT(alumnos.alumno_id) AS Alumnos,
    COUNT(curso_evaluacion.curso_id) AS Evaluaciones
FROM cursos
    LEFT JOIN curso_evaluacion ON cursos.curso_id = curso_evaluacion.curso_id
    LEFT JOIN alumnos ON cursos.curso_id = alumnos.curso_id
GROUP BY
    cursos.curso_id,
    cursos.programa
HAVING
    COUNT(curso_evaluacion.curso_id) = 0
ORDER BY ID;

-- P3: Determinar las evaluaciones con deficiencia. Una evaluación es deficiente si:
--   a. No tiene preguntas.
--   b. Hay preguntas con 2 ó menos alternativas
--   c. Todas las alternativas son correctas o si todas las alternativas son incorrectas.
CREATE OR REPLACE VIEW deficiencias AS
    SELECT
        evaluaciones.evaluacion_id AS evaluacion,
        preguntas.pregunta_id AS pregunta,
        COUNT(alternativas.alternativa_id) AS alternativas,
        COUNT(CASE WHEN alternativas.correcta = '1' THEN 1 END) AS correctas,
        COUNT(CASE WHEN alternativas.correcta = '0' THEN 1 END) AS incorrectas
    FROM preguntas
        INNER JOIN alternativas ON preguntas.pregunta_id = alternativas.pregunta_id
        INNER JOIN evaluaciones ON preguntas.evaluacion_id = evaluaciones.evaluacion_id
    GROUP BY
        preguntas.pregunta_id,
        evaluaciones.evaluacion_id
    ORDER BY evaluacion, pregunta;

SELECT * FROM deficiencias;

SELECT
    evaluaciones.nombre AS nombre
FROM evaluaciones
    LEFT JOIN deficiencias ON evaluaciones.evaluacion_id = deficiencias.evaluacion
    LEFT JOIN preguntas ON evaluaciones.evaluacion_id = preguntas.evaluacion_id
    LEFT JOIN alternativas ON preguntas.pregunta_id = alternativas.pregunta_id
GROUP BY
    evaluaciones.nombre
HAVING
    COUNT(CASE WHEN deficiencias.evaluacion = evaluaciones.evaluacion_id THEN 1 END) = 0
    OR COUNT(CASE WHEN preguntas.pregunta_id = deficiencias.pregunta AND deficiencias.alternativas < 3 THEN 1 END) > 0
    OR COUNT(CASE WHEN deficiencias.correctas = 0 OR deficiencias.incorrectas = 0 THEN 1 END) > 0
ORDER BY nombre;

-- P4: Determinar cuántos alumnos hay en cada curso.
SELECT
    cursos.curso_id AS ID,
    cursos.programa AS Programa,
    COUNT(alumnos.alumno_id) AS Alumnos
FROM cursos
    LEFT JOIN alumnos ON cursos.curso_id = alumnos.curso_id
GROUP BY
    cursos.curso_id,
    cursos.programa
ORDER BY ID;

-- P5: Obtener el puntaje no normalizado de cada evaluación. 
-- El puntaje no normalizado ha sido definido (requerimiento) como: P = buenas –(malas/4).
-- Si un alumno no contesta en una pregunta exactamente lo mismo que se ha definido como correcto, la pregunta cuenta
-- como mala a menos que el alumno haya omitido.
CREATE OR REPLACE VIEW evaluaciones_puntajes AS
    SELECT
        evaluaciones.evaluacion_id AS id,
        evaluaciones.nombre AS nombre,
        evaluaciones.unidad AS unidad,
        SUM(preguntas.puntaje) AS puntaje
    FROM evaluaciones
        LEFT JOIN preguntas ON evaluaciones.evaluacion_id = preguntas.evaluacion_id
    GROUP BY
        evaluaciones.evaluacion_id,
        evaluaciones.nombre,
        evaluaciones.unidad
    ORDER BY id;
    
SELECT * FROM evaluaciones_puntajes;

CREATE OR REPLACE VIEW alumnos_puntajes AS
    SELECT 
        respuestas.alumno_id AS alumno_id,
        alumnos.nombre AS alumno_nombre,
        evaluaciones.evaluacion_id AS evaluacion,
        preguntas.enunciado AS pregunta,
        alternativas.descripcion AS alternativa,
        ((preguntas.puntaje * alternativas.porcentaje) / 100) AS obtenido
    FROM respuestas
        INNER JOIN alternativas ON respuestas.alternativa_id = alternativas.alternativa_id
        INNER JOIN preguntas ON alternativas.pregunta_id = preguntas.pregunta_id
        INNER JOIN alumnos ON respuestas.alumno_id = alumnos.alumno_id
        INNER JOIN evaluaciones ON preguntas.evaluacion_id = evaluaciones.evaluacion_id
    ORDER BY respuestas.respuesta_id;

SELECT * FROM alumnos_puntajes;

CREATE OR REPLACE VIEW notas AS
    SELECT 
        alumno_id AS id,
        alumnos.nombre AS nombre,
        evaluacion,
        COUNT(CASE WHEN obtenido != 0 THEN 1 END) AS buenas,
        COUNT(CASE WHEN obtenido = 0 THEN 1 END) AS malas,
        CASE
            WHEN ROUND(COUNT(CASE WHEN obtenido != 0 THEN 1 END) - (COUNT(CASE WHEN obtenido = 0 THEN 1 END) / 4), 1) < 1
            THEN 1
            ELSE ROUND(COUNT(CASE WHEN obtenido != 0 THEN 1 END) - (COUNT(CASE WHEN obtenido = 0 THEN 1 END) / 4), 1)
        END as puntaje
    FROM alumnos_puntajes
        INNER JOIN alumnos USING (alumno_id)
    GROUP BY
        alumno_id,
        alumnos.nombre,
        evaluacion
    ORDER BY id;

SELECT * FROM notas;

-- P6: Obtener el puntaje normalizado, o sea, de 1,0 a 7,0.
CREATE OR REPLACE VIEW notas_normalizadas AS
    SELECT 
        alumno_id AS id,
        alumno_nombre AS nombre,
        evaluacion AS evaluacion,
        evaluaciones_puntajes.puntaje AS puntaje_total,
        SUM(obtenido) AS puntaje_obtenido,
        CASE
            WHEN (7 * SUM(obtenido) / evaluaciones_puntajes.puntaje) < 1
            THEN 1
            ELSE ROUND((7 * SUM(obtenido) / evaluaciones_puntajes.puntaje), 1)
        END as calificacion
    FROM alumnos_puntajes
        LEFT JOIN evaluaciones_puntajes ON alumnos_puntajes.evaluacion = evaluaciones_puntajes.id
    GROUP BY 
        alumno_id, alumno_nombre, evaluacion, evaluaciones_puntajes.puntaje
    ORDER BY id;

SELECT * FROM notas_normalizadas;

-- P7: Nombre de estudiantes de un curso determinado que aprueban una evaluación determinada (donde la nota de aprobación
-- mínima es un 4,0).
SELECT * FROM notas_normalizadas WHERE calificacion >= 4;

-- P8: Nota promedio de los estudiantes de un curso determinado, para una evaluación de terminada.
SELECT
    cursos.curso_id AS id,
    cursos.programa AS curso,
    evaluaciones.evaluacion_id AS evaluacion,
    ROUND(AVG(notas_normalizadas.calificacion), 1) AS promedio
FROM cursos
    LEFT JOIN alumnos ON cursos.curso_id = alumnos.curso_id
    LEFT JOIN notas_normalizadas ON alumnos.alumno_id = notas_normalizadas.id
    LEFT JOIN evaluaciones ON notas_normalizadas.evaluacion = evaluaciones.evaluacion_id
GROUP BY
    cursos.curso_id, cursos.programa, evaluaciones.evaluacion_id
ORDER BY id;