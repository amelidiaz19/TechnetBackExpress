import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Marca = sequelize.define("Marca",{
id:{
    type: DataTypes.INTEGER,
    primaryKey:true
},
nombre:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})

//coneccion uno a muchos con CategoriaMarca