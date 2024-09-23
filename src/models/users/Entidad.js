import { Model, DataTypes } from "sequelize";
import bcrypt from "bcryptjs";
class Entidad extends Model {
  static init(sequelize) {
    super.init(
      {
        // attributes
        id: {
          type: DataTypes.UUID,
          defaultValue: DataTypes.UUIDV4,
          primaryKey: true,
        },
        nombre: {
          type: DataTypes.STRING,
        },
        apellido: {
          type: DataTypes.STRING,
        },
        documento: {
          type: DataTypes.STRING,
          unique: true,
        },
        direccion: {
          type: DataTypes.STRING,
        },
        telefono: {
          type: DataTypes.STRING,
        },
        email: {
          type: DataTypes.STRING,
          unique: true,
        },
        password: {
          type: DataTypes.STRING,
          allowNull: true,
        },
        verifiedWebsite: {
          type: DataTypes.BOOLEAN,
        },
      },
      {
        sequelize,
        timestamps: false,
        tableName: "Entidad",
        hooks: {
          beforeCreate: async (Entidad, options) => {
            const salt = await bcrypt.genSalt(10);
            Entidad.password = await bcrypt.hash(Entidad.password, salt);
          },
        },
      }
    );

    return this;
  }
  static associate(models) {
    this.hasMany(models.Compra, {
      foreignKey: {
        name: "EntidadId",
        type: DataTypes.UUID,
      },
      sourceKey: "id",
    });
    models.Compra.belongsTo(this, {
      foreignKey: {
        name: "EntidadId",
        type: DataTypes.UUID,
      },
      targetKey: "id",
    });
    this.hasMany(models.Compra, {
      foreignKey: {
        name: "EntidadNegocioId",
        type: DataTypes.UUID,
      },
      sourceKey: "id",
    });
    models.Compra.belongsTo(this, {
      foreignKey: {
        name: "EntidadNegocioId",
        type: DataTypes.UUID,
      },
      targetKey: "id",
    });

    //Doble conexion con Venta
    //1. para indicar el cliente o proveedor
    //2. para indicar el usuario que creo ese documento
    this.hasMany(models.Venta, {
      foreignKey: {
        name: "EntidadId",
        type: DataTypes.UUID,
      },
      sourceKey: "id",
    });
    models.Venta.belongsTo(this, {
      foreignKey: {
        name: "EntidadId",
        type: DataTypes.UUID,
      },
      targetKey: "id",
    });
    this.hasMany(models.Venta, {
      foreignKey: {
        name: "EntidadNegocioId",
        type: DataTypes.UUID,
      },
      sourceKey: "id",
    });
    models.Venta.belongsTo(this, {
      foreignKey: {
        name: "EntidadNegocioId",
        type: DataTypes.UUID,
      },
      targetKey: "id",
    });

    // conexion con Pedidos
    this.hasMany(models.Pedidos, {
      foreignKey: {
        name: "EntidadId",
        type: DataTypes.UUID,
      },
      sourceKey: "id",
    });
    models.Pedidos.belongsTo(this, {
      foreignKey: {
        name: "EntidadId",
        type: DataTypes.UUID,
      },
      targetKey: "id",
    });
  }
  static async comparePassword(password, hashPassword) {
    return await bcrypt.compare(password, hashPassword);
  }
}

export default Entidad;
