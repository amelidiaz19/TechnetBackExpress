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
      this.connection = new Sequelize(
        "technet2390_BackendExpress",
        "technet2390_AdminExpress",
        "HymL?VnOUh{8",
        {
          host: "technetsac.com",
          port: "3306",
          dialect: "mysql",
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
