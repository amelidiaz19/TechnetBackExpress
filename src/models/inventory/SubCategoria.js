import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const SubCategoria = sequelize.define("SubCategoria",{
    id:{
        type:DataTypes.INTEGER,
        primaryKey:true
    },
    nombre:{
        type:DataTypes.STRING
    },
    descipcion:{
        type:DataTypes.STRING
    }
})

//coneccion con muchos a uno con categoria
//coneccion con uno a muchos con producto