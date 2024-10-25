const { Router } = require("express");
const MarcaController = require("../../Controller/inventory/MarcaController.js");
const Authorization = require("../../middlewares/Authorization.js");

const MarcaRouter = Router();

MarcaRouter.get("", MarcaController.GetAll);
MarcaRouter.post("", Authorization, MarcaController.Save);
MarcaRouter.get("/subs/:id", MarcaController.Belongs);

module.exports = MarcaRouter;
