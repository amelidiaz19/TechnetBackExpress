import { Router } from "express";
import ProductoController from "../../Controller/inventory/ProductoController.js";
import Authorization from "../../middlewares/Authorization.js";

export const ProductoRouter = new Router();

// Add routes
ProductoRouter.get("/", Authorization, ProductoController.getAll);
ProductoRouter.get("/fact", Authorization, ProductoController.GetProductsFact);
ProductoRouter.get(
  "/CategoriaProducto",
  ProductoController.GetCategoriaProducto
);
ProductoRouter.get("/paged", ProductoController.GetPaged);
ProductoRouter.post(
  "/",
  Authorization,
  ProductoController.Create.bind(ProductoController)
);
ProductoRouter.get("/:id", ProductoController.getById);

export default ProductoRouter;
