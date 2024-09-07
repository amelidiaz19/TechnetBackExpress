import { Sequelize } from "sequelize";

export const sequelize = new Sequelize("railway","root", "sDOwmTxKoNiBwpsvcVzNCBOPZSlFunUr",{
    host: "junction.proxy.rlwy.net",
    port: '41832',
    dialect: "mysql"
});