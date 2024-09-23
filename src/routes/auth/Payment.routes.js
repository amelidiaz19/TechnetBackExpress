import { Router } from "express";
import PaymentController from "../../Controller/auth/PaymentController.js";

const PaymentRoutes = new Router();

PaymentRoutes.post("/external-data", PaymentController.externarData);
PaymentRoutes.post("/validate", PaymentController.validate);
export default PaymentRoutes;
