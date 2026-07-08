/*Insercion de roles*/

INSERT INTO Rol (nombre_rol, descripcion)
VALUES ('Ciudadano', 'Usuario que registra reportes urbanos en la plataforma')
GO

INSERT INTO Rol (nombre_rol, descripcion)
VALUES ('Personal Municipal', 'Usuario encargado de gestionar y atender reportes urbanos')
GO

INSERT INTO Rol (nombre_rol, descripcion)
VALUES ('Administrador', 'Usuario con control general del sistema y supervisión de procesos')
GO

/*Insercion de categoria de reportes*/
INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Basura acumulada', 'Reporte relacionado con acumulación de residuos en espacios públicos')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Pistas deterioradas', 'Reporte relacionado con baches, huecos o daños en la vía pública')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Alumbrado público dañado', 'Reporte relacionado con postes o luminarias que no funcionan')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Semáforo malogrado', 'Reporte relacionado con fallas en el sistema de semáforos')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Fuga de agua', 'Reporte relacionado con filtraciones o desperdicio de agua en la vía pública')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Ruido excesivo', 'Reporte relacionado con contaminación sonora en zonas urbanas')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Comercio informal', 'Reporte relacionado con actividad comercial no autorizada en espacios públicos')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Espacio público descuidado', 'Reporte relacionado con parques o áreas comunes en mal estado')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Congestionamiento vehicular', 'Reporte relacionado con tráfico excesivo o problemas de circulación')
GO

INSERT INTO Categoria_Reporte (nombre_categoria, descripcion)
VALUES ('Falta de patrullaje', 'Reporte relacionado con ausencia de vigilancia o seguridad ciudadana')
GO

/*Insercion de estado de reportes*/
INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Registrado', 'El reporte ha sido creado por el ciudadano')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('En revisión', 'El reporte está siendo evaluado por personal municipal')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Asignado', 'El reporte fue asignado a un responsable')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('En proceso', 'El reporte se encuentra en atención activa')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Resuelto', 'La incidencia reportada ya fue solucionada')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Cerrado', 'El reporte ha sido finalizado administrativamente')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Observado', 'El reporte requiere información adicional o corrección')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Rechazado', 'El reporte no procede por información inválida o insuficiente')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Reabierto', 'El reporte fue abierto nuevamente tras una nueva observación')
GO

INSERT INTO Estado_Reporte (nombre_estado, descripcion)
VALUES ('Derivado', 'El reporte fue transferido a otra área o unidad responsable')
GO

/*Insercion de prioridades*/
INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Muy baja', 'Incidencia menor sin impacto inmediato')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Baja', 'Incidencia de atención no urgente')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Media baja', 'Incidencia con impacto moderado y atención programable')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Media', 'Incidencia que requiere atención dentro de plazos regulares')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Media alta', 'Incidencia importante con impacto visible en la comunidad')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Alta', 'Incidencia que requiere atención rápida')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Muy alta', 'Incidencia seria con afectación considerable')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Urgente', 'Incidencia que debe ser atendida de inmediato')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Crítica', 'Incidencia de alto riesgo para ciudadanos o infraestructura')
GO

INSERT INTO Prioridad (nivel_prioridad, descripcion)
VALUES ('Emergencia', 'Incidencia extrema que requiere respuesta inmediata y prioritaria')
GO

/*Insercion de distritos*/
INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Villa El Salvador', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Santiago de Surco', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Cercado de Lima', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('San Juan de Miraflores', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Villa María del Triunfo', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('La Molina', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('San Borja', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Miraflores', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Barranco', 'Lima')
GO

INSERT INTO Distrito (nombre_distrito, provincia)
VALUES ('Chorrillos', 'Lima')
GO

/*Insercion de tipos de evidencia*/
INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Imagen', 'Fotografía adjunta como evidencia del reporte')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Video', 'Video adjunto como evidencia del reporte')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Audio', 'Archivo de audio relacionado con la incidencia reportada')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Documento PDF', 'Documento en formato PDF como sustento del reporte')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Captura de pantalla', 'Imagen capturada desde dispositivo como evidencia')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Fotografía nocturna', 'Imagen tomada durante la noche para sustentar la incidencia')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Fotografía diurna', 'Imagen tomada durante el día para sustentar la incidencia')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Clip corto', 'Video breve del lugar de la incidencia')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Evidencia múltiple', 'Conjunto de archivos adjuntos asociados a un mismo reporte')
GO

INSERT INTO Tipo_evidencia (nombre_tipo, descripcion)
VALUES ('Otro archivo digital', 'Cualquier otro archivo digital usado como sustento')
GO
