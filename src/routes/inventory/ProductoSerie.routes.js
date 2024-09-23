import { Router } from "express";
import Authorization from "../../middlewares/Authorization.js";
import ProductoSerieController from "../../Controller/inventory/ProductoSerieController.js";

// import all controllers
// import SessionController from './app/controllers/SessionController';

const ProductoSerieRoutes = new Router();

ProductoSerieRoutes.get(
  "/stock/:id",
  Authorization,
  ProductoSerieController.getSeriesByProductoId
);

export default ProductoSerieRoutes;
