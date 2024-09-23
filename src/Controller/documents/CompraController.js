import { Op } from "sequelize";
import Compra from "../../models/documents/Compra.js";
import ProductoSerie from "../../models/inventory/ProductoSerie.js";
import Producto from "../../models/inventory/Producto.js";
import DetalleCompra from "../../models/documents/DetalleCompra.js";

class CompraController {
  async Register(req, res) {
    const {
      usuario_id,
      documento,
      documento_cliente,
      fecha_emision,
      fecha_vencimiento,
      fechapago,
      formapago,
      id_tipocondicion,
      id_tipomoneda,
      id_tipopago,
      tipo_cambio,
      nota,
      impuesto,
      gravada,
      total,
      detalles,
    } = req.body;
    try {
      const CompraRegist = await Compra.create({
        EntidadNegocioId: usuario_id,
        documento,
        EntidadId: documento_cliente,
        fecha_emision: new Date(fecha_emision),
        fecha_vencimiento: new Date(fecha_vencimiento),
        fechapago: new Date(fechapago),
        formapago,
        TipoCondicionId: id_tipocondicion,
        TipoMonedaId: id_tipomoneda,
        TipoPagoId: id_tipopago,
        tipo_cambio,
        nota,
        impuesto,
        gravada,
        total,
      });
      const productoIds = detalles.map((detalle) => detalle.id_producto);
      console.log(productoIds);
      const productos = await Producto.findAll({
        where: {
          id: {
            [Op.in]: productoIds,
          },
        },
      });
      await Promise.all(
        detalles.map(async (detalle) => {
          const producto = productos.find((p) => p.id === detalle.id_producto);
          if (producto) {
            await Promise.all(
              detalle.series.map(async (serie) => {
                const producto_serie = await ProductoSerie.create({
                  ProductoId: producto.id,
                  sn: serie,
                  EstadoProductoId: 1,
                });
                await DetalleCompra.create({
                  CompraId: CompraRegist.id,
                  ProductoSerieId: producto_serie.id,
                  sn: serie,
                  precio_neto: detalle.precio_unitario,
                });
              })
            );
          }
        })
      );
      return res.json({ message: "Compra Registrada Exitosamente" });
    } catch (error) {
      console.log(error);
      return res
        .status(500)
        .json({ message: "Error al registrar la compra", error });
    }
  }
  static addDetalleCompra(elemt) {}
}

export default new CompraController();
