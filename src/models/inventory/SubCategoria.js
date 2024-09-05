import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Producto } from "./Producto.js"

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
});

SubCategoria.hasMany(Producto,{
    foreignKey: 'SubCategoriaId',
    sourceKey: 'id'
});
Producto.belongsTo(SubCategoria,{
    foreignKey: 'SubCategoriaId',
    targetKey: 'id'
});

export default SubCategoria;
//coneccion con muchos a uno con categoria
//coneccion con uno a muchos con producto