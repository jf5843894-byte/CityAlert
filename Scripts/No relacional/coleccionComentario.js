db.createCollection("comentarios", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      title: "comentarios",
      required: [
        "contenido",
        "fecha_comentario",
        "id_reporte",
        "usuario"
      ],
      properties: {
        _id: {
          bsonType: "objectId"
        },
        contenido: {
          bsonType: "string"
        },
        fecha_comentario: {
          bsonType: "date"
        },
        id_reporte: {
          bsonType: "objectId"
        },
        usuario: {
          bsonType: "object",
          required: ["id_usuario", "nombre"],
          properties: {
            id_usuario: {
              bsonType: "objectId"
            },
            nombre: {
              bsonType: "string"
            }
          },
          additionalProperties: false
        }
      },
      additionalProperties: false
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})
