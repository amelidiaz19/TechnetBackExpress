import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Entidad } from "./Entidad.js";
export const TipoEntidad = sequelize.define('TipoEntidad',{
id:{
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
},
descripcion:{
    type: DataTypes.STRING
},
cantdigitos:{
    type: DataTypes.INTEGER
},
},{
    timestamps: false
})

TipoEntidad.hasMany(Entidad,{
    foreignKey:"TipoEntidadId",
    sourceKey:"id"
})
Entidad.belongsTo(TipoEntidad,{
    foreignKey:"TipoEntidadId",
    targetKey:"id"
})
export default TipoEntidad;