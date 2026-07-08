/*1.- Incidencias con mayor al promedio de prioridad*/
SELECT R.id_reporte, R.titulo, R.descripcion, R.fecha_reporte, P.nivel_prioridad
FROM Reporte R
INNER JOIN Prioridad P
  ON R.id_prioridad = P.id_prioridad
WHERE R.id_prioridad > (
  SELECT AVG(id_prioridad)
  FROM Reporte
)
GO

/*2.- Distritos con más reportes que el promedio*/
SELECT
  D.nombre_distrito,
  COUNT(R.id_reporte) AS total_reportes
FROM Distrito D
INNER JOIN Reporte R
  ON D.id_distrito = R.id_distrito
GROUP BY D.nombre_distrito
HAVING COUNT(R.id_reporte) > (
  SELECT AVG(total_por_distrito)
  FROM (
    SELECT COUNT(*) AS total_por_distrito
    FROM Reporte
    GROUP BY id_distrito
  ) AS promedios
)
GO

/*3.- Reportes sin asignación de responsable*/
SELECT
  R.id_reporte,
  R.titulo,
  R.fecha_reporte
FROM Reporte R
WHERE R.id_reporte NOT IN (
  SELECT id_reporte
  FROM Asignacion_Reporte
)
GO

/*4.- Trabajadores municipales con más carga que el promedio*/
SELECT
  U.id_usuario,
  U.nombre,
  COUNT(A.id_asignacion) AS total_asignaciones
FROM Usuario U
INNER JOIN Asignacion_Reporte A
  ON U.id_usuario = A.id_usuario
GROUP BY U.id_usuario, U.nombre
HAVING COUNT(A.id_asignacion) > (
  SELECT AVG(carga)
  FROM (
    SELECT COUNT(*) AS carga
    FROM Asignacion_Reporte
    GROUP BY id_usuario
  ) AS promedio_carga
)
GO

/*5.- Reportes con más comentarios que el promedio*/
SELECT
  R.id_reporte,
  R.titulo
FROM Reporte R
WHERE (
  SELECT COUNT(*)
  FROM Comentario C
  WHERE C.id_reporte = R.id_reporte
) > (
  SELECT AVG(total_comentarios)
  FROM (
    SELECT COUNT(*) AS total_comentarios
    FROM Comentario
    GROUP BY id_reporte
  ) AS promedio_comentarios
)
GO

/*6.- bandeja de control para ver rápidamente la información principal de cada reporte*/
CREATE VIEW VW_Bandeja_Operativa_Reportes
AS
SELECT
  R.id_reporte,
  R.titulo,
  R.fecha_reporte,
  U.nombre AS ciudadano,
  C.nombre_categoria,
  E.nombre_estado,
  P.nivel_prioridad,
  D.nombre_distrito,
  R.referencia_ubicacion
FROM Reporte R
INNER JOIN Usuario U
  ON R.id_usuario = U.id_usuario
INNER JOIN Categoria_Reporte C
  ON R.id_categoria = C.id_categoria
INNER JOIN Estado_Reporte E
  ON R.id_estado = E.id_estado
INNER JOIN Prioridad P
  ON R.id_prioridad = P.id_prioridad
INNER JOIN Distrito D
  ON R.id_distrito = D.id_distrito
GO

/*7.- Resume cuántos reportes tiene asignados cada trabajador*/
CREATE VIEW VW_Carga_Trabajadores
AS
SELECT
  U.id_usuario,
  U.nombre AS trabajador_municipal,
  COUNT(A.id_asignacion) AS total_asignaciones
FROM Usuario U
INNER JOIN Asignacion_Reporte A
  ON U.id_usuario = A.id_usuario
GROUP BY U.id_usuario, U.nombre
GO

/*8.- Permite saber qué tipo de problema ocurre más en cada distrito*/
CREATE VIEW VW_Incidencias_Distrito_Categoria
AS
SELECT
  D.nombre_distrito,
  C.nombre_categoria,
  COUNT(R.id_reporte) AS total_reportes
FROM Reporte R
INNER JOIN Distrito D
  ON R.id_distrito = D.id_distrito
INNER JOIN Categoria_Reporte C
  ON R.id_categoria = C.id_categoria
GROUP BY D.nombre_distrito, C.nombre_categoria
GO

/* 9.- Muestra qué reportes ya tienen responsable y en qué estado están*/
CREATE VIEW VW_Seguimiento_Reportes_Asignados
AS
SELECT
  R.id_reporte,
  R.titulo,
  U.nombre AS responsable,
  E.nombre_estado,
  A.fecha_asignacion,
  A.observacion_asignacion
FROM Asignacion_Reporte A
INNER JOIN Reporte R
  ON A.id_reporte = R.id_reporte
INNER JOIN Usuario U
  ON A.id_usuario = U.id_usuario
INNER JOIN Estado_Reporte E
  ON R.id_estado = E.id_estado
GO

/*10.- Devuelve cuántos reportes existen en un distrito*/
CREATE FUNCTION FN_ContarReportesPorDistrito (@IdDistrito INT)
RETURNS INT
AS
BEGIN
  DECLARE @Total INT

  SELECT @Total = COUNT(*)
  FROM Reporte
  WHERE id_distrito = @IdDistrito

  RETURN @Total
END
GO

/*11.- Cuenta cuántos reportes tiene asignados un trabajador*/
CREATE FUNCTION FN_ContarAsignacionesPorTrabajador (@IdUsuario INT)
RETURNS INT
AS
BEGIN
  DECLARE @Total INT

  SELECT @Total = COUNT(*)
  FROM Asignacion_Reporte
  WHERE id_usuario = @IdUsuario

  RETURN @Total
END
GO

/*12.- Lista reportes no resueltos de un distrito específico*/
CREATE FUNCTION FN_ReportesPendientesPorDistrito (@IdDistrito INT)
RETURNS TABLE
AS
RETURN
(
  SELECT
    R.id_reporte,
    R.titulo,
    R.fecha_reporte,
    E.nombre_estado,
    P.nivel_prioridad
  FROM Reporte R
  INNER JOIN Estado_Reporte E
    ON R.id_estado = E.id_estado
  INNER JOIN Prioridad P
    ON R.id_prioridad = P.id_prioridad
  WHERE R.id_distrito = @IdDistrito
    AND E.nombre_estado NOT IN ('Resuelto', 'Cerrado')
)
GO

/*13.- Muestra reportes pendientes ordenados desde los más urgentes*/
CREATE PROCEDURE SP_ListarReportesPendientesPorPrioridad
AS
BEGIN
  SELECT
    R.id_reporte,
    R.titulo,
    R.fecha_reporte,
    P.nivel_prioridad,
    E.nombre_estado,
    D.nombre_distrito
  FROM Reporte R
  INNER JOIN Prioridad P
    ON R.id_prioridad = P.id_prioridad
  INNER JOIN Estado_Reporte E
    ON R.id_estado = E.id_estado
  INNER JOIN Distrito D
    ON R.id_distrito = D.id_distrito
  WHERE E.nombre_estado NOT IN ('Resuelto', 'Cerrado')
  ORDER BY R.id_prioridad DESC, R.fecha_reporte ASC
END
GO

/*14.- Muestra el número de asignaciones de cada trabajador.*/
CREATE PROCEDURE SP_CargaTrabajoMunicipal
AS
BEGIN
  SELECT
    U.id_usuario,
    U.nombre AS trabajador,
    COUNT(A.id_asignacion) AS total_asignaciones
  FROM Usuario U
  INNER JOIN Asignacion_Reporte A
    ON U.id_usuario = A.id_usuario
  GROUP BY U.id_usuario, U.nombre
  ORDER BY total_asignaciones DESC
END
GO

/*15.- Identifica distritos con mayor número de incidencias*/
CREATE PROCEDURE SP_ZonasCriticas
AS
BEGIN
  SELECT
    D.nombre_distrito,
    COUNT(R.id_reporte) AS total_reportes
  FROM Distrito D
  INNER JOIN Reporte R
    ON D.id_distrito = R.id_distrito
  GROUP BY D.nombre_distrito
  ORDER BY total_reportes DESC
END
GO

