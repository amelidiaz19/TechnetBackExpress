import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const TipoCondicion = sequelize.define('TipoCondicion',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
},
diascredito:{
    type: DataTypes.INTEGER
},
descripcion:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})
export default TipoCondicion;