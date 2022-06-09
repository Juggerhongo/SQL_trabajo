SELECT ID_PAIS FROM PAISES WHERE NOMBRE = 'MEXICO';

SELECT NOMBRE,FEC_NAC FROM PERSONAS WHERE DOCUMENTO = 'P-V5671';


SELECT ID_materia FROM materias WHERE NOMBRE = 'APLICACIONES PARA DISPOSITIVOS MÓVILES';

SELECT NOMBRE FROM MATERIAS;

SELECT paises.nombre AS PAIS, personas.nombre, personas.apellido, personas.documento, personas.fec_nac,personas.correo, personas.telefono
FROM personas
LEFT OUTER JOIN PAISES ON paises.id_pais=personas.id_pais;

INSERT INTO personas (id_persona,documento,nombre,apellido,fec_nac,correo,telefono,id_pais)
VALUES (137,'P-AO123654','Julio','Prado Diaz','10/JAN/1970','jprado@gmail.com',94357435,14);

INSERT INTO paises (id_pais,nombre)
VALUES (14,'COLOMBIA');
INSERT INTO docentes(id_docente,id_persona,fec_ingreso,fec_egreso,fec_registro)
VALUES (1,137,'22/MAR/2016',null,'12/03/2016');
INSERT INTO materias (id_materia,nombre)
VALUES (4,'infraestructura ');
INSERT INTO cursos (id_curso,id_docente,id_materia,fec_inicio,fec_fin,modalidad)
VALUES (27,1,4,'23/11/2015','23/02/2016','online');

SELECT docentes.fec_ingreso AS DOCENTE_INGRESO,personas.nombre,personas.apellido,personas.documento,personas.correo,paises.nombre AS PAIS FROM docentes
LEFT OUTER JOIN personas ON docentes.id_persona=personas.id_persona
LEFT OUTER JOIN paises ON personas.id_pais=paises.id_pais;

SELECT estudiantes.fec_registro AS ESTUDIANTE_REGISTRO, personas.nombre, personas.apellido,personas.documento, personas.correo,paises.nombre AS PAIS
FROM estudiantes
LEFT OUTER JOIN personas ON personas.id_persona=estudiantes.id_persona 
LEFT OUTER JOIN paises ON personas.id_pais=paises.id_pais;

SELECT materias.nombre AS CURSO, cursos.fec_inicio AS INICIO, personas.nombre AS DOCENTE_NOMBRE, personas.apellido AS DOCENTE_APELLIDO, cursos.modalidad
FROM cursos
LEFT OUTER JOIN materias ON materias.id_materia = cursos.id_materia
LEFT OUTER JOIN docentes ON cursos.id_docente=docentes.id_docente
LEFT OUTER JOIN personas ON docentes.id_persona= personas.id_persona;
