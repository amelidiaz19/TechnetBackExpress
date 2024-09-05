import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { ProductoSerie } from "./ProductoSerie.js"

export const Lote = sequelize.define("Lote",{
    id:{
        type: DataTypes.INTEGER,
        primaryKey:true
    },
    nombre:{
        type: DataTypes.STRING
    },
    fecha:{
        type:DataTypes.DATE
    }
})
//Conexion con productos muchos a uno

//Conexion con productosSerie uno a muchos
Lote.hasMany(ProductoSerie,{
    foreignKey: 'LoteId',
    sourceKey: 'id'
});
ProductoSerie.belongsTo(Lote,{
    foreignKey: 'LoteId',
    targetKey: 'id'
});
export default Lote;