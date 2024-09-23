import { Router } from "express";
import EntidadController from "../../Controller/users/EntidadController.js";
import Authorization from "../../middlewares/Authorization.js";

const EntidadRouter = new Router();

// Add routes
EntidadRouter.get("/", Authorization, EntidadController.getAll);
EntidadRouter.post("/", Authorization, EntidadController.create);
EntidadRouter.get(
  "/dashboard",
  Authorization,
  EntidadController.getAllDashboard
);
EntidadRouter.put("/asignarrol", Authorization, EntidadController.UpdateRol);
export default EntidadRouter;
