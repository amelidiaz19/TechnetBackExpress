import { Router } from "express";
import Authorization from "../../middlewares/Authorization.js";
import VentaController from "../../Controller/documents/VentaController.js";

// import all controllers
// import SessionController from './app/controllers/SessionController';

const VentaRoutes = new Router();

VentaRoutes.post("/", Authorization, VentaController.Register);

export default VentaRoutes;
