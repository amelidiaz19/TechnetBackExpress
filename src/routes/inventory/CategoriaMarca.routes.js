const { Router } = require("express");
const CategoriaMarcaService = require("../../Controller/inventory/CategoriaMarcaService");
const Authorization = require("../../middlewares/Authorization");

const CategoriaMarcaRouter = Router();

CategoriaMarcaRouter.post("", Authorization, CategoriaMarcaService.Save);

module.exports = CategoriaMarcaRouter;
