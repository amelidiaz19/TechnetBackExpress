import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Archivo = sequelize.define('Archivo',{
id:{
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
},
namekey:{
    type: DataTypes.STRING
},
bucketname:{
    type: DataTypes.STRING
},
url:{
    type: DataTypes.STRING
},
descripcion:{
    type: DataTypes.STRING
},
tipo_Archivo:{
    type: DataTypes.STRING
},
},{
    timestamps: false
})
export default Archivo;