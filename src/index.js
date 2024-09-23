console.log("\n\n\n");
console.log("datos database2:");
console.log("DB_NAME: " + process.env.DB_NAME);
console.log("DB_USER: " + process.env.DB_USER);
console.log("DB_PASSWORD: " + process.env.DB_PASSWORD);
console.log("DB_HOST: " + process.env.DB_HOST);
console.log("DB_PORT: " + process.env.DB_PORT);
console.log("\n\n\n");
import app from "./app.js";
import Database from "./database/Database.js";
async function main() {
  try {
    console.log("\n\n\n");
    console.log("PUERTO: " + process.env.PUERTO);
    console.log("\n\n\n");

    await Database.sync();

    app.listen(process.env.PUERTO, () => {
      console.log(`Servidor corriendo en el puerto 3000`);
    });
  } catch (error) {
    console.log(error);
  }
}
main();
