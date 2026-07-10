use("CityAlert")

const user1 = ObjectId()
const user2 = ObjectId()
const user3 = ObjectId()
const user4 = ObjectId()
const user5 = ObjectId()
const user6 = ObjectId()
const user7 = ObjectId()
const user8 = ObjectId()
const user9 = ObjectId()
const user10 = ObjectId()

const reporte1 = ObjectId()
const reporte2 = ObjectId()
const reporte3 = ObjectId()
const reporte4 = ObjectId()
const reporte5 = ObjectId()
const reporte6 = ObjectId()
const reporte7 = ObjectId()
const reporte8 = ObjectId()
const reporte9 = ObjectId()
const reporte10 = ObjectId()

db.Usuario.insertMany([
  {
    _id: user1,
    correo: "carlos.bazan@cityalert.pe",
    contrasena: "ClaveSegura001",
    fecha_registro: ISODate("2026-05-01T00:00:00Z"),
    rol: {
      nombre_rol: "Ciudadano"
    },
    nombre: "Carlos Bazan",
    telefono: "987451220"
  },
  {
    _id: user2,
    correo: "jack.flores@cityalert.pe",
    contrasena: "ClaveSegura002",
    fecha_registro: ISODate("2026-05-02T00:00:00Z"),
    rol: {
      nombre_rol: "Ciudadano"
    },
    nombre: "Jack Flores",
    telefono: "986214578"
  },
  {
    _id: user3,
    correo: "rivaldo.huiza@cityalert.pe",
    contrasena: "ClaveSegura003",
    fecha_registro: ISODate("2026-05-03T00:00:00Z"),
    rol: {
      nombre_rol: "Ciudadano"
    },
    nombre: "Rivaldo Huiza",
    telefono: "985447821"
  },
  {
    _id: user4,
    correo: "kenyi.soto@cityalert.pe",
    contrasena: "ClaveSegura004",
    fecha_registro: ISODate("2026-05-04T00:00:00Z"),
    rol: {
      nombre_rol: "Ciudadano"
    },
    nombre: "Kenyi Soto",
    telefono: "984778532"
  },
  {
    _id: user5,
    correo: "kevin.salvador@cityalert.pe",
    contrasena: "ClaveSegura005",
    fecha_registro: ISODate("2026-05-05T00:00:00Z"),
    rol: {
      nombre_rol: "Ciudadano"
    },
    nombre: "Kevin Salvador",
    telefono: "983661245"
  },
  {
    _id: user6,
    correo: "juan.villafuerte@munilima.gob.pe",
    contrasena: "ClaveSegura006",
    fecha_registro: ISODate("2026-05-06T00:00:00Z"),
    rol: {
      nombre_rol: "Personal Municipal"
    },
    nombre: "Juan Elias Villafuerte",
    telefono: "982774411"
  },
  {
    _id: user7,
    correo: "mariela.torres@munisurco.gob.pe",
    contrasena: "ClaveSegura007",
    fecha_registro: ISODate("2026-05-07T00:00:00Z"),
    rol: {
      nombre_rol: "Personal Municipal"
    },
    nombre: "Mariela Torres",
    telefono: "981225634"
  },
  {
    _id: user8,
    correo: "luis.ramirez@munives.gob.pe",
    contrasena: "ClaveSegura008",
    fecha_registro: ISODate("2026-05-08T00:00:00Z"),
    rol: {
      nombre_rol: "Personal Municipal"
    },
    nombre: "Luis Ramirez",
    telefono: "980114729"
  },
  {
    _id: user9,
    correo: "andrea.paredes@munisjm.gob.pe",
    contrasena: "ClaveSegura009",
    fecha_registro: ISODate("2026-05-09T00:00:00Z"),
    rol: {
      nombre_rol: "Personal Municipal"
    },
    nombre: "Andrea Paredes",
    telefono: "989331245"
  },
  {
    _id: user10,
    correo: "admin@cityalert.pe",
    contrasena: "ClaveSegura010",
    fecha_registro: ISODate("2026-05-10T00:00:00Z"),
    rol: {
      nombre_rol: "Administrador"
    },
    nombre: "Admin CityAlert",
    telefono: "999000111"
  }
])


db.Reportes.insertMany([
  {
    _id: reporte1,
    titulo: "Basura en parque central",
    descripcion: "Se observa acumulacion de basura en el parque central desde hace varios dias",
    fecha_reporte: ISODate("2026-05-11T08:30:00Z"),
    ubicacion: "Villa El Salvador",
    referencia_ubicacion: "Frente a la losa deportiva del parque principal",
    usuario: {
      id_usuario: user1,
      nombre_usuario: "Carlos Bazan"
    },
    categoria: {
      nombre_categoria: "Basura acumulada"
    },
    estado: {
      nombre_estado: "Registrado"
    },
    prioridad: {
      nivel: "Media"
    },
    distrito: {
      nombre_distrito: "Villa El Salvador",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_1_imagen.jpg",
        tipo: "jpg",
        fecha_subida: ISODate("2026-05-11T08:32:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "Adjunto mas detalles porque el problema empeora por las noches",
        fecha_comentario: ISODate("2026-05-11T08:45:00Z"),
        usuario: {
          id_usuario: user1,
          nombre: "Carlos Bazan"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Registrado",
        fecha_cambio: ISODate("2026-05-11T08:31:00Z"),
        observacion: "Reporte creado por ciudadano"
      }
    ]
  },
  {
    _id: reporte2,
    titulo: "Bache en avenida principal",
    descripcion: "Existe un bache grande que dificulta el paso de vehiculos y motos",
    fecha_reporte: ISODate("2026-05-11T09:15:00Z"),
    ubicacion: "Santiago de Surco",
    referencia_ubicacion: "Cruce de la avenida principal con calle Los Olivos",
    usuario: {
      id_usuario: user2,
      nombre_usuario: "Jack Flores"
    },
    categoria: {
      nombre_categoria: "Pistas deterioradas"
    },
    estado: {
      nombre_estado: "En revisión"
    },
    prioridad: {
      nivel: "Alta"
    },
    distrito: {
      nombre_distrito: "Santiago de Surco",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_2_imagen.jpg",
        tipo: "jpg",
        fecha_subida: ISODate("2026-05-11T09:16:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "Se verificara la zona durante la jornada de la mañana",
        fecha_comentario: ISODate("2026-05-11T10:00:00Z"),
        usuario: {
          id_usuario: user6,
          nombre: "Juan Elias Villafuerte"
        }
      }
    ],
    historial_estado: [
      {
        estado: "En revisión",
        fecha_cambio: ISODate("2026-05-11T09:20:00Z"),
        observacion: "Reporte en revision por personal municipal"
      }
    ]
  },
  {
    _id: reporte3,
    titulo: "Poste sin luz",
    descripcion: "El alumbrado publico no funciona durante la noche y genera inseguridad",
    fecha_reporte: ISODate("2026-05-11T19:40:00Z"),
    ubicacion: "Cercado de Lima",
    referencia_ubicacion: "A media cuadra del mercado San Gabriel",
    usuario: {
      id_usuario: user3,
      nombre_usuario: "Rivaldo Huiza"
    },
    categoria: {
      nombre_categoria: "Alumbrado público dañado"
    },
    estado: {
      nombre_estado: "Asignado"
    },
    prioridad: {
      nivel: "Alta"
    },
    distrito: {
      nombre_distrito: "Cercado de Lima",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_3_foto_nocturna.jpg",
        tipo: "jpg",
        fecha_subida: ISODate("2026-05-11T19:42:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "El poste lleva varios dias apagado y la calle queda oscura",
        fecha_comentario: ISODate("2026-05-11T20:00:00Z"),
        usuario: {
          id_usuario: user3,
          nombre: "Rivaldo Huiza"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Asignado",
        fecha_cambio: ISODate("2026-05-11T19:50:00Z"),
        observacion: "Reporte asignado a responsable municipal"
      }
    ]
  },
  {
    _id: reporte4,
    titulo: "Semaforo averiado",
    descripcion: "El semaforo no cambia de luz y ocasiona desorden vehicular",
    fecha_reporte: ISODate("2026-05-12T07:50:00Z"),
    ubicacion: "San Juan de Miraflores",
    referencia_ubicacion: "Interseccion de Av. Proceres con Av. Central",
    usuario: {
      id_usuario: user4,
      nombre_usuario: "Kenyi Soto"
    },
    categoria: {
      nombre_categoria: "Semáforo malogrado"
    },
    estado: {
      nombre_estado: "En proceso"
    },
    prioridad: {
      nivel: "Urgente"
    },
    distrito: {
      nombre_distrito: "San Juan de Miraflores",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_4_video.mp4",
        tipo: "mp4",
        fecha_subida: ISODate("2026-05-12T07:52:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "Se ha derivado el caso al area de transporte urbano",
        fecha_comentario: ISODate("2026-05-12T08:20:00Z"),
        usuario: {
          id_usuario: user7,
          nombre: "Mariela Torres"
        }
      }
    ],
    historial_estado: [
      {
        estado: "En proceso",
        fecha_cambio: ISODate("2026-05-12T08:00:00Z"),
        observacion: "Reporte en proceso de atencion"
      }
    ]
  },
  {
    _id: reporte5,
    titulo: "Fuga de agua en vereda",
    descripcion: "Hay una fuga constante de agua que moja toda la vereda",
    fecha_reporte: ISODate("2026-05-12T10:10:00Z"),
    ubicacion: "Villa María del Triunfo",
    referencia_ubicacion: "Frente al colegio Santa Maria",
    usuario: {
      id_usuario: user5,
      nombre_usuario: "Kevin Salvador"
    },
    categoria: {
      nombre_categoria: "Fuga de agua"
    },
    estado: {
      nombre_estado: "Resuelto"
    },
    prioridad: {
      nivel: "Muy alta"
    },
    distrito: {
      nombre_distrito: "Villa María del Triunfo",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_5_foto_diurna.jpg",
        tipo: "jpg",
        fecha_subida: ISODate("2026-05-12T10:12:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "La fuga de agua sigue activa y ya afecta a los peatones",
        fecha_comentario: ISODate("2026-05-12T10:30:00Z"),
        usuario: {
          id_usuario: user5,
          nombre: "Kevin Salvador"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Resuelto",
        fecha_cambio: ISODate("2026-05-12T12:00:00Z"),
        observacion: "Incidencia resuelta satisfactoriamente"
      }
    ]
  },
  {
    _id: reporte6,
    titulo: "Ruido molesto de local nocturno",
    descripcion: "Un establecimiento genera ruido excesivo hasta altas horas de la noche",
    fecha_reporte: ISODate("2026-05-12T23:20:00Z"),
    ubicacion: "La Molina",
    referencia_ubicacion: "A una cuadra del parque del distrito",
    usuario: {
      id_usuario: user1,
      nombre_usuario: "Carlos Bazan"
    },
    categoria: {
      nombre_categoria: "Ruido excesivo"
    },
    estado: {
      nombre_estado: "Cerrado"
    },
    prioridad: {
      nivel: "Media alta"
    },
    distrito: {
      nombre_distrito: "La Molina",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_6_audio.mp3",
        tipo: "mp3",
        fecha_subida: ISODate("2026-05-12T23:22:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "El caso fue atendido y se realizo una inspeccion preliminar",
        fecha_comentario: ISODate("2026-05-13T09:00:00Z"),
        usuario: {
          id_usuario: user8,
          nombre: "Luis Ramirez"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Cerrado",
        fecha_cambio: ISODate("2026-05-13T09:10:00Z"),
        observacion: "Caso cerrado luego de verificacion"
      }
    ]
  },
  {
    _id: reporte7,
    titulo: "Comercio informal en via publica",
    descripcion: "Varios comerciantes ocupan la via publica impidiendo el libre transito",
    fecha_reporte: ISODate("2026-05-13T11:00:00Z"),
    ubicacion: "San Borja",
    referencia_ubicacion: "Al costado del mercado municipal",
    usuario: {
      id_usuario: user2,
      nombre_usuario: "Jack Flores"
    },
    categoria: {
      nombre_categoria: "Comercio informal"
    },
    estado: {
      nombre_estado: "Observado"
    },
    prioridad: {
      nivel: "Media alta"
    },
    distrito: {
      nombre_distrito: "San Borja",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_7_documento.pdf",
        tipo: "pdf",
        fecha_subida: ISODate("2026-05-13T11:03:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "Los comerciantes vuelven cada mañana pese a los operativos",
        fecha_comentario: ISODate("2026-05-13T11:30:00Z"),
        usuario: {
          id_usuario: user2,
          nombre: "Jack Flores"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Observado",
        fecha_cambio: ISODate("2026-05-13T11:45:00Z"),
        observacion: "Se observo falta de evidencia complementaria"
      }
    ]
  },
  {
    _id: reporte8,
    titulo: "Parque descuidado",
    descripcion: "El area verde del parque esta descuidada y los juegos estan dañados",
    fecha_reporte: ISODate("2026-05-13T15:45:00Z"),
    ubicacion: "Miraflores",
    referencia_ubicacion: "Parque Los Jardines, zona infantil",
    usuario: {
      id_usuario: user3,
      nombre_usuario: "Rivaldo Huiza"
    },
    categoria: {
      nombre_categoria: "Espacio público descuidado"
    },
    estado: {
      nombre_estado: "Rechazado"
    },
    prioridad: {
      nivel: "Media baja"
    },
    distrito: {
      nombre_distrito: "Miraflores",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_8_captura.png",
        tipo: "png",
        fecha_subida: ISODate("2026-05-13T15:47:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "Se requiere mantenimiento de areas verdes y juegos infantiles",
        fecha_comentario: ISODate("2026-05-13T16:15:00Z"),
        usuario: {
          id_usuario: user9,
          nombre: "Andrea Paredes"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Rechazado",
        fecha_cambio: ISODate("2026-05-13T16:25:00Z"),
        observacion: "Reporte rechazado por datos insuficientes"
      }
    ]
  },
  {
    _id: reporte9,
    titulo: "Congestion vehicular constante",
    descripcion: "Se reporta congestion vehicular en horas punta todos los dias",
    fecha_reporte: ISODate("2026-05-14T08:00:00Z"),
    ubicacion: "Santiago de Surco",
    referencia_ubicacion: "Subida del Cerro Centinela",
    usuario: {
      id_usuario: user4,
      nombre_usuario: "Kenyi Soto"
    },
    categoria: {
      nombre_categoria: "Congestionamiento vehicular"
    },
    estado: {
      nombre_estado: "Reabierto"
    },
    prioridad: {
      nivel: "Alta"
    },
    distrito: {
      nombre_distrito: "Santiago de Surco",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_9_clip.mp4",
        tipo: "mp4",
        fecha_subida: ISODate("2026-05-14T08:02:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "El trafico es peor entre las 7 y 9 de la mañana",
        fecha_comentario: ISODate("2026-05-14T08:10:00Z"),
        usuario: {
          id_usuario: user4,
          nombre: "Kenyi Soto"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Reabierto",
        fecha_cambio: ISODate("2026-05-14T08:12:00Z"),
        observacion: "El caso fue reabierto por nueva evidencia enviada"
      }
    ]
  },
  {
    _id: reporte10,
    titulo: "Falta de patrullaje nocturno",
    descripcion: "No se observa patrullaje en las noches y aumentan los hechos delictivos",
    fecha_reporte: ISODate("2026-05-14T21:30:00Z"),
    ubicacion: "Villa El Salvador",
    referencia_ubicacion: "Alrededores del parque industrial",
    usuario: {
      id_usuario: user5,
      nombre_usuario: "Kevin Salvador"
    },
    categoria: {
      nombre_categoria: "Falta de patrullaje"
    },
    estado: {
      nombre_estado: "Derivado"
    },
    prioridad: {
      nivel: "Urgente"
    },
    distrito: {
      nombre_distrito: "Villa El Salvador",
      provincia: "Lima"
    },
    evidencias: [
      {
        archivo: "evidencia_reporte_10_multiple.zip",
        tipo: "zip",
        fecha_subida: ISODate("2026-05-14T21:32:00Z")
      }
    ],
    comentarios: [
      {
        contenido: "Solicito mayor presencia de serenazgo en la zona",
        fecha_comentario: ISODate("2026-05-14T21:45:00Z"),
        usuario: {
          id_usuario: user5,
          nombre: "Kevin Salvador"
        }
      }
    ],
    historial_estado: [
      {
        estado: "Derivado",
        fecha_cambio: ISODate("2026-05-14T21:55:00Z"),
        observacion: "Reporte derivado a otra unidad competente"
      }
    ]
  }
])

db.comentarios.insertMany([
  {
    contenido: "Adjunto mas detalles porque el problema empeora por las noches",
    fecha_comentario: ISODate("2026-05-11T08:45:00Z"),
    id_reporte: reporte1,
    usuario: {
      id_usuario: user1,
      nombre: "Carlos Bazan"
    }
  },
  {
    contenido: "Se verificara la zona durante la jornada de la mañana",
    fecha_comentario: ISODate("2026-05-11T10:00:00Z"),
    id_reporte: reporte2,
    usuario: {
      id_usuario: user6,
      nombre: "Juan Elias Villafuerte"
    }
  },
  {
    contenido: "El poste lleva varios dias apagado y la calle queda oscura",
    fecha_comentario: ISODate("2026-05-11T20:00:00Z"),
    id_reporte: reporte3,
    usuario: {
      id_usuario: user3,
      nombre: "Rivaldo Huiza"
    }
  },
  {
    contenido: "Se ha derivado el caso al area de transporte urbano",
    fecha_comentario: ISODate("2026-05-12T08:20:00Z"),
    id_reporte: reporte4,
    usuario: {
      id_usuario: user7,
      nombre: "Mariela Torres"
    }
  },
  {
    contenido: "La fuga de agua sigue activa y ya afecta a los peatones",
    fecha_comentario: ISODate("2026-05-12T10:30:00Z"),
    id_reporte: reporte5,
    usuario: {
      id_usuario: user5,
      nombre: "Kevin Salvador"
    }
  },
  {
    contenido: "El caso fue atendido y se realizo una inspeccion preliminar",
    fecha_comentario: ISODate("2026-05-13T09:00:00Z"),
    id_reporte: reporte6,
    usuario: {
      id_usuario: user8,
      nombre: "Luis Ramirez"
    }
  },
  {
    contenido: "Los comerciantes vuelven cada mañana pese a los operativos",
    fecha_comentario: ISODate("2026-05-13T11:30:00Z"),
    id_reporte: reporte7,
    usuario: {
      id_usuario: user2,
      nombre: "Jack Flores"
    }
  },
  {
    contenido: "Se requiere mantenimiento de areas verdes y juegos infantiles",
    fecha_comentario: ISODate("2026-05-13T16:15:00Z"),
    id_reporte: reporte8,
    usuario: {
      id_usuario: user9,
      nombre: "Andrea Paredes"
    }
  },
  {
    contenido: "El trafico es peor entre las 7 y 9 de la mañana",
    fecha_comentario: ISODate("2026-05-14T08:10:00Z"),
    id_reporte: reporte9,
    usuario: {
      id_usuario: user4,
      nombre: "Kenyi Soto"
    }
  },
  {
    contenido: "Solicito mayor presencia de serenazgo en la zona",
    fecha_comentario: ISODate("2026-05-14T21:45:00Z"),
    id_reporte: reporte10,
    usuario: {
      id_usuario: user5,
      nombre: "Kevin Salvador"
    }
  }
])





