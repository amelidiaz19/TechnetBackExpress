import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Lote = sequelize.define("Lote",{
    id:{
        type: DataTypes.INTEGER,
        primaryKey:true
    },
    nombre:{
        type: DataTypes.STRING
    },
    fecha:{
        type:DataTypes.DATE
    }
})
//Conexion con productos muchos a uno


//Conexion con productosSerie uno a muchos