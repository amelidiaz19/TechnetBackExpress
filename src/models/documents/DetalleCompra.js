import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const DetalleCompra = sequelize.define("DetalleCompra",{
    id:{
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey: true
    },
    sn:{
        type: DataTypes.STRING
    },
    precio_neto:{
        type: DataTypes.DOUBLE
    }
})
export default DetalleCompra;
//Coneccion muchos a uno con Compra
//Coneccion muchos a uno con ProductoSerie