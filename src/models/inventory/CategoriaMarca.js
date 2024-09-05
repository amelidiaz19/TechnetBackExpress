import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Producto } from "./Producto.js"
export const CategoriaMarca = sequelize.define("CategoriaMarca",{
    id:{
        type: DataTypes.INTEGER,
        primaryKey:true
    },
    nombre:{
        type: DataTypes.STRING
    }
});

//coneccion con Marca muchos a uno (se encuentra realcion en obj Marca)
//conecccion con producto uno a muchos
CategoriaMarca.hasMany(Producto,{
    foreignKey: 'CategoriaMarcaId',
    sourceKey: 'id'
});
Producto.belongsTo(CategoriaMarca,{
    foreignKey: 'CategoriaMarcaId',
    targetKey: 'id'
});
export default CategoriaMarca;