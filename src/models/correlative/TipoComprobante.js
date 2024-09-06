import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { NumeracionComprobante } from "./NumeracionComprobante.js";
export const TipoComprobante = sequelize.define('TipoComprobante',{
id:{
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
},
prefijo:{
    type: DataTypes.STRING
},
descripcion:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})

//conceccion con Numeracion Comprobante
TipoComprobante.hasMany(NumeracionComprobante, {
    foreignKey: 'TipoComprobanteId',
    sourceKey: 'id'
});

NumeracionComprobante.belongsTo(TipoComprobante, {
    foreignKey: 'TipoComprobanteId',
    targetKey: 'id'
});
export default TipoComprobante;
/**
 * Un TipoComprobante puede tener múltiples NumeracionComprobante. Esto se logra mediante la relación hasMany en TipoComprobante.

    Cada NumeracionComprobante pertenece a un TipoComprobante, lo cual se indica con la relación belongsTo.
 */