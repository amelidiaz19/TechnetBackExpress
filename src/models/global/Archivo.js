import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Producto } from "../inventory/Producto.js"

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

//realacion uno a muchos con producto, la foreign key en la tabla Producto es ArchivoPrincipalId
Archivo.hasMany(Producto,{
    foreignKey: 'ArchivoPrincipalId',
    sourceKey: 'id'
});
Producto.belongsTo(Archivo,{
    foreignKey: 'ArchivoPrincipalId',
    targetKey: 'id'
});
//Relacion muchos a muchos con producto
Archivo.belongsToMany(Producto, { through: 'producto_archivo'});
Producto.belongsToMany(Archivo, { through: 'producto_archivo'});

export default Archivo;