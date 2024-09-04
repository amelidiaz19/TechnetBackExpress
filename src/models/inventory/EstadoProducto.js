import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

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
})