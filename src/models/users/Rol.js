import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Entidad } from "./Entidad.js";
export const Rol = sequelize.define('Rol',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
nombre:{
    type: DataTypes.INTEGER
},
descripcion:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})

Rol.hasMany(Entidad,{
    foreignKey:"RolId",
    sourceKey:"id"
})
Entidad.belongsTo(Rol,{
    foreignKey:"RolId",
    targetKey:"id"
})
export default Rol;