const { Model, DataTypes } = require("sequelize");

class Archivo extends Model {
  static init(sequelize) {
    super.init(
      {
        id: {
          type: DataTypes.UUID,
          defaultValue: DataTypes.UUIDV4,
          primaryKey: true,
        },
        nombre: {
          type: DataTypes.STRING,
        },
        namekey: {
          type: DataTypes.STRING,
        },
        bucketname: {
          type: DataTypes.STRING,
        },
        url: {
          type: DataTypes.STRING,
        },
        ubicacion: {
          type: DataTypes.STRING,
        },
        descripcion: {
          type: DataTypes.STRING,
        },
        tipo_Archivo: {
          type: DataTypes.STRING,
        },
      }, // attributes
      {
        sequelize,
        timestamps: false,
        tableName: "Archivo",
      }
    );

    return this;
  }
  static associate(models) {
    //realacion uno a muchos con producto, la foreign key en la tabla Producto es ArchivoPrincipalId
    this.hasMany(models.Producto, {
      foreignKey: "ArchivoPrincipalId",
      sourceKey: "id",
      as: "ArchivoPrincipal",
      //allowNull: true,
    });
    models.Producto.belongsTo(this, {
      foreignKey: "ArchivoPrincipalId",
      targetKey: "id",
      as: "ArchivoPrincipal",
      //allowNull: true,
    });
    //Relacion muchos a muchos con producto
    this.belongsToMany(models.Producto, {
      through: "producto_archivo",
      foreignKey: "ArchivoId", // Llave foránea en la tabla intermedia que referencia a Archivo
      otherKey: "ProductoId",
      as: "ArchivosRelacionados",
    });
    models.Producto.belongsToMany(this, {
      through: "producto_archivo",
      foreignKey: "ProductoId", // Llave foránea en la tabla intermedia que referencia a Producto
      otherKey: "ArchivoId",
      as: "ArchivosRelacionados",
    });
  }
}

module.exports = Archivo;
