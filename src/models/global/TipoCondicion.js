import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Compra } from "../documents/Compra.js"
import { Venta } from "../documents/Venta.js"

export const TipoCondicion = sequelize.define('TipoCondicion',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
},
diascredito:{
    type: DataTypes.INTEGER
},
descripcion:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})

TipoCondicion.hasMany(Compra,{
    foreignKey: 'TipoCondicionId',
    sourceKey: 'id'
});
Compra.belongsTo(TipoCondicion,{
    foreignKey: 'TipoCondicionId',
    targetKey: 'id'
});

TipoCondicion.hasMany(Venta,{
    foreignKey: 'TipoCondicionId',
    sourceKey: 'id'
});
Venta.belongsTo(TipoCondicion,{
    foreignKey: 'TipoCondicionId',
    targetKey: 'id'
});

export default TipoCondicion;