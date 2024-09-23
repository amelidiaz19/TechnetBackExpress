import { Model, DataTypes } from "sequelize";

class DetalleVenta extends Model {
  static init(sequelize) {
    super.init(
      {
        id: {
          type: DataTypes.UUID,
          defaultValue: DataTypes.UUIDV4,
          primaryKey: true,
        },
        sn: {
          type: DataTypes.STRING,
        },
        precio_neto: {
          type: DataTypes.DOUBLE,
        },
      }, // attributes
      {
        sequelize,
        timestamps: false,
        tableName: "DetalleVenta",
      }
    );

    return this;
  }
}

export default DetalleVenta;
