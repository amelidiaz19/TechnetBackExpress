const { Router } = require("express");
const Authorization = require("../../middlewares/Authorization.js");
const CotizacionController = require("../../Controller/documents/CotizacionController.js");

const CotizacionRoutes = Router();

CotizacionRoutes.post("/", Authorization, CotizacionController.register);
CotizacionRoutes.get("/", CotizacionController.getPaged);
CotizacionRoutes.get("/:id", CotizacionController.getById);
module.exports = CotizacionRoutes;
