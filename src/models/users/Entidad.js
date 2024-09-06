import { sequelize } from "../../database/database.js";
import { DataTypes } from "sequelize";
import { Compra } from "../documents/Compra.js"
import { Venta } from "../documents/Venta.js"
import { Pedidos } from "../inventory/Pedidos.js"

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
},
password:{
    type: DataTypes.STRING
}
},{
    timestamps: false,
    hooks:{
        beforeCreate: async(Entidad, options)=>{
            const salt = await bcrypt.genSalt(10);
            Entidad.password = await bcrypt.hash(Entidad.password, salt); 
        }
    }
});

Entidad.comparePassword = async(password, hashPassword)=>{
    return await bcrypt.compare(password,hashPassword)
}

Entidad.hasMany(Compra, {
    foreignKey: {
        name: 'EntidadId',
        type: DataTypes.UUID
    },
    sourceKey: 'id'
});
Compra.belongsTo(Entidad, {
    foreignKey: {
        name: 'EntidadId',
        type: DataTypes.UUID
    },
    targetKey: 'id'
});
Entidad.hasMany(Compra, {
    foreignKey: {
        name: 'EntidadNegocioId',
        type: DataTypes.UUID
    },
    sourceKey: 'id'
});
Compra.belongsTo(Entidad, {
    foreignKey: {
        name: 'EntidadNegocioId',
        type: DataTypes.UUID
    },
    targetKey: 'id'
});

//Doble conexion con Venta 
//1. para indicar el cliente o proveedor
//2. para indicar el usuario que creo ese documento
Entidad.hasMany(Venta, {
    foreignKey: {
        name: 'EntidadId',
        type: DataTypes.UUID
    },
    sourceKey: 'id'
});
Venta.belongsTo(Entidad, {
    foreignKey: {
        name: 'EntidadId',
        type: DataTypes.UUID
    },
    targetKey: 'id'
});
Entidad.hasMany(Venta, {
    foreignKey: {
        name: 'EntidadNegocioId',
        type: DataTypes.UUID
    },
    sourceKey: 'id'
});
Venta.belongsTo(Entidad, {
    foreignKey: {
        name: 'EntidadNegocioId',
        type: DataTypes.UUID
    },
    targetKey: 'id'
});

// conexion con Pedidos
Entidad.hasMany(Pedidos, {
    foreignKey: {
        name: 'EntidadId',
        type: DataTypes.UUID
    },
    sourceKey: 'id'
});
Pedidos.belongsTo(Entidad, {
    foreignKey: {
        name: 'EntidadId',
        type: DataTypes.UUID
    },
    targetKey: 'id'
});

export default Entidad;
//coneccion con tipoEntidad (esta ya se encuentra en TipoEntidad)
