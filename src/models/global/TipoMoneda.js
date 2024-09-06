import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Compra } from "../documents/Compra.js"
import { Venta } from "../documents/Venta.js"

export const TipoMoneda = sequelize.define('TipoMoneda',{
id:{
    type: DataTypes.INTEGER,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
}
})

TipoMoneda.hasMany(Compra,{
    foreignKey: 'TipoMonedaId',
    sourceKey: 'id'
});
Compra.belongsTo(TipoMoneda,{
    foreignKey: 'TipoMonedaId',
    targetKey: 'id'
});

TipoMoneda.hasMany(Venta,{
    foreignKey: 'TipoMonedaId',
    sourceKey: 'id'
});
Venta.belongsTo(TipoMoneda,{
    foreignKey: 'TipoMonedaId',
    targetKey: 'id'
});

export default TipoMoneda;