import express from "express";
import cors from "cors";
import { Routes } from "./routes/Routes.js";
import path from "path";
import { fileURLToPath } from "url";
class App {
  constructor() {
    this.server = express();
    this.middlewares();
    this.routes();
  }

  middlewares() {
    this.server.use(express.json());
    this.server.use(cors());
    const __filename = fileURLToPath(import.meta.url);
    const __dirname = path.dirname(__filename);
    const uploadsDir = path.resolve(__dirname, "../public/uploads");
    this.server.use("/uploads", express.static(uploadsDir));
  }

  routes() {
    this.server.use("/auth", Routes.AuthRouter);
    this.server.use("/inventory/entidad", Routes.UsersRouter.EntidadRouter);
    this.server.use(
      "/inventory/categoria",
      Routes.InventoryRouter.CategoriaRouter
    );
    this.server.use(
      "/inventory/categoriamarca",
      Routes.InventoryRouter.CategoriaMarcaRouter
    );
    this.server.use("/inventory/lote", Routes.InventoryRouter.LoteRouter);
    this.server.use("/inventory/marca", Routes.InventoryRouter.MarcaRouter);
    this.server.use(
      "/inventory/producto",
      Routes.InventoryRouter.ProductoRouter
    );
    this.server.use("/inventory/compra", Routes.DocumentsRoutes.CompraRoutes);
    this.server.use("/inventory/venta", Routes.DocumentsRoutes.VentaRoutes);
    this.server.use("/inventory/archivos", Routes.GlobalRoutes.ArchivoRoutes);
    this.server.use("/inventory/tipado", Routes.GlobalRoutes.TipadoRoutes);
    this.server.use("/payment", Routes.PaymentRoutes);
    this.server.use("/inventory/pedidos", Routes.InventoryRouter.PedidoRoutes);
    this.server.use(
      "/inventory/productoserie",
      Routes.InventoryRouter.ProductoSerieRoutes
    );
  }
}

export default new App().server;
