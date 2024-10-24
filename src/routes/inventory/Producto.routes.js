const { Router } = require("express");
const ProductoController = require("../../Controller/inventory/ProductoController");
const Authorization = require("../../middlewares/Authorization");
const upload = require("../../middlewares/UploadImage");

const ProductoRouter = new Router();

ProductoRouter.get("/", Authorization, ProductoController.getAll);
ProductoRouter.get("/fact", Authorization, ProductoController.GetProductsFact);
/*
ProductoRouter.get(
  "/CategoriaProducto",
  ProductoController.GetCategoriaProducto
);
*/
ProductoRouter.get("/CategoriaProducto", ProductoController.getProductsHome);
ProductoRouter.get("/paged", ProductoController.GetPaged);
ProductoRouter.get("/paged2", Authorization, ProductoController.GetPaged2);
ProductoRouter.get("/search", Authorization, ProductoController.SearchProducto);
ProductoRouter.post(
  "/",
  [
    Authorization,
    upload.fields([
      { name: "fileprincipal", maxCount: 1 },
      { name: "files", maxCount: 5 },
    ]),
  ],
  ProductoController.Create
);
ProductoRouter.put(
  "/",
  [
    Authorization,
    upload.fields([
      { name: "fileprincipal", maxCount: 1 },
      { name: "files", maxCount: 5 },
    ]),
  ],
  ProductoController.Update
);
ProductoRouter.get("/:id", ProductoController.getById);

module.exports = ProductoRouter;
