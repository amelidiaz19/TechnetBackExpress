import { configDotenv } from "dotenv";
configDotenv();
import Sequelize from "sequelize";
import { models } from "../models/models.js";

class Database {
  constructor() {
    this.init();
  }

  init() {
    try {
      console.log("\n\n");
      console.log("datos database:");
      console.log("DB_NAME: " + process.env.DB_NAME);
      console.log("DB_USER: " + process.env.DB_USER);
      console.log("DB_PASSWORD: " + process.env.DB_PASSWORD);
      console.log("DB_HOST: " + process.env.DB_HOST);
      console.log("DB_PORT: " + process.env.DB_PORT);
      console.log("\n\n");
      this.connection = new Sequelize(
        process.env.DB_NAME,
        process.env.DB_USER,
        process.env.DB_PASSWORD,
        {
          host: process.env.DB_HOST,
          port: process.env.DB_PORT,
          dialect: process.env.DB_DIALECT,
          retry: { max: 3 },
        }
      );
      Object.values(models).forEach((model) => model.init(this.connection));
      Object.values(models).forEach((model) => {
        if (typeof model.associate === "function") {
          model.associate(models);
        }
      });
      console.log("Conexión a la base de datos establecida exitosamente.");
    } catch (error) {
      console.error("Error al conectar a la base de datos:", error);
    }
  }
  configuration() {
    console.log("------------------");
    console.log("Configuration Database: ");
    console.log(this.connection);
    console.log("------------------");
  }
  async sync() {
    try {
      await this.connection.sync({ alter: true });
      console.log("Sincronización de modelos completada.");
    } catch (error) {
      console.error("Error al sincronizar los modelos:", error);
    }
  }
}

export default new Database();
