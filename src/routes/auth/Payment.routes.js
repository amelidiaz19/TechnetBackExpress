const { Router } = require("express");
const PaymentController = require("../../Controller/auth/PaymentController.js");

const PaymentRoutes = Router();

PaymentRoutes.post("/external-data", PaymentController.externarData);
PaymentRoutes.post("/validate", PaymentController.validate);

module.exports = PaymentRoutes;
