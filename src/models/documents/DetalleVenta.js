import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const DetalleVenta = sequelize.define("DetalleVenta",{
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
export default DetalleVenta;