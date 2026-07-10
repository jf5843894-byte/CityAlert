use("CityAlert")

// 1. Contar cuántos reportes existen por estado
db.Reportes.aggregate([
  {
    $group: {
      _id: "$estado.nombre_estado",
      total_reportes: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      estado: "$_id",
      total_reportes: 1
    }
  },
  {
    $sort: {
      total_reportes: -1
    }
  }
])

// 2. Contar cuántos reportes existen por distrito
db.Reportes.aggregate([
  {
    $group: {
      _id: "$distrito.nombre_distrito",
      total_reportes: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      distrito: "$_id",
      total_reportes: 1
    }
  },
  {
    $sort: {
      total_reportes: -1
    }
  }
])

// 3. Mostrar cuántos reportes hay por categoría
db.Reportes.aggregate([
  {
    $group: {
      _id: "$categoria.nombre_categoria",
      total_reportes: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      categoria: "$_id",
      total_reportes: 1
    }
  },
  {
    $sort: {
      total_reportes: -1
    }
  }
])

// 4. Mostrar cuántos reportes hizo cada usuario
db.Reportes.aggregate([
  {
    $group: {
      _id: "$usuario.nombre_usuario",
      total_reportes: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      usuario: "$_id",
      total_reportes: 1
    }
  },
  {
    $sort: {
      total_reportes: -1
    }
  }
])

// 5. Mostrar reportes con prioridad alta o superior
db.Reportes.aggregate([
  {
    $match: {
      "prioridad.nivel": {
        $in: ["Alta", "Muy alta", "Urgente", "Crítica", "Emergencia"]
      }
    }
  },
  {
    $project: {
      _id: 0,
      titulo: 1,
      usuario: "$usuario.nombre_usuario",
      distrito: "$distrito.nombre_distrito",
      prioridad: "$prioridad.nivel",
      estado: "$estado.nombre_estado"
    }
  }
])

// 6. Mostrar reportes finalizados o derivados
db.Reportes.aggregate([
  {
    $match: {
      "estado.nombre_estado": {
        $in: ["Resuelto", "Cerrado", "Derivado"]
      }
    }
  },
  {
    $project: {
      _id: 0,
      titulo: 1,
      estado: "$estado.nombre_estado",
      distrito: "$distrito.nombre_distrito",
      fecha_reporte: 1
    }
  },
  {
    $sort: {
      fecha_reporte: -1
    }
  }
])

// 7. Mostrar reportes pendientes de atención
db.Reportes.aggregate([
  {
    $match: {
      "estado.nombre_estado": {
        $in: ["Registrado", "En revisión", "Asignado", "En proceso", "Observado", "Reabierto"]
      }
    }
  },
  {
    $project: {
      _id: 0,
      titulo: 1,
      estado: "$estado.nombre_estado",
      prioridad: "$prioridad.nivel",
      distrito: "$distrito.nombre_distrito"
    }
  }
])

// 8. Contar usuarios por rol
db.Usuario.aggregate([
  {
    $group: {
      _id: "$rol.nombre_rol",
      total_usuarios: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      rol: "$_id",
      total_usuarios: 1
    }
  },
  {
    $sort: {
      total_usuarios: -1
    }
  }
])

// 9. Mostrar distritos con reportes de prioridad muy alta o más
db.Reportes.aggregate([
  {
    $match: {
      "prioridad.nivel": {
        $in: ["Muy alta", "Urgente", "Crítica", "Emergencia"]
      }
    }
  },
  {
    $group: {
      _id: "$distrito.nombre_distrito",
      total_reportes_criticos: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      distrito: "$_id",
      total_reportes_criticos: 1
    }
  },
  {
    $sort: {
      total_reportes_criticos: -1
    }
  }
])

// 10. Contar cuántos comentarios tiene cada reporte
db.comentarios.aggregate([
  {
    $group: {
      _id: "$id_reporte",
      total_comentarios: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      id_reporte: "$_id",
      total_comentarios: 1
    }
  },
  {
    $sort: {
      total_comentarios: -1
    }
  }
])

// 11. Mostrar qué usuarios comentaron más veces
db.comentarios.aggregate([
  {
    $group: {
      _id: "$usuario.nombre",
      total_comentarios: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      usuario: "$_id",
      total_comentarios: 1
    }
  },
  {
    $sort: {
      total_comentarios: -1
    }
  }
])

// 12. Mostrar reportes que tienen evidencia de tipo jpg
db.Reportes.aggregate([
  {
    $match: {
      "evidencias.tipo": "jpg"
    }
  },
  {
    $project: {
      _id: 0,
      titulo: 1,
      distrito: "$distrito.nombre_distrito",
      estado: "$estado.nombre_estado",
      tipo_evidencia: "jpg"
    }
  }
])

// 13. Mostrar los 5 reportes más recientes con sus datos principales
db.Reportes.aggregate([
  {
    $sort: {
      fecha_reporte: -1
    }
  },
  {
    $limit: 5
  },
  {
    $project: {
      _id: 0,
      titulo: 1,
      fecha_reporte: 1,
      usuario: "$usuario.nombre_usuario",
      distrito: "$distrito.nombre_distrito",
      estado: "$estado.nombre_estado"
    }
  }
])

// 14. Mostrar reportes que tienen comentarios hechos por personal municipal
db.Reportes.aggregate([
  {
    $match: {
      "comentarios.usuario.nombre": {
        $in: [
          "Juan Elias Villafuerte",
          "Mariela Torres",
          "Luis Ramirez",
          "Andrea Paredes"
        ]
      }
    }
  },
  {
    $project: {
      _id: 0,
      titulo: 1,
      "comentarios.contenido": 1,
      "comentarios.usuario.nombre": 1,
      "comentarios.fecha_comentario": 1
    }
  }
])

// 15. Mostrar cantidad de reportes por combinación de estado y prioridad
db.Reportes.aggregate([
  {
    $group: {
      _id: {
        estado: "$estado.nombre_estado",
        prioridad: "$prioridad.nivel"
      },
      total: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      estado: "$_id.estado",
      prioridad: "$_id.prioridad",
      total: 1
    }
  },
  {
    $sort: {
      estado: 1,
      prioridad: 1
    }
  }
])
