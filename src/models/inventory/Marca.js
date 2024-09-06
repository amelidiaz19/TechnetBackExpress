import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { CategoriaMarca } from "./CategoriaMarca.js"

export const Marca = sequelize.define("Marca",{
id:{
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey:true
},
nombre:{
    type: DataTypes.STRING
}
},{
    timestamps: false
});
export default Marca;

Marca.hasMany(CategoriaMarca,{
    foreignKey: 'MarcaId',
    sourceKey: 'id'
});
CategoriaMarca.belongsTo(Marca,{
    foreignKey: 'MarcaId',
    targetKey: 'id'
});
//coneccion uno a muchos con CategoriaMarca