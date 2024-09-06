import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Compra } from "../documents/Compra.js"
import { Venta } from "../documents/Venta.js"

export const TipoPago = sequelize.define('TipoPago',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
},
descripcion:{
    type: DataTypes.STRING
},
},{
    timestamps: false
});

TipoPago.hasMany(Compra,{
    foreignKey: 'TipoPagoId',
    sourceKey: 'id'
});
Compra.belongsTo(TipoPago,{
    foreignKey: 'TipoPagoId',
    targetKey: 'id'
});

TipoPago.hasMany(Venta,{
    foreignKey: 'TipoPagoId',
    sourceKey: 'id'
});
Venta.belongsTo(TipoPago,{
    foreignKey: 'TipoPagoId',
    targetKey: 'id'
});
export default TipoPago;