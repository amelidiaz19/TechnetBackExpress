import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Rol } from "./Rol.js"

export const Privilegio = sequelize.define('Privilegio',{
id:{
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
},
descripcion:{
    type: DataTypes.STRING
}
},{
    timestamps: false
});

Privilegio.belongsToMany(Rol,{through: 'RolPrivilegio'});
Rol.belongsToMany(Privilegio, {through: 'RolPrivilegio'});

export default Privilegio;