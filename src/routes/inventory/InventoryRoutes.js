import LoteRouter from "./Lote.routes.js";
import MarcaRouter from "./Marca.routes.js";
import ProductoRouter from "./Producto.routes.js";
//import SubCategoriaRouter from "./SubCategoria.routes.js";
import CategoriaRouter from "./Categoria.routes.js";
import CategoriaMarcaRouter from "./CategoriaMarca.routes.js";
import PedidoRoutes from "./Pedido.routes.js";
import ProductoSerieRoutes from "./ProductoSerie.routes.js";

export const InventoryRouter = {
  LoteRouter,
  MarcaRouter,
  ProductoRouter,
  CategoriaRouter,
  CategoriaMarcaRouter,
  PedidoRoutes,
  ProductoSerieRoutes,
};
