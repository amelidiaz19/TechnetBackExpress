import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const CategoriaMarca = sequelize.define("CategoriaMarca",{
    id:{
        type: DataTypes.INTEGER,
        primaryKey:true
    },
    nombre:{
        type: DataTypes.STRING
    }
})

//coneccion con Marca muchos a uno
//conecccion con producto uno a muchos