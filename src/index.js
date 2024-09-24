import app from "./app.js";
import Database from "./database/Database.js";
async function main() {
  try {
    await Database.sync();
    app.listen(process.env.PUERTO, () => {
      console.log(`Servidor corriendo en el puerto 3000`);
    });
  } catch (error) {
    console.log(error);
  }
}
main();
