import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { SubCategoria } from "./SubCategoria.js"

export const Categoria = sequelize.define("Categoria",{
    id:{
        type: DataTypes.INTEGER,
        autoIncrementIdentity: true,
        primaryKey: true
    },
    nombre:{
        type: DataTypes.STRING,
    },
    descripcion:{
        type: DataTypes.STRING
    }

},{
    timestamps: false
});

Categoria.hasMany(SubCategoria,{
    foreignKey: 'CategoriaId',
    sourceKey: 'id'
});
SubCategoria.belongsTo(Categoria,{
    foreignKey: 'CategoriaId',
    targetKey: 'id'
});

export default Categoria;
//coneccion con subcategoria marca uno a muchos