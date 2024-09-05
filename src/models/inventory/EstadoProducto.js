import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { ProductoSerie } from "./ProductoSerie.js"

export const EstadoProducto = sequelize.define("EstadoProducto",{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true
    },
    nombre:{
        type: DataTypes.STRING
    }
},{
    timestamps: false
});
EstadoProducto.hasMany(ProductoSerie,{
    foreignKey: 'EstadoProductoId',
    sourceKey: 'id'
});
ProductoSerie.belongsTo(EstadoProducto,{
    foreignKey: 'EstadoProductoId',
    targetKey: 'id'
});
export default EstadoProducto;