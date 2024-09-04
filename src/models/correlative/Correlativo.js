import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

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
//coneccion con NumeracionComprobante (esta se encuentra en NumeracionComprobante)