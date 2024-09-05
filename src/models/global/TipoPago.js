import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

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
})
export default TipoPago;