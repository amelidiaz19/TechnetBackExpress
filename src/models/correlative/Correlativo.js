import { Model, DataTypes } from "sequelize";

class Correlativo extends Model {
  static init(sequelize) {
    super.init(
      {
        id: {
          type: DataTypes.UUID,
          defaultValue: DataTypes.UUIDV4,
          primaryKey: true,
        },
        numero: {
          type: DataTypes.BIGINT,
        },
      }, // attributes
      {
        sequelize,
        timestamps: false,
        tableName: "Correlativo",
      }
    );
    return this;
  }
  static associate(models) {
    this.hasMany(models.Venta, {
      foreignKey: "CorrelativoId",
      sourceKey: "id",
    });
    models.Venta.belongsTo(this, {
      foreignKey: "CorrelativoId",
      targetKey: "id",
    });
  }
}

export default Correlativo;
