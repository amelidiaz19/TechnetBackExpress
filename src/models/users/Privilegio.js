import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Rol } from "./Rol.js"

export const Privilegio = sequelize.define('Privilegio',{
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
});

Privilegio.belongsToMany(Rol,{through: 'RolPrivilegio'});
Rol.belongsTo(Privilegio, {through: 'RolPrivilegio'});

export default Privilegio;