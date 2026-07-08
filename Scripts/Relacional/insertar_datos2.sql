/*Insercion de 10 usuarios*/
INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Carlos Bazan', 'carlos.bazan@cityalert.pe', 'ClaveSegura001', '987451220', '2026-05-01', 1)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Jack Flores', 'jack.flores@cityalert.pe', 'ClaveSegura002', '986214578', '2026-05-02', 1)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Rivaldo Huiza', 'rivaldo.huiza@cityalert.pe', 'ClaveSegura003', '985447821', '2026-05-03', 1)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Kenyi Soto', 'kenyi.soto@cityalert.pe', 'ClaveSegura004', '984778532', '2026-05-04', 1)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Kevin Salvador', 'kevin.salvador@cityalert.pe', 'ClaveSegura005', '983661245', '2026-05-05', 1)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Juan Elias Villafuerte', 'juan.villafuerte@munilima.gob.pe', 'ClaveSegura006', '982774411', '2026-05-06', 2)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Mariela Torres', 'mariela.torres@munisurco.gob.pe', 'ClaveSegura007', '981225634', '2026-05-07', 2)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Luis Ramirez', 'luis.ramirez@munives.gob.pe', 'ClaveSegura008', '980114729', '2026-05-08', 2)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Andrea Paredes', 'andrea.paredes@munisjm.gob.pe', 'ClaveSegura009', '989331245', '2026-05-09', 2)
GO

INSERT INTO Usuario (nombre, correo, contrasena, telefono, fecha_registro, id_rol)
VALUES ('Admin CityAlert', 'admin@cityalert.pe', 'ClaveSegura010', '999000111', '2026-05-10', 3)
GO



/*Insercion de reportes*/
INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Basura en parque central', 'Se observa acumulacion de basura en el parque central desde hace varios dias', '2026-05-11 08:30:00', 'Frente a la losa deportiva del parque principal', 1, 1, 1, 4, 1)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Bache en avenida principal', 'Existe un bache grande que dificulta el paso de vehiculos y motos', '2026-05-11 09:15:00', 'Cruce de la avenida principal con calle Los Olivos', 2, 2, 2, 6, 2)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Poste sin luz', 'El alumbrado publico no funciona durante la noche y genera inseguridad', '2026-05-11 19:40:00', 'A media cuadra del mercado San Gabriel', 3, 3, 3, 6, 3)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Semaforo averiado', 'El semaforo no cambia de luz y ocasiona desorden vehicular', '2026-05-12 07:50:00', 'Interseccion de Av. Proceres con Av. Central', 4, 4, 4, 8, 4)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Fuga de agua en vereda', 'Hay una fuga constante de agua que moja toda la vereda', '2026-05-12 10:10:00', 'Frente al colegio Santa Maria', 5, 5, 5, 7, 5)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Ruido molesto de local nocturno', 'Un establecimiento genera ruido excesivo hasta altas horas de la noche', '2026-05-12 23:20:00', 'A una cuadra del parque del distrito', 1, 6, 6, 5, 6)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Comercio informal en via publica', 'Varios comerciantes ocupan la via publica impidiendo el libre transito', '2026-05-13 11:00:00', 'Al costado del mercado municipal', 2, 7, 7, 5, 7)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Parque descuidado', 'El area verde del parque esta descuidada y los juegos estan dañados', '2026-05-13 15:45:00', 'Parque Los Jardines, zona infantil', 3, 8, 8, 3, 8)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Congestion vehicular constante', 'Se reporta congestion vehicular en horas punta todos los dias', '2026-05-14 08:00:00', 'Subida del Cerro Centinela', 4, 9, 9, 6, 2)
GO

INSERT INTO Reporte (titulo, descripcion, fecha_reporte, referencia_ubicacion, id_usuario, id_categoria, id_estado, id_prioridad, id_distrito)
VALUES ('Falta de patrullaje nocturno', 'No se observa patrullaje en las noches y aumentan los hechos delictivos', '2026-05-14 21:30:00', 'Alrededores del parque industrial', 5, 10, 10, 8, 1)
GO



/*Insercion de Comentarios*/
INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('Adjunto mas detalles porque el problema empeora por las noches', '2026-05-11 08:45:00', 1, 1)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('Se verificara la zona durante la jornada de la mañana', '2026-05-11 10:00:00', 2, 6)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('El poste lleva varios dias apagado y la calle queda oscura', '2026-05-11 20:00:00', 3, 3)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('Se ha derivado el caso al area de transporte urbano', '2026-05-12 08:20:00', 4, 7)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('La fuga de agua sigue activa y ya afecta a los peatones', '2026-05-12 10:30:00', 5, 5)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('El caso fue atendido y se realizo una inspeccion preliminar', '2026-05-13 09:00:00', 6, 8)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('Los comerciantes vuelven cada mañana pese a los operativos', '2026-05-13 11:30:00', 7, 2)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('Se requiere mantenimiento de areas verdes y juegos infantiles', '2026-05-13 16:15:00', 8, 9)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('El trafico es peor entre las 7 y 9 de la mañana', '2026-05-14 08:10:00', 9, 4)
GO

INSERT INTO Comentario (contenido, fecha_cometario, id_reporte, id_usuario)
VALUES ('Solicito mayor presencia de serenazgo en la zona', '2026-05-14 21:45:00', 10, 5)
GO



/*Insercion de Notificaciones*/
INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte ha sido registrado correctamente', '2026-05-11 08:31:00', 1, 'Registro', 1)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte paso a estado En revision', '2026-05-11 09:20:00', 0, 'Actualizacion', 2)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte fue asignado a personal municipal', '2026-05-11 19:50:00', 0, 'Asignacion', 3)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte esta siendo atendido por el area correspondiente', '2026-05-12 08:00:00', 0, 'Seguimiento', 4)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte fue marcado como resuelto', '2026-05-12 12:30:00', 1, 'Cierre', 5)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Se registro un nuevo comentario en tu reporte', '2026-05-13 09:05:00', 0, 'Comentario', 1)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte requiere informacion adicional', '2026-05-13 11:40:00', 0, 'Observacion', 2)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('El estado de tu reporte cambio a Rechazado', '2026-05-13 16:20:00', 0, 'Actualizacion', 3)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte fue reabierto para nueva evaluacion', '2026-05-14 08:15:00', 0, 'Reapertura', 4)
GO

INSERT INTO Notificacion (mensaje, fecha_envio, leido, tipo_notificacion, id_usuario)
VALUES ('Tu reporte fue derivado a otra area responsable', '2026-05-14 21:50:00', 0, 'Derivacion', 5)
GO


/*Insercion de asignacion de reportes*/
INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-11 10:30:00', 'Asignado para evaluacion en campo', 1, 6)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-11 11:00:00', 'Asignado al equipo de infraestructura vial', 2, 7)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-11 20:15:00', 'Asignado al area de alumbrado publico', 3, 8)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-12 08:30:00', 'Asignado al area de transito y transporte', 4, 9)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-12 10:45:00', 'Asignado al equipo de mantenimiento sanitario', 5, 6)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-13 09:20:00', 'Asignado para inspeccion de ruido urbano', 6, 7)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-13 11:50:00', 'Asignado a fiscalizacion y control municipal', 7, 8)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-13 16:30:00', 'Asignado a mantenimiento de espacios publicos', 8, 9)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-14 08:25:00', 'Asignado a evaluacion de flujo vehicular', 9, 7)
GO

INSERT INTO Asignacion_Reporte (fecha_asignacion, observacion_asignacion, id_reporte, id_usuario)
VALUES ('2026-05-14 22:00:00', 'Asignado a seguridad ciudadana', 10, 6)
GO



/*Insercion de Historial Estados de reportes*/
INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-11 08:31:00', 'Reporte creado por ciudadano', 1, 1, 1)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-11 09:20:00', 'Reporte en revision por personal municipal', 2, 2, 6)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-11 19:50:00', 'Reporte asignado a responsable municipal', 3, 3, 7)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-12 08:00:00', 'Reporte en proceso de atencion', 4, 4, 8)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-12 12:00:00', 'Incidencia resuelta satisfactoriamente', 5, 5, 9)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-13 09:10:00', 'Caso cerrado luego de verificacion', 6, 6, 6)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-13 11:45:00', 'Se observo falta de evidencia complementaria', 7, 7, 7)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-13 16:25:00', 'Reporte rechazado por datos insuficientes', 8, 8, 8)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-14 08:12:00', 'El caso fue reabierto por nueva evidencia enviada', 9, 9, 9)
GO

INSERT INTO Historial_Estado (fecha_cambio, observacion_cambio, id_reporte, id_estado, id_usuario)
VALUES ('2026-05-14 21:55:00', 'Reporte derivado a otra unidad competente', 10, 10, 6)
GO



/*Insercion de Evidencias*/
INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-11 08:32:00', 1, 1)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-11 09:16:00', 2, 1)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-11 19:42:00', 3, 6)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-12 07:52:00', 4, 2)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-12 10:12:00', 5, 7)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-12 23:22:00', 6, 3)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-13 11:03:00', 7, 4)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-13 15:47:00', 8, 5)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-14 08:02:00', 9, 8)
GO

INSERT INTO Evidencia (fecha_subida, id_reporte, id_tipo_evidencia)
VALUES ('2026-05-14 21:32:00', 10, 9)
GO


