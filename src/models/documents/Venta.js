import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Venta = sequelize.define("Venta",{
    id:{
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey: true
    }
})
export default Venta;