const { Router } = require("express");
const Authorization = require("../../middlewares/Authorization");
const ProductoSerieController = require("../../Controller/inventory/ProductoSerieController");

const ProductoSerieRoutes = new Router();

ProductoSerieRoutes.get(
  "/stock/:id",
  Authorization,
  ProductoSerieController.getSeriesByProductoId
);
ProductoSerieRoutes.get(
  "/belong/:sn",
  Authorization,
  ProductoSerieController.getBelong
);
ProductoSerieRoutes.delete(
  "/:sn",
  Authorization,
  ProductoSerieController.delete
);
module.exports = ProductoSerieRoutes;
