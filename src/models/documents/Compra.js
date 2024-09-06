import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { DetalleCompra } from "./DetalleCompra.js"

export const Compra = sequelize.define("Compra", {
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

Compra.hasMany(DetalleCompra,{
    foreignKey: 'CompraId',
    sourceKey: 'id'
});
DetalleCompra.belongsTo(Compra,{
    foreignKey: 'CompraId',
    targetKey: 'id'
});

export default Compra;
//Coneccion muchos a uno con Entidad
//Coneccion muchos a uno con User
//Coneccion muchos a uno con TipoCondicion
//Coneccion muchos a uno con TipoPago
//Coneccion muchos a uno con TipoMoneda
//Coneccion uno a muchos con DetalleCompra