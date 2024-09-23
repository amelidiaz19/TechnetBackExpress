import { Router } from "express";
import EntidadController from "../../Controller/users/EntidadController.js";
import Authorization from "../../middlewares/Authorization.js";

const AuthRouter = new Router();

// Add routes
AuthRouter.post("/login", EntidadController.login);
AuthRouter.post("/register", EntidadController.create);
AuthRouter.post("/private", Authorization, EntidadController.create);
AuthRouter.post("/validate", EntidadController.validate);
export default AuthRouter;
