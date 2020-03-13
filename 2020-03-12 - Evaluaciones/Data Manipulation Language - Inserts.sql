--
-- Insertar datos en las tablas
--

-- Cursos
INSERT INTO cursos VALUES (1, 'Curso #1', TO_DATE('14:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'));
INSERT INTO cursos VALUES (2, 'Curso #2', TO_DATE('09:00', 'HH24:MI'), TO_DATE('14:00', 'HH24:MI'));
INSERT INTO cursos VALUES (3, 'Curso #3', TO_DATE('19:00', 'HH24:MI'), TO_DATE('23:00', 'HH24:MI'));
INSERT INTO cursos VALUES (4, 'Curso #4', TO_DATE('13:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'));

-- Alumnos
INSERT INTO alumnos VALUES (1, 'Nombre #1', 1);
INSERT INTO alumnos VALUES (2, 'Nombre #2', 1);
INSERT INTO alumnos VALUES (3, 'Nombre #3', 1);
INSERT INTO alumnos VALUES (4, 'Nombre #4', 1);
INSERT INTO alumnos VALUES (5, 'Nombre #5', 1);
INSERT INTO alumnos VALUES (6, 'Nombre #6', 1);
INSERT INTO alumnos VALUES (7, 'Nombre #7', 1);
INSERT INTO alumnos VALUES (8, 'Nombre #8', 1);
INSERT INTO alumnos VALUES (9, 'Nombre #9', 1);
INSERT INTO alumnos VALUES (10, 'Nombre #10', 1);

INSERT INTO alumnos VALUES (11, 'Nombre #11', 2);
INSERT INTO alumnos VALUES (12, 'Nombre #12', 2);
INSERT INTO alumnos VALUES (13, 'Nombre #13', 2);
INSERT INTO alumnos VALUES (14, 'Nombre #14', 2);
INSERT INTO alumnos VALUES (15, 'Nombre #15', 2);
INSERT INTO alumnos VALUES (16, 'Nombre #16', 2);
INSERT INTO alumnos VALUES (17, 'Nombre #17', 2);
INSERT INTO alumnos VALUES (18, 'Nombre #18', 2);
INSERT INTO alumnos VALUES (19, 'Nombre #19', 2);
INSERT INTO alumnos VALUES (20, 'Nombre #20', 2);

INSERT INTO alumnos VALUES (21, 'Nombre #21', 3);
INSERT INTO alumnos VALUES (22, 'Nombre #22', 3);
INSERT INTO alumnos VALUES (23, 'Nombre #23', 3);
INSERT INTO alumnos VALUES (24, 'Nombre #24', 3);
INSERT INTO alumnos VALUES (25, 'Nombre #25', 3);
INSERT INTO alumnos VALUES (26, 'Nombre #26', 3);
INSERT INTO alumnos VALUES (27, 'Nombre #27', 3);
INSERT INTO alumnos VALUES (28, 'Nombre #28', 3);
INSERT INTO alumnos VALUES (29, 'Nombre #29', 3);
INSERT INTO alumnos VALUES (30, 'Nombre #30', 3);
INSERT INTO alumnos VALUES (31, 'Nombre #31', 3);
INSERT INTO alumnos VALUES (32, 'Nombre #32', 3);
INSERT INTO alumnos VALUES (33, 'Nombre #33', 3);
INSERT INTO alumnos VALUES (34, 'Nombre #34', 3);
INSERT INTO alumnos VALUES (35, 'Nombre #35', 3);

-- Evaluaciones
INSERT INTO evaluaciones VALUES (1, 'Evaluacion #1', 'Descripcion #1', 'Unidad #1', 'Autor #1', TO_DATE('07-02-2020', 'DD-MM-YYYY'));
INSERT INTO evaluaciones VALUES (2, 'Evaluacion #2', 'Descripcion #2', 'Unidad #2', 'Autor #2', TO_DATE('14-02-2020', 'DD-MM-YYYY'));
INSERT INTO evaluaciones VALUES (3, 'Evaluacion #3', 'Descripcion #3', 'Unidad #3', 'Autor #3', TO_DATE('21-02-2020', 'DD-MM-YYYY'));
INSERT INTO evaluaciones VALUES (4, 'Evaluacion #4', 'Descripcion #4', 'Unidad #4', 'Autor #4', TO_DATE('28-02-2020', 'DD-MM-YYYY'));

-- Preguntas
INSERT INTO preguntas VALUES (1, 'Enunciado #1-1', 10, 1);
INSERT INTO preguntas VALUES (2, 'Enunciado #1-2', 10, 1);
INSERT INTO preguntas VALUES (3, 'Enunciado #1-3', 10, 1);
INSERT INTO preguntas VALUES (4, 'Enunciado #1-4', 10, 1);
INSERT INTO preguntas VALUES (5, 'Enunciado #1-5', 10, 1);
INSERT INTO preguntas VALUES (6, 'Enunciado #1-6', 10, 1);
INSERT INTO preguntas VALUES (7, 'Enunciado #1-7', 10, 1);
INSERT INTO preguntas VALUES (8, 'Enunciado #1-8', 10, 1);
INSERT INTO preguntas VALUES (9, 'Enunciado #1-9', 10, 1);
INSERT INTO preguntas VALUES (10, 'Enunciado #1-10', 10, 1);

INSERT INTO preguntas VALUES (11, 'Enunciado #2-1', 10, 2);
INSERT INTO preguntas VALUES (12, 'Enunciado #2-2', 10, 2);
INSERT INTO preguntas VALUES (13, 'Enunciado #2-3', 10, 2);
INSERT INTO preguntas VALUES (14, 'Enunciado #2-4', 10, 2);
INSERT INTO preguntas VALUES (15, 'Enunciado #2-5', 10, 2);
INSERT INTO preguntas VALUES (16, 'Enunciado #2-6', 10, 2);
INSERT INTO preguntas VALUES (17, 'Enunciado #2-7', 10, 2);
INSERT INTO preguntas VALUES (18, 'Enunciado #2-8', 10, 2);
INSERT INTO preguntas VALUES (19, 'Enunciado #2-9', 10, 2);
INSERT INTO preguntas VALUES (20, 'Enunciado #2-10', 10, 2);

INSERT INTO preguntas VALUES (21, 'Enunciado #3-1', 20, 3);
INSERT INTO preguntas VALUES (22, 'Enunciado #3-2', 20, 3);
INSERT INTO preguntas VALUES (23, 'Enunciado #3-3', 20, 3);
INSERT INTO preguntas VALUES (24, 'Enunciado #3-4', 20, 3);
INSERT INTO preguntas VALUES (25, 'Enunciado #3-5', 20, 3);

-- Alternativas
INSERT INTO alternativas VALUES (1, 'Descripcion #1-1', '1', 100, 1);
INSERT INTO alternativas VALUES (2, 'Descripcion #1-2', '0', 0, 1);
INSERT INTO alternativas VALUES (3, 'Descripcion #1-3', '0', 0, 1);
INSERT INTO alternativas VALUES (4, 'Descripcion #1-4', '0', 0, 1);

INSERT INTO alternativas VALUES (5, 'Descripcion #2-1', '0', 0, 2);
INSERT INTO alternativas VALUES (6, 'Descripcion #2-2', '1', 50, 2);
INSERT INTO alternativas VALUES (7, 'Descripcion #2-3', '1', 50, 2);
INSERT INTO alternativas VALUES (8, 'Descripcion #2-4', '0', 0, 2);

INSERT INTO alternativas VALUES (9, 'Descripcion #3-1', '0', 0, 3);
INSERT INTO alternativas VALUES (10, 'Descripcion #3-2', '0', 0, 3);
INSERT INTO alternativas VALUES (11, 'Descripcion #3-3', '1', 100, 3);
INSERT INTO alternativas VALUES (12, 'Descripcion #3-4', '0', 0, 3);

INSERT INTO alternativas VALUES (13, 'Descripcion #4-1', '0', 0, 4);
INSERT INTO alternativas VALUES (14, 'Descripcion #4-2', '0', 0, 4);
INSERT INTO alternativas VALUES (15, 'Descripcion #4-3', '0', 0, 4);
INSERT INTO alternativas VALUES (16, 'Descripcion #4-4', '1', 100, 4);

INSERT INTO alternativas VALUES (17, 'Descripcion #5-1', '0', 0, 5);
INSERT INTO alternativas VALUES (18, 'Descripcion #5-2', '1', 100, 5);
INSERT INTO alternativas VALUES (19, 'Descripcion #5-3', '0', 0, 5);
INSERT INTO alternativas VALUES (20, 'Descripcion #5-4', '0', 0, 5);

-- Caso de estudio donde todas las alternativas son correctas
INSERT INTO alternativas VALUES (21, 'Descripcion #6-1', '1', 25, 6);
INSERT INTO alternativas VALUES (22, 'Descripcion #6-2', '1', 25, 6);
INSERT INTO alternativas VALUES (23, 'Descripcion #6-3', '1', 25, 6);
INSERT INTO alternativas VALUES (24, 'Descripcion #6-4', '1', 25, 6);

-- Caso de estudio donde todas las alternativas son incorrectas
INSERT INTO alternativas VALUES (25, 'Descripcion #7-1', '0', 0, 7);
INSERT INTO alternativas VALUES (26, 'Descripcion #7-2', '0', 0, 7);
INSERT INTO alternativas VALUES (27, 'Descripcion #7-3', '0', 0, 7);
INSERT INTO alternativas VALUES (28, 'Descripcion #7-4', '0', 0, 7);

INSERT INTO alternativas VALUES (29, 'Descripcion #8-1', '1', 100, 8);
INSERT INTO alternativas VALUES (30, 'Descripcion #8-2', '0', 0, 8);
INSERT INTO alternativas VALUES (31, 'Descripcion #8-3', '0', 0, 8);
INSERT INTO alternativas VALUES (32, 'Descripcion #8-4', '0', 0, 8);

INSERT INTO alternativas VALUES (33, 'Descripcion #9-1', '0', 0, 9);
INSERT INTO alternativas VALUES (34, 'Descripcion #9-2', '0', 0, 9);
INSERT INTO alternativas VALUES (35, 'Descripcion #9-3', '1', 100, 9);
INSERT INTO alternativas VALUES (36, 'Descripcion #9-4', '0', 0, 9);

INSERT INTO alternativas VALUES (37, 'Descripcion #10-1', '0', 0, 10);
INSERT INTO alternativas VALUES (38, 'Descripcion #10-2', '1', 100, 10);
INSERT INTO alternativas VALUES (39, 'Descripcion #10-3', '0', 0, 10);
INSERT INTO alternativas VALUES (40, 'Descripcion #10-4', '0', 0, 10);

INSERT INTO alternativas VALUES (41, 'Descripcion #11-1', '0', 0, 11);
INSERT INTO alternativas VALUES (42, 'Descripcion #11-2', '0', 0, 11);
INSERT INTO alternativas VALUES (43, 'Descripcion #11-3', '0', 0, 11);
INSERT INTO alternativas VALUES (44, 'Descripcion #11-4', '1', 100, 11);

-- Omitir pregunta con ID = 12 para caso de estudio

INSERT INTO alternativas VALUES (45, 'Descripcion #13-1', '1', 100, 13);
INSERT INTO alternativas VALUES (46, 'Descripcion #13-2', '0', 0, 13);
INSERT INTO alternativas VALUES (47, 'Descripcion #13-3', '0', 0, 13);
INSERT INTO alternativas VALUES (48, 'Descripcion #13-4', '0', 0, 13);

-- Solo 2 alternativas para pregunta con ID = 14 para caso de estudio
INSERT INTO alternativas VALUES (49, 'Descripcion #14-1', '0', 0, 14);
INSERT INTO alternativas VALUES (50, 'Descripcion #14-2', '1', 100, 14);

INSERT INTO alternativas VALUES (51, 'Descripcion #15-1', '1', 100, 15);
INSERT INTO alternativas VALUES (52, 'Descripcion #15-2', '0', 0, 15);
INSERT INTO alternativas VALUES (53, 'Descripcion #15-3', '0', 0, 15);
INSERT INTO alternativas VALUES (54, 'Descripcion #15-4', '0', 0, 15);

INSERT INTO alternativas VALUES (55, 'Descripcion #16-1', '0', 0, 16);
INSERT INTO alternativas VALUES (56, 'Descripcion #16-2', '0', 0, 16);
INSERT INTO alternativas VALUES (57, 'Descripcion #16-3', '0', 0, 16);
INSERT INTO alternativas VALUES (58, 'Descripcion #16-4', '1', 100, 16);

INSERT INTO alternativas VALUES (59, 'Descripcion #17-1', '0', 0, 17);
INSERT INTO alternativas VALUES (60, 'Descripcion #17-2', '1', 100, 17);
INSERT INTO alternativas VALUES (61, 'Descripcion #17-3', '0', 0, 17);
INSERT INTO alternativas VALUES (62, 'Descripcion #17-4', '0', 0, 17);

INSERT INTO alternativas VALUES (63, 'Descripcion #18-1', '1', 100, 18);
INSERT INTO alternativas VALUES (64, 'Descripcion #18-2', '0', 0, 18);
INSERT INTO alternativas VALUES (65, 'Descripcion #18-3', '0', 0, 18);
INSERT INTO alternativas VALUES (66, 'Descripcion #18-4', '0', 0, 18);

INSERT INTO alternativas VALUES (67, 'Descripcion #19-1', '0', 0, 19);
INSERT INTO alternativas VALUES (68, 'Descripcion #19-2', '0', 0, 19);
INSERT INTO alternativas VALUES (69, 'Descripcion #19-3', '0', 0, 19);
INSERT INTO alternativas VALUES (70, 'Descripcion #19-4', '1', 100, 19);

INSERT INTO alternativas VALUES (71, 'Descripcion #20-1', '0', 0, 20);
INSERT INTO alternativas VALUES (72, 'Descripcion #20-2', '1', 50, 20);
INSERT INTO alternativas VALUES (73, 'Descripcion #20-3', '0', 0, 20);
INSERT INTO alternativas VALUES (74, 'Descripcion #20-4', '0', 0, 20);
INSERT INTO alternativas VALUES (75, 'Descripcion #20-5', '1', 50, 20);
INSERT INTO alternativas VALUES (76, 'Descripcion #20-6', '0', 0, 20);

INSERT INTO alternativas VALUES (77, 'Descripcion #21-1', '0', 0, 21);
INSERT INTO alternativas VALUES (78, 'Descripcion #21-2', '0', 0, 21);
INSERT INTO alternativas VALUES (79, 'Descripcion #21-3', '1', 100, 21);

INSERT INTO alternativas VALUES (80, 'Descripcion #22-1', '0', 0, 22);
INSERT INTO alternativas VALUES (81, 'Descripcion #22-2', '1', 100, 22);
INSERT INTO alternativas VALUES (82, 'Descripcion #22-3', '0', 0, 22);

INSERT INTO alternativas VALUES (83, 'Descripcion #23-1', '1', 100, 23);
INSERT INTO alternativas VALUES (84, 'Descripcion #23-2', '0', 0, 23);
INSERT INTO alternativas VALUES (85, 'Descripcion #23-3', '0', 0, 23);

INSERT INTO alternativas VALUES (86, 'Descripcion #24-1', '1', 100, 24);
INSERT INTO alternativas VALUES (87, 'Descripcion #24-2', '0', 0, 24);
INSERT INTO alternativas VALUES (88, 'Descripcion #24-3', '0', 0, 24);

INSERT INTO alternativas VALUES (89, 'Descripcion #25-1', '0', 0, 25);
INSERT INTO alternativas VALUES (90, 'Descripcion #25-2', '0', 0, 25);
INSERT INTO alternativas VALUES (91, 'Descripcion #25-3', '1', 100, 25);

-- Curso_evaluacion
INSERT INTO curso_evaluacion VALUES (1, 1);
INSERT INTO curso_evaluacion VALUES (2, 2);

-- Respuestas
INSERT INTO respuestas VALUES (1, 1, 1, 1);
INSERT INTO respuestas VALUES (2, 1, 2, 6);
INSERT INTO respuestas VALUES (3, 1, 3, 11);
INSERT INTO respuestas VALUES (4, 1, 4, 13);
INSERT INTO respuestas VALUES (5, 1, 5, 18);
INSERT INTO respuestas VALUES (6, 1, 6, 23);
INSERT INTO respuestas VALUES (7, 1, 7, 27);
INSERT INTO respuestas VALUES (8, 1, 8, 30);
INSERT INTO respuestas VALUES (9, 1, 9, 36);
INSERT INTO respuestas VALUES (10, 1, 10, 37);

INSERT INTO respuestas VALUES (11, 2, 1, 2);
INSERT INTO respuestas VALUES (12, 2, 2, 5);
INSERT INTO respuestas VALUES (13, 2, 3, 10);
INSERT INTO respuestas VALUES (14, 2, 4, 15);
INSERT INTO respuestas VALUES (15, 2, 5, 19);
INSERT INTO respuestas VALUES (16, 2, 6, 22);
INSERT INTO respuestas VALUES (17, 2, 7, 25);
INSERT INTO respuestas VALUES (18, 2, 8, 31);
INSERT INTO respuestas VALUES (19, 2, 9, 36);
INSERT INTO respuestas VALUES (20, 2, 10, 38);

INSERT INTO respuestas VALUES (21, 3, 1, 1);
INSERT INTO respuestas VALUES (22, 3, 2, 5);
INSERT INTO respuestas VALUES (23, 3, 3, 9);
INSERT INTO respuestas VALUES (24, 3, 4, 13);
INSERT INTO respuestas VALUES (25, 3, 5, 17);
INSERT INTO respuestas VALUES (26, 3, 6, 21);
INSERT INTO respuestas VALUES (27, 3, 7, 25);
INSERT INTO respuestas VALUES (28, 3, 8, 29);
INSERT INTO respuestas VALUES (29, 3, 9, 33);
INSERT INTO respuestas VALUES (30, 3, 10, 37);

INSERT INTO respuestas VALUES (31, 4, 1, 4);
INSERT INTO respuestas VALUES (32, 4, 2, 8);
INSERT INTO respuestas VALUES (33, 4, 3, 12);
INSERT INTO respuestas VALUES (34, 4, 4, 16);
INSERT INTO respuestas VALUES (35, 4, 5, 20);
INSERT INTO respuestas VALUES (36, 4, 6, 24);
INSERT INTO respuestas VALUES (37, 4, 7, 28);
INSERT INTO respuestas VALUES (38, 4, 8, 32);
INSERT INTO respuestas VALUES (39, 4, 9, 36);
INSERT INTO respuestas VALUES (40, 4, 10, 40);

INSERT INTO respuestas VALUES (41, 5, 1, 2);
INSERT INTO respuestas VALUES (42, 5, 2, 6);
INSERT INTO respuestas VALUES (43, 5, 3, 10);
INSERT INTO respuestas VALUES (44, 5, 4, 14);
INSERT INTO respuestas VALUES (45, 5, 5, 18);
INSERT INTO respuestas VALUES (46, 5, 6, 22);
INSERT INTO respuestas VALUES (47, 5, 7, 26);
INSERT INTO respuestas VALUES (48, 5, 8, 30);
INSERT INTO respuestas VALUES (49, 5, 9, 34);
INSERT INTO respuestas VALUES (50, 5, 10, 38);

INSERT INTO respuestas VALUES (51, 6, 1, 3);
INSERT INTO respuestas VALUES (52, 6, 2, 7);
INSERT INTO respuestas VALUES (53, 6, 3, 11);
INSERT INTO respuestas VALUES (54, 6, 4, 15);
INSERT INTO respuestas VALUES (55, 6, 5, 19);
INSERT INTO respuestas VALUES (56, 6, 6, 23);
INSERT INTO respuestas VALUES (57, 6, 7, 27);
INSERT INTO respuestas VALUES (58, 6, 8, 31);
INSERT INTO respuestas VALUES (59, 6, 9, 35);
INSERT INTO respuestas VALUES (60, 6, 10, 39);

INSERT INTO respuestas VALUES (61, 7, 1, 1);
INSERT INTO respuestas VALUES (62, 7, 2, 6);
INSERT INTO respuestas VALUES (63, 7, 3, 11);
INSERT INTO respuestas VALUES (64, 7, 4, 16);
INSERT INTO respuestas VALUES (65, 7, 5, 19);
INSERT INTO respuestas VALUES (66, 7, 6, 22);
INSERT INTO respuestas VALUES (67, 7, 7, 26);
INSERT INTO respuestas VALUES (68, 7, 8, 29);
INSERT INTO respuestas VALUES (69, 7, 9, 34);
INSERT INTO respuestas VALUES (70, 7, 10, 39);

INSERT INTO respuestas VALUES (71, 8, 1, 4);
INSERT INTO respuestas VALUES (72, 8, 2, 7);
INSERT INTO respuestas VALUES (73, 8, 3, 10);
INSERT INTO respuestas VALUES (74, 8, 4, 13);
INSERT INTO respuestas VALUES (75, 8, 5, 18);
INSERT INTO respuestas VALUES (76, 8, 6, 23);
INSERT INTO respuestas VALUES (77, 8, 7, 28);
INSERT INTO respuestas VALUES (78, 8, 8, 31);
INSERT INTO respuestas VALUES (79, 8, 9, 34);
INSERT INTO respuestas VALUES (80, 8, 10, 37);

INSERT INTO respuestas VALUES (81, 9, 1, 3);
INSERT INTO respuestas VALUES (82, 9, 2, 6);
INSERT INTO respuestas VALUES (83, 9, 3, 11);
INSERT INTO respuestas VALUES (84, 9, 4, 14);
INSERT INTO respuestas VALUES (85, 9, 5, 19);
INSERT INTO respuestas VALUES (86, 9, 6, 22);
INSERT INTO respuestas VALUES (87, 9, 7, 27);
INSERT INTO respuestas VALUES (88, 9, 8, 30);
INSERT INTO respuestas VALUES (89, 9, 9, 35);
INSERT INTO respuestas VALUES (90, 9, 10, 38);

INSERT INTO respuestas VALUES (91, 10, 1, 2);
INSERT INTO respuestas VALUES (92, 10, 2, 7);
INSERT INTO respuestas VALUES (93, 10, 3, 10);
INSERT INTO respuestas VALUES (94, 10, 4, 15);
INSERT INTO respuestas VALUES (95, 10, 5, 18);
INSERT INTO respuestas VALUES (96, 10, 6, 23);
INSERT INTO respuestas VALUES (97, 10, 7, 26);
INSERT INTO respuestas VALUES (98, 10, 8, 31);
INSERT INTO respuestas VALUES (99, 10, 9, 34);
INSERT INTO respuestas VALUES (100, 10, 10, 39);

-- Respuestas Curso 2
INSERT INTO respuestas VALUES (101, 11, 11, 41);
INSERT INTO respuestas VALUES (102, 11, 13, 45);
INSERT INTO respuestas VALUES (103, 11, 14, 49);
INSERT INTO respuestas VALUES (104, 11, 15, 51);
INSERT INTO respuestas VALUES (105, 11, 16, 55);
INSERT INTO respuestas VALUES (106, 11, 17, 59);
INSERT INTO respuestas VALUES (107, 11, 18, 63);
INSERT INTO respuestas VALUES (108, 11, 19, 67);
INSERT INTO respuestas VALUES (109, 11, 20, 71);

INSERT INTO respuestas VALUES (110, 12, 11, 42);
INSERT INTO respuestas VALUES (111, 12, 13, 46);
INSERT INTO respuestas VALUES (112, 12, 14, 50);
INSERT INTO respuestas VALUES (113, 12, 15, 52);
INSERT INTO respuestas VALUES (114, 12, 16, 56);
INSERT INTO respuestas VALUES (115, 12, 17, 60);
INSERT INTO respuestas VALUES (116, 12, 18, 64);
INSERT INTO respuestas VALUES (117, 12, 19, 68);
INSERT INTO respuestas VALUES (118, 12, 20, 72);

INSERT INTO respuestas VALUES (119, 13, 11, 43);
INSERT INTO respuestas VALUES (120, 13, 13, 47);
INSERT INTO respuestas VALUES (121, 13, 14, 49);
INSERT INTO respuestas VALUES (122, 13, 15, 53);
INSERT INTO respuestas VALUES (123, 13, 16, 57);
INSERT INTO respuestas VALUES (124, 13, 17, 61);
INSERT INTO respuestas VALUES (125, 13, 18, 65);
INSERT INTO respuestas VALUES (126, 13, 19, 69);
INSERT INTO respuestas VALUES (127, 13, 20, 73);

INSERT INTO respuestas VALUES (128, 14, 11, 44);
INSERT INTO respuestas VALUES (129, 14, 13, 48);
INSERT INTO respuestas VALUES (130, 14, 14, 50);
INSERT INTO respuestas VALUES (131, 14, 15, 54);
INSERT INTO respuestas VALUES (132, 14, 16, 58);
INSERT INTO respuestas VALUES (133, 14, 17, 62);
INSERT INTO respuestas VALUES (134, 14, 18, 66);
INSERT INTO respuestas VALUES (135, 14, 19, 70);
INSERT INTO respuestas VALUES (136, 14, 20, 74);

INSERT INTO respuestas VALUES (137, 15, 11, 41);
INSERT INTO respuestas VALUES (138, 15, 13, 46);
INSERT INTO respuestas VALUES (139, 15, 14, 49);
INSERT INTO respuestas VALUES (140, 15, 15, 54);
INSERT INTO respuestas VALUES (141, 15, 16, 57);
INSERT INTO respuestas VALUES (142, 15, 17, 60);
INSERT INTO respuestas VALUES (143, 15, 18, 63);
INSERT INTO respuestas VALUES (144, 15, 19, 68);
INSERT INTO respuestas VALUES (145, 15, 20, 73);

INSERT INTO respuestas VALUES (146, 16, 11, 44);
INSERT INTO respuestas VALUES (147, 16, 13, 47);
INSERT INTO respuestas VALUES (148, 16, 14, 50);
INSERT INTO respuestas VALUES (149, 16, 15, 51);
INSERT INTO respuestas VALUES (150, 16, 16, 56);
INSERT INTO respuestas VALUES (151, 16, 17, 61);
INSERT INTO respuestas VALUES (152, 16, 18, 66);
INSERT INTO respuestas VALUES (153, 16, 19, 69);
INSERT INTO respuestas VALUES (154, 16, 20, 72);

INSERT INTO respuestas VALUES (155, 17, 11, 42);
INSERT INTO respuestas VALUES (156, 17, 13, 46);
INSERT INTO respuestas VALUES (157, 17, 14, 49);
INSERT INTO respuestas VALUES (158, 17, 15, 53);
INSERT INTO respuestas VALUES (159, 17, 16, 56);
INSERT INTO respuestas VALUES (160, 17, 17, 61);
INSERT INTO respuestas VALUES (161, 17, 18, 64);
INSERT INTO respuestas VALUES (162, 17, 19, 68);
INSERT INTO respuestas VALUES (163, 17, 20, 75);

INSERT INTO respuestas VALUES (164, 18, 11, 44);
INSERT INTO respuestas VALUES (165, 18, 13, 45);
INSERT INTO respuestas VALUES (166, 18, 14, 50);
INSERT INTO respuestas VALUES (167, 18, 15, 51);
INSERT INTO respuestas VALUES (168, 18, 16, 56);
INSERT INTO respuestas VALUES (169, 18, 17, 59);
INSERT INTO respuestas VALUES (170, 18, 18, 63);
INSERT INTO respuestas VALUES (171, 18, 19, 70);
INSERT INTO respuestas VALUES (172, 18, 20, 76);

INSERT INTO respuestas VALUES (173, 19, 11, 43);
INSERT INTO respuestas VALUES (174, 19, 13, 46);
INSERT INTO respuestas VALUES (175, 19, 14, 49);
INSERT INTO respuestas VALUES (176, 19, 15, 52);
INSERT INTO respuestas VALUES (177, 19, 16, 57);
INSERT INTO respuestas VALUES (178, 19, 17, 60);
INSERT INTO respuestas VALUES (179, 19, 18, 65);
INSERT INTO respuestas VALUES (180, 19, 19, 68);
INSERT INTO respuestas VALUES (181, 19, 20, 73);

INSERT INTO respuestas VALUES (182, 20, 11, 42);
INSERT INTO respuestas VALUES (183, 20, 13, 47);
INSERT INTO respuestas VALUES (184, 20, 14, 50);
INSERT INTO respuestas VALUES (185, 20, 15, 53);
INSERT INTO respuestas VALUES (186, 20, 16, 56);
INSERT INTO respuestas VALUES (187, 20, 17, 61);
INSERT INTO respuestas VALUES (188, 20, 18, 64);
INSERT INTO respuestas VALUES (189, 20, 19, 69);
INSERT INTO respuestas VALUES (190, 20, 20, 76);