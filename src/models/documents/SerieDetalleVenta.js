const { Model, DataTypes } = require("sequelize");

class SerieDetalleVenta extends Model {
  static init(sequelize) {
    super.init(
      {
        id: {
          type: DataTypes.UUID,
          defaultValue: DataTypes.UUIDV4,
          primaryKey: true,
        },
        DetalleVentaId: {
          type: DataTypes.UUID,
          references: {
            model: "DetalleVenta", // Nombre de la tabla
            key: "id",
          },
        },
        ProductoSerieId: {
          type: DataTypes.UUID,
          references: {
            model: "ProductoSerie", // Nombre de la tabla
            key: "id",
          },
        },
      },
      {
        sequelize,
        timestamps: false,
        tableName: "SeriesDetalleVenta",
      }
    );

    return this;
  }
}

module.exports = SerieDetalleVenta;
