db.createCollection("Usuario", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      title: "Usuario",
      required: [
        "correo",
        "contrasena",
        "fecha_registro",
        "rol",
        "nombre",
        "telefono"
      ],
      properties: {
        _id: {
          bsonType: "objectId"
        },
        correo: {
          bsonType: "string"
        },
        contrasena: {
          bsonType: "string"
        },
        fecha_registro: {
          bsonType: "date"
        },
        rol: {
          bsonType: "object",
          required: ["nombre_rol"],
          properties: {
            nombre_rol: {
              bsonType: "string",
              enum: ["Ciudadano", "Personal Municipal", "Administrador"]
            }
          },
          additionalProperties: false
        },
        nombre: {
          bsonType: "string"
        },
        telefono: {
          bsonType: "string"
        }
      },
      additionalProperties: false
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})
