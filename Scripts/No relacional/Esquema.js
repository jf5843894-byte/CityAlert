use("CityAlert")

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

db.createCollection("Reportes", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      title: "Reportes",
      required: [
        "titulo",
        "descripcion",
        "fecha_reporte",
        "ubicacion",
        "referencia_ubicacion",
        "usuario",
        "categoria",
        "estado",
        "prioridad",
        "distrito",
        "evidencias",
        "comentarios",
        "historial_estado"
      ],
      properties: {
        _id: {
          bsonType: "objectId"
        },
        titulo: {
          bsonType: "string"
        },
        descripcion: {
          bsonType: "string"
        },
        fecha_reporte: {
          bsonType: "date"
        },
        ubicacion: {
          bsonType: "string"
        },
        referencia_ubicacion: {
          bsonType: "string"
        },
        usuario: {
          bsonType: "object",
          required: ["id_usuario", "nombre_usuario"],
          properties: {
            id_usuario: {
              bsonType: "objectId"
            },
            nombre_usuario: {
              bsonType: "string"
            }
          },
          additionalProperties: false
        },
        categoria: {
          bsonType: "object",
          required: ["nombre_categoria"],
          properties: {
            nombre_categoria: {
              bsonType: "string"
            }
          },
          additionalProperties: false
        },
        estado: {
          bsonType: "object",
          required: ["nombre_estado"],
          properties: {
            nombre_estado: {
              bsonType: "string",
              enum: [
                "recibido",
                "evaluacion",
                "asignado",
                "progreso",
                "atendido",
                "rechazado"
              ]
            }
          },
          additionalProperties: false
        },
        prioridad: {
          bsonType: "object",
          required: ["nivel"],
          properties: {
            nivel: {
              bsonType: "string",
              enum: ["alta", "media", "baja"]
            }
          },
          additionalProperties: false
        },
        distrito: {
          bsonType: "object",
          required: ["nombre_distrito", "provincia"],
          properties: {
            nombre_distrito: {
              bsonType: "string"
            },
            provincia: {
              bsonType: "string"
            }
          },
          additionalProperties: false
        },
        evidencias: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["archivo", "tipo", "fecha_subida"],
            properties: {
              archivo: {
                bsonType: "string"
              },
              tipo: {
                bsonType: "string",
                enum: ["png", "jpg", "mp4", "mp3"]
              },
              fecha_subida: {
                bsonType: "date"
              }
            },
            additionalProperties: false
          }
        },
        comentarios: {
          bsonType: "array",
          maxItems: 5,
          items: {
            bsonType: "object",
            required: ["contenido", "fecha_comentario", "usuario"],
            properties: {
              contenido: {
                bsonType: "string"
              },
              fecha_comentario: {
                bsonType: "date"
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
        historial_estado: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["estado", "fecha_cambio", "observacion"],
            properties: {
              estado: {
                bsonType: "string",
                enum: [
                  "recibido",
                  "evaluacion",
                  "asignado",
                  "progreso",
                  "atendido",
                  "rechazado"
                ]
              },
              fecha_cambio: {
                bsonType: "date"
              },
              observacion: {
                bsonType: "string"
              }
            },
            additionalProperties: false
          }
        }
      },
      additionalProperties: false
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})

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
