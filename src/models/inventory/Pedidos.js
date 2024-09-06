import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Pedidos = sequelize.define("Pedidos",{
    id:{
        type: DataTypes.UUID,
        defaultValue:DataTypes.UUIDV4,
        primaryKey:true
    },
    fecha:{
        type: DataTypes.DATE
    },
    productos:{
        type:DataTypes.JSON //aqui se guarda un json
    },
    datospago:{
        type:DataTypes.JSON //json de datos de izipay
    },
    estado:{
        type:DataTypes.STRING
    },
    username:{
        type: DataTypes.STRING
    }
})
export default Pedidos;