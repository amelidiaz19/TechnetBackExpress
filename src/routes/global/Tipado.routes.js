import { Router } from "express";
import TipadoController from "../../Controller/global/TipadoController.js";

const TipadoRoutes = new Router();

TipadoRoutes.get("/", TipadoController.GetTipadoDocumentos);
export default TipadoRoutes;
