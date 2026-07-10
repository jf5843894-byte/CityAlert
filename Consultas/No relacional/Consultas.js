use("CityAlert")

// ======================================================
// CONSULTAS SIMPLES PARA CITYALERT
// ======================================================

// 1. Mostrar todos los reportes registrados en el sistema
db.Reportes.find()

// 2. Mostrar solo el titulo, estado y prioridad de cada reporte
db.Reportes.find(
  {},
  {
    titulo: 1,
    "estado.nombre_estado": 1,
    "prioridad.nivel": 1
  }
)

// 3. Mostrar los reportes que estan en estado "Registrado"
db.Reportes.find({
  "estado.nombre_estado": "Registrado"
})

// 4. Mostrar los reportes que estan en estado "En revisión"
db.Reportes.find({
  "estado.nombre_estado": "En revisión"
})

// 5. Mostrar los reportes con prioridad alta o superior
db.Reportes.find({
  "prioridad.nivel": {
    $in: ["Alta", "Muy alta", "Urgente", "Crítica", "Emergencia"]
  }
})

// 6. Mostrar los reportes del distrito de Santiago de Surco
db.Reportes.find({
  "distrito.nombre_distrito": "Santiago de Surco"
})

// 7. Mostrar los reportes creados por el usuario Carlos Bazan
db.Reportes.find({
  "usuario.nombre_usuario": "Carlos Bazan"
})

// 8. Contar la cantidad total de reportes registrados
db.Reportes.countDocuments()

// 9. Contar cuántos usuarios tienen rol de Ciudadano
db.Usuario.countDocuments({
  "rol.nombre_rol": "Ciudadano"
})

// 10. Contar cuántos usuarios tienen rol de Personal Municipal
db.Usuario.countDocuments({
  "rol.nombre_rol": "Personal Municipal"
})

// 11. Mostrar todos los reportes ordenados del mas reciente al mas antiguo
db.Reportes.find().sort({
  fecha_reporte: -1
})

// 12. Mostrar solo los 5 reportes mas recientes
db.Reportes.find().sort({
  fecha_reporte: -1
}).limit(5)

// 13. Mostrar los reportes que tienen al menos un comentario
db.Reportes.find({
  "comentarios.0": { $exists: true }
})

// 14. Mostrar todos los comentarios guardados en la coleccion comentarios
db.comentarios.find()

// 15. Mostrar los reportes que tienen evidencias de tipo jpg
db.Reportes.find({
  "evidencias.tipo": "jpg"
})
