import { Router } from "express";
import ArchivoController from "../../Controller/inventory/ArchivoController.js";
import Authorization from "../../middlewares/Authorization.js";
import upload from "../../middlewares/UploadImage.js";

const ArchivoRoutes = new Router();

ArchivoRoutes.post(
  "/",
  [
    Authorization,
    upload.fields([
      { name: "files", maxCount: 8 }, // Imágenes secundarias
    ]),
  ],
  ArchivoController.Crear
);
ArchivoRoutes.delete("/", ArchivoController.DeleteImagen);
ArchivoRoutes.get("/publicitaria", ArchivoController.getImagenesPublicitarias);

export default ArchivoRoutes;
