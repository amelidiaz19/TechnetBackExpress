import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Categoria = sequelize.define("Categoria",{
    id:{
        type: DataTypes.INTEGER,
        autoIncrementIdentity: true,
        primaryKey: true
    },
    nombre:{
        type: DataTypes.STRING,
    },
    descripcion:{
        type: DataTypes.STRING
    }

},{
    timestamps: false
})
//coneccion con subcategoria marca uno a muchos