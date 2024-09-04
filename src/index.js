import app from './app.js'
import { sequelize } from './database/database.js';

import "./models/global/TipoCondicion.js"
import "./models/global/TipoEntidad.js"
import "./models/global/TipoMoneda.js"
import "./models/global/TipoPago.js"
import "./models/global/Archivo.js"
import "./models/global/Entidad.js"



async function main(){
    try {
        await sequelize.sync({alter: true})
        app.listen(3000,()=>{
            console.log(`Servidor corriendo en el puerto 3000`);
        })
    } catch (error) {
        console.log(error);
    }
}
main()