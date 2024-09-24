import { Router } from "express";
import ProductoController from "../../Controller/inventory/ProductoController.js";
import Authorization from "../../middlewares/Authorization.js";

export const ProductoRouter = new Router();
import upload from "../../middlewares/UploadImage.js";
ProductoRouter.get("/", Authorization, ProductoController.getAll);
ProductoRouter.get("/fact", Authorization, ProductoController.GetProductsFact);
ProductoRouter.get(
  "/CategoriaProducto",
  ProductoController.GetCategoriaProducto
);
ProductoRouter.get("/paged", ProductoController.GetPaged);
ProductoRouter.post(
  "/",
  upload.fields([
    { name: "fileprincipal", maxCount: 1 }, // Imagen principal
    { name: "files", maxCount: 5 }, // Imágenes secundarias
  ]),
  ProductoController.Create
);
ProductoRouter.get("/:id", ProductoController.getById);

export default ProductoRouter;
