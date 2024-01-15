use TestDB;

GO
-- Insertar registros en la tabla Area
INSERT INTO Area (nombre_area) VALUES ('Idiomas');
INSERT INTO Area (nombre_area) VALUES ('Cursos');
INSERT INTO Area (nombre_area) VALUES ('Administrativo');


-- Insertar usuarios de docentes con nombres latinoamericanos
INSERT INTO Usuario (nombre_usuario, genero, edad, estado_civil, nivel_academico, profesion, antiguedad, id_area)
VALUES
    ('Isabel García', 'Femenino', 35, 'Soltero/a', 'Doctorado', 'Matemáticas', 8, 1),     -- Asociado al área con id_area = 1
    ('Juan López', 'Masculino', 40, 'Casado/a', 'Maestría', 'Física', 12, 2),            -- Asociado al área con id_area = 2
    ('Liliana Martínez', 'Femenino', 28, 'Soltero/a', 'Licenciatura', 'Electrica', 5, 3),   -- Asociado al área con id_area = 3
    ('Carlos Rodríguez', 'Masculino', 45, 'Casado/a', 'Doctorado', 'Software', 15, 1),    -- Asociado al área con id_area = 4
    ('Gabriela Morales', 'Femenino', 32, 'Soltero/a', 'Maestría', 'Mecánica', 10, 2);     -- Asociado al área con id_area = 5



-- Insertar registros en la tabla Cuestionario con horas y minutos
INSERT INTO Cuestionario (fecha_inicio, fecha_fin, id_usuario)
VALUES
    ('2024-01-15 08:00:00', '2024-01-20 17:30:00', 1), -- Cuestionario 1 asociado al usuario con id_usuario = 1
    ('2024-02-01 09:15:00', '2024-02-10 16:45:00', 2), -- Cuestionario 2 asociado al usuario con id_usuario = 2
    ('2024-03-05 10:30:00', '2024-03-15 14:00:00', 3), -- Cuestionario 3 asociado al usuario con id_usuario = 3
    ('2024-04-10 12:45:00', '2024-04-20 18:20:00', 4), -- Cuestionario 4 asociado al usuario con id_usuario = 4
    ('2024-05-01 14:00:00', '2024-05-10 15:45:00', 5); -- Cuestionario 5 asociado al usuario con id_usuario = 5

select * from Cuestionario;

INSERT INTO Categoria (nombre_categoria)
VALUES
    ('Individuales'),
    ('Organizacionales'),
    ('Desempeño'),
    ('Eticos');



-- individuales 1, organizacionales 2, desempeño 3, eticos 4
INSERT INTO Pregunta (descripcion, id_categoria)
VALUES
	('Tengo claras mis metas y objetivos, cuando tomo una decisión.', 1),
    ('Me siento responsable de las decisiones que tomo.', 1),
    ('Cuando reconozco que existe un problema, identifico las alternativas que existen para resolverlo.', 1),
    ('Me siento reconocido por parte de la organización cuando realizo un trabajo bien hecho.', 1),
    ('Cuando tengo que tomar una decisión, me planteo cuáles son los posibles riesgos y beneficios que acompañan a cada alternativa.', 1),
    ('En mi organización existe una cultura de innovación.', 2),
    ('Mi organización cumple el convenio, las disposiciones y leyes laborales.', 2),
    ('Puedo contar con mis compañeros de trabajo cuando los necesito.', 2),
    ('Para un cambio dentro de la organización, existen líderes que pudieran ser agentes de cambio.', 2),
    ('Se ha definido una política de cooperación en la organización.', 2),
	('Se dispone de un sistema para el seguimiento y control de las actividades.', 3),
	('Recibo retroalimentación/ feedback claro y periódico sobre la manera en que me desempeño.', 3),
	('Puedo contar con mis compañeros de trabajo cuando los necesito.', 3),
	('Mi trabajo me da la posibilidad de aprender nuevas habilidades y desarrollar nuevas competencias.', 3),
	('Mi organización se preocupa por mi bienestar personal y emocional.', 3),
	('Recibo un trato igual al de mi compañera/o independientemente de la posición que tengo en la organización.', 4),
	('La administración de nuestra organización muestra interés por las personas, por sus problemas e inquietudes.', 4),
	('La organización dispone de suficientes incentivos por el cumplimiento de objetivos o del trabajo bien hecho.', 4),
	('Me siento reconocido por parte de la organización cuando realizo un trabajo bien hecho.', 4),
	('Cada empleado se considera factor clave para el éxito de la Organización.', 4);


-- Insertar respuestas en la tabla Respuesta con patrón de id_cuestionario (2, 3, 4, 5, 6)
INSERT INTO Respuesta (valor, numero_clics, tiempo_respuesta, id_pregunta, id_cuestionario)
VALUES
    ('3', 10, '00:01:30', 1, 1),
    ('2', 8, '00:01:45', 2, 2),
    ('1', 12, '00:02:00', 3, 3),
    ('0', 15, '00:02:15', 4, 4),
    ('-1', 5, '00:02:30', 5, 5),
    ('3', 7, '00:01:20', 6, 1),
    ('2', 9, '00:01:35', 7, 2),
    ('1', 11, '00:01:50', 8, 3),
    ('0', 14, '00:02:05', 9, 4),
    ('-1', 6, '00:02:20', 10, 5),
    ('3', 8, '00:01:40', 11, 1),
    ('2', 10, '00:01:55', 12, 2),
    ('1', 12, '00:02:10', 13, 3),
    ('0', 13, '00:02:25', 14, 4),
    ('-1', 4, '00:02:40', 15, 5),
    ('3', 9, '00:01:50', 16, 1),
    ('2', 11, '00:02:05', 17, 2),
    ('1', 13, '00:02:20', 18, 3),
    ('0', 14, '00:02:35', 19, 4),
    ('-1', 5, '00:02:50', 20, 5);