import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const TipoMoneda = sequelize.define('TipoMoneda',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})