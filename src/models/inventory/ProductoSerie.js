import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const ProductoSerie = sequelize.define("ProductoSerie",{
    id:{
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey:true
    },
    sn:{
        type: DataTypes.STRING
    }
})

//Conexion con Lote muchos a uno

//Conexion con estadoProducto muchos a uno