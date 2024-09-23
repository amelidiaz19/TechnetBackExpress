import Correlativo from "./correlative/Correlativo.js";
import NumeracionComprobante from "./correlative/NumeracionComprobante.js";
import TipoComprobante from "./correlative/TipoComprobante.js";

import Compra from "./documents/Compra.js";
import DetalleCompra from "./documents/DetalleCompra.js";
import Venta from "./documents/Venta.js";
import DetalleVenta from "./documents/DetalleVenta.js";

import Archivo from "./global/Archivo.js";
import TipoCondicion from "./global/TipoCondicion.js";
import TipoMoneda from "./global/TipoMoneda.js";
import TipoPago from "./global/TipoPago.js";

import Entidad from "./users/Entidad.js";
import TipoEntidad from "./users/TipoEntidad.js";
import Rol from "./users/Rol.js";
import Privilegio from "./users/Privilegio.js";

import Categoria from "./inventory/Categoria.js";
import CategoriaMarca from "./inventory/CategoriaMarca.js";
import EstadoProducto from "./inventory/EstadoProducto.js";
import Marca from "./inventory/Marca.js";
import Pedidos from "./inventory/Pedidos.js";
import Producto from "./inventory/Producto.js";
import ProductoSerie from "./inventory/ProductoSerie.js";
import SubCategoria from "./inventory/SubCategoria.js";

const models = {
  Correlativo,
  NumeracionComprobante,
  TipoComprobante,
  Compra,
  DetalleCompra,
  Venta,
  DetalleVenta,
  Archivo,
  Entidad,
  TipoCondicion,
  TipoEntidad,
  TipoMoneda,
  TipoPago,
  Categoria,
  CategoriaMarca,
  EstadoProducto,
  Marca,
  Pedidos,
  Producto,
  ProductoSerie,
  SubCategoria,
  Rol,
  Privilegio,
};
/*
Object.values(models).forEach((model) => {
  if (typeof model.associate === "function") {
    model.associate(models);
  }
});*/
export { models };
