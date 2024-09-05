import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";

export const Entidad = sequelize.define('Entidad',{
id:{
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true
},
nombre:{
    type: DataTypes.STRING
},
documento:{
    type: DataTypes.STRING
},
direccion:{
    type: DataTypes.STRING
},
telefono:{
    type: DataTypes.STRING
},
email:{
    type: DataTypes.STRING
}
},{
    timestamps: false
})
export default Entidad;
//coneccion con tipoEntidad (esta ya se encuentra en TipoEntidad)
