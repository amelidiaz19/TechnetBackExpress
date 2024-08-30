import { Sequelize } from "sequelize";

export const sequelize = new Sequelize("technetexpress","spring", "130602632",{
    host: "localhost",
    dialect: "mysql"
})