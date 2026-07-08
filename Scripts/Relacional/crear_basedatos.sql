CREATE DATABASE CityAlert
GO

USE CityAlert
GO

CREATE TABLE Asignacion_Reporte
(
  id_asignacion          int          NOT NULL IDENTITY(1,1),
  fecha_asignacion       datetime     NOT NULL,
  observacion_asignacion varchar(255),
  id_reporte             int          NOT NULL,
  id_usuario             int          NOT NULL,
  CONSTRAINT PK_Asignacion_Reporte PRIMARY KEY (id_asignacion)
)
GO

CREATE TABLE Categoria_Reporte
(
  id_categoria     int          NOT NULL IDENTITY(1,1),
  nombre_categoria varchar(100) NOT NULL,
  descripcion      varchar(255),
  CONSTRAINT PK_Categoria_Reporte PRIMARY KEY (id_categoria)
)
GO

CREATE TABLE Comentario
(
  id_comentario   int      NOT NULL IDENTITY(1,1),
  contenido       text     NOT NULL,
  fecha_cometario datetime NOT NULL,
  id_reporte      int      NOT NULL,
  id_usuario      int      NOT NULL,
  CONSTRAINT PK_Comentario PRIMARY KEY (id_comentario)
)
GO

CREATE TABLE Distrito
(
  id_distrito     int          NOT NULL IDENTITY(1,1),
  nombre_distrito varchar(100) NOT NULL,
  provincia       varchar(100) NOT NULL,
  CONSTRAINT PK_Distrito PRIMARY KEY (id_distrito)
)
GO

CREATE TABLE Estado_Reporte
(
  id_estado     int         NOT NULL IDENTITY(1,1),
  nombre_estado varchar(50) NOT NULL,
  descripcion   text,
  CONSTRAINT PK_Estado_Reporte PRIMARY KEY (id_estado)
)
GO

CREATE TABLE Evidencia
(
  id_evidencia      int      NOT NULL IDENTITY(1,1),
  fecha_subida      datetime NOT NULL,
  id_reporte        int      NOT NULL,
  id_tipo_evidencia int      NOT NULL,
  CONSTRAINT PK_Evidencia PRIMARY KEY (id_evidencia)
)
GO

CREATE TABLE Historial_Estado
(
  id_historial       int          NOT NULL IDENTITY(1,1),
  fecha_cambio       datetime     NOT NULL,
  observacion_cambio varchar(255),
  id_reporte         int          NOT NULL,
  id_estado          int          NOT NULL,
  id_usuario         int          NOT NULL,
  CONSTRAINT PK_Historial_Estado PRIMARY KEY (id_historial)
)
GO

CREATE TABLE Notificacion
(
  id_notificacion   int         NOT NULL IDENTITY(1,1),
  mensaje           text        NOT NULL,
  fecha_envio       datetime    NOT NULL,
  leido             bit         NOT NULL,
  tipo_notificacion varchar(50) NOT NULL,
  id_usuario        int         NOT NULL,
  CONSTRAINT PK_Notificacion PRIMARY KEY (id_notificacion)
)
GO

CREATE TABLE Prioridad
(
  id_prioridad    int          NOT NULL IDENTITY(1,1),
  nivel_prioridad varchar(50)  NOT NULL,
  descripcion     varchar(255),
  CONSTRAINT PK_Prioridad PRIMARY KEY (id_prioridad)
)
GO

CREATE TABLE Reporte
(
  id_reporte           int          NOT NULL IDENTITY(1,1),
  titulo               varchar(150) NOT NULL,
  descripcion          text         NOT NULL,
  fecha_reporte        datetime     NOT NULL,
  referencia_ubicacion varchar(250),
  id_usuario           int          NOT NULL,
  id_categoria         int          NOT NULL,
  id_estado            int          NOT NULL,
  id_prioridad         int          NOT NULL,
  id_distrito          int          NOT NULL,
  CONSTRAINT PK_Reporte PRIMARY KEY (id_reporte)
)
GO

CREATE TABLE Rol
(
  id_rol      int          NOT NULL IDENTITY(1,1),
  nombre_rol  varchar(50)  NOT NULL,
  descripcion varchar(100),
  CONSTRAINT PK_Rol PRIMARY KEY (id_rol)
)
GO

CREATE TABLE Tipo_evidencia
(
  id_tipo_evidencia int          NOT NULL IDENTITY(1,1),
  nombre_tipo       varchar(100) NOT NULL,
  descripcion       varchar(100),
  CONSTRAINT PK_Tipo_evidencia PRIMARY KEY (id_tipo_evidencia)
)
GO

CREATE TABLE Usuario
(
  id_usuario     int          NOT NULL IDENTITY(1,1),
  nombre         varchar(100) NOT NULL,
  correo         varchar(100) NOT NULL,
  contrasena     varchar(255) NOT NULL,
  telefono       varchar(20),
  fecha_registro date         NOT NULL,
  id_rol         int          NOT NULL,
  CONSTRAINT PK_Usuario PRIMARY KEY (id_usuario)
)
GO

ALTER TABLE Usuario
  ADD CONSTRAINT UQ_correo UNIQUE (correo)
GO

ALTER TABLE Usuario
  ADD CONSTRAINT UQ_contrasena UNIQUE (contrasena)
GO

ALTER TABLE Usuario
  ADD CONSTRAINT FK_Rol_TO_Usuario
    FOREIGN KEY (id_rol)
    REFERENCES Rol (id_rol)
GO

ALTER TABLE Reporte
  ADD CONSTRAINT FK_Usuario_TO_Reporte
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario (id_usuario)
GO

ALTER TABLE Reporte
  ADD CONSTRAINT FK_Categoria_Reporte_TO_Reporte
    FOREIGN KEY (id_categoria)
    REFERENCES Categoria_Reporte (id_categoria)
GO

ALTER TABLE Reporte
  ADD CONSTRAINT FK_Estado_Reporte_TO_Reporte
    FOREIGN KEY (id_estado)
    REFERENCES Estado_Reporte (id_estado)
GO

ALTER TABLE Reporte
  ADD CONSTRAINT FK_Prioridad_TO_Reporte
    FOREIGN KEY (id_prioridad)
    REFERENCES Prioridad (id_prioridad)
GO

ALTER TABLE Reporte
  ADD CONSTRAINT FK_Distrito_TO_Reporte
    FOREIGN KEY (id_distrito)
    REFERENCES Distrito (id_distrito)
GO

ALTER TABLE Evidencia
  ADD CONSTRAINT FK_Reporte_TO_Evidencia
    FOREIGN KEY (id_reporte)
    REFERENCES Reporte (id_reporte)
GO

ALTER TABLE Comentario
  ADD CONSTRAINT FK_Reporte_TO_Comentario
    FOREIGN KEY (id_reporte)
    REFERENCES Reporte (id_reporte)
GO

ALTER TABLE Comentario
  ADD CONSTRAINT FK_Usuario_TO_Comentario
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario (id_usuario)
GO

ALTER TABLE Notificacion
  ADD CONSTRAINT FK_Usuario_TO_Notificacion
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario (id_usuario)
GO

ALTER TABLE Historial_Estado
  ADD CONSTRAINT FK_Reporte_TO_Historial_Estado
    FOREIGN KEY (id_reporte)
    REFERENCES Reporte (id_reporte)
GO

ALTER TABLE Historial_Estado
  ADD CONSTRAINT FK_Estado_Reporte_TO_Historial_Estado
    FOREIGN KEY (id_estado)
    REFERENCES Estado_Reporte (id_estado)
GO

ALTER TABLE Asignacion_Reporte
  ADD CONSTRAINT FK_Reporte_TO_Asignacion_Reporte
    FOREIGN KEY (id_reporte)
    REFERENCES Reporte (id_reporte)
GO

ALTER TABLE Asignacion_Reporte
  ADD CONSTRAINT FK_Usuario_TO_Asignacion_Reporte
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario (id_usuario)
GO

ALTER TABLE Evidencia
  ADD CONSTRAINT FK_Tipo_evidencia_TO_Evidencia
    FOREIGN KEY (id_tipo_evidencia)
    REFERENCES Tipo_evidencia (id_tipo_evidencia)
GO

ALTER TABLE Historial_Estado
  ADD CONSTRAINT FK_Usuario_TO_Historial_Estado
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario (id_usuario)
GO
