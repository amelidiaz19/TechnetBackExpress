import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Correlativo } from "./Correlativo.js";
export const NumeracionCoprobante = sequelize.define('NumeracionCoprobante',{
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
NumeracionCoprobante.hasMany(Correlativo,{
    foreignKey:"NumeracionComprobanteId",
    sourceKey:"id"
})
Correlativo.belongsTo(NumeracionCoprobante,{
    foreignKey:"NumeracionComprobanteId",
    targetKey:"id"
})