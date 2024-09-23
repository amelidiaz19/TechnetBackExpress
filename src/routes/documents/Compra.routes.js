import { Router } from "express";
import Authorization from "../../middlewares/Authorization.js";
import CompraController from "../../Controller/documents/CompraController.js";

const CompraRoutes = new Router();

CompraRoutes.post("/", Authorization, CompraController.Register);

export default CompraRoutes;
