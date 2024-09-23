import { Router } from "express";
import PedidosController from "../../Controller/inventory/PedidosController.js";
import Authorization from "../../middlewares/Authorization.js";

const PedidoRoutes = new Router();

PedidoRoutes.post("/", PedidosController.register);
PedidoRoutes.get("/", Authorization, PedidosController.getPedidos);
export default PedidoRoutes;
