import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Venta } from "../documents/Venta.js"

export const Correlativo = sequelize.define('Correlativo',{
id:{
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true
},
numero:{
    type: DataTypes.BIGINT
}
},{
    timestamps: false
})
Correlativo.hasMany(Venta,{
    foreignKey: 'CorrelativoId',
    sourceKey: 'id'
});
Venta.belongsTo(Correlativo,{
    foreignKey: 'CorrelativoId',
    targetKey: 'id'
});
export default Correlativo;
//coneccion con NumeracionComprobante (esta se encuentra en NumeracionComprobante)