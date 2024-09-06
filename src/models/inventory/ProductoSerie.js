import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { DetalleVenta } from "../documents/DetalleVenta.js"
import { DetalleCompra } from "../documents/DetalleCompra.js"

export const ProductoSerie = sequelize.define("ProductoSerie",{
    id:{
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey:true
    },
    sn:{
        type: DataTypes.STRING
    }
},{
    timestamps: false
})

ProductoSerie.hasMany(DetalleCompra,{
    foreignKey: 'ProductoSerieId',
    sourceKey: 'id'
});
DetalleCompra.belongsTo(ProductoSerie, {
    foreignKey: 'ProductoSerieId',
    sourceKey: 'id'
});

ProductoSerie.hasMany(DetalleVenta,{
    foreignKey: 'ProductoSerieId',
    sourceKey: 'id'
});
DetalleVenta.belongsTo(ProductoSerie, {
    foreignKey: 'ProductoSerieId',
    sourceKey: 'id'
});

export default ProductoSerie;
//Conexion con Lote muchos a uno
//Conexion con estadoProducto muchos a uno