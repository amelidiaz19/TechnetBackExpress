import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { DetalleVenta } from "./DetalleVenta.js"
export const Venta = sequelize.define("Venta",{
    id:{
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey: true
    },
    documento:{
        type: DataTypes.STRING
    },
    fecha_emision:{
        type: DataTypes.DATE
    },
    fecha_vencimiento:{
        type: DataTypes.DATE
    },
    nota:{
        type: DataTypes.STRING
    },
    gravada:{
        type: DataTypes.DOUBLE
    },
    impuesto:{
        type: DataTypes.DOUBLE
    },
    total:{
        type: DataTypes.DOUBLE
    },
    fecha_pago:{
        type: DataTypes.DATE
    },
    formapago:{
        type: DataTypes.STRING
    },
    url_pdf:{
        type: DataTypes.STRING
    },
    tipo_cambio: {
        type: DataTypes.DOUBLE
    }
})

Venta.hasMany(DetalleVenta,{
    foreignKey: 'VentaId',
    sourceKey: 'id'
});
DetalleVenta.belongsTo(Venta,{
    foreignKey: 'VentaId',
    targetKey: 'id'
});
export default Venta;