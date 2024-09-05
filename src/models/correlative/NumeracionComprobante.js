import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Correlativo } from "./Correlativo.js";
export const NumeracionComprobante = sequelize.define('NumeracionComprobante',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
numeracion:{
    type: DataTypes.BIGINT
},
descripcion:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})

//coneccion con tipocomprobante
//coneccion con correlativo
NumeracionComprobante.hasMany(Correlativo,{
    foreignKey:"NumeracionComprobanteId",
    sourceKey:"id"
})
Correlativo.belongsTo(NumeracionComprobante,{
    foreignKey:"NumeracionComprobanteId",
    targetKey:"id"
})
export default NumeracionComprobante;