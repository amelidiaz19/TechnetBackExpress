import { InventoryRouter } from "./inventory/InventoryRoutes.js";
import { GlobalRoutes } from "./global/GlobalRoutes.js";
import { UsersRouter } from "./users/UsersRoutes.js";
import PaymentRoutes from "./auth/Payment.routes.js";
import AuthRouter from "./auth/Auth.routes.js";
import { DocumentsRoutes } from "./documents/DocumentsRoutes.js";
export const Routes = {
  InventoryRouter,
  GlobalRoutes,
  UsersRouter,
  PaymentRoutes,
  AuthRouter,
  DocumentsRoutes,
};
