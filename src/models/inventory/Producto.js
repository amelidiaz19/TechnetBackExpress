import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Lote } from "./Lote.js"

export const Producto = sequelize.define("Producto",{
    id:{
        type: DataTypes.UUID,
        defaultValue:DataTypes.UUIDV4,
        primaryKey:true
    },
    nombre:{
        type:DataTypes.STRING
    },
    pn:{
        type:DataTypes.STRING
    },
    descripcion:{
        type:DataTypes.STRING
    },
    garantia_cliente:{
        type:DataTypes.DOUBLE
    },
    garantia_total:{
        type:DataTypes.DOUBLE
    },
    stock:{
        type:DataTypes.DOUBLE
    },
    precio:{
        type:DataTypes.DOUBLE
    }
},{
    timestamps: false
});

Producto.hasMany(Lote,{
    foreignKey: 'ProductoId',
    sourceKey: 'id'
});
Lote.belongsTo(Producto,{
    foreignKey: 'ProductoId',
    targetKey: 'id'
});
export default Producto;