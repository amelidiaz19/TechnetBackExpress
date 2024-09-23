import Venta from "../../models/documents/Venta.js";
import Producto from "../../models/inventory/Producto.js";
import { Op } from "sequelize";
import ProductoSerie from "../../models/inventory/ProductoSerie.js";
import DetalleVenta from "../../models/documents/DetalleVenta.js";

class VentaController {
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
    console.log(req.body);
    try {
      /**
         * Columns:
	CorrelativoId	char(36)
         */
      const CompraRegist = await Venta.create({
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
      const productosIds = detalles.map((detalle) => detalle.id_producto);
      const productos = await Producto.findAll({
        where: {
          id: {
            [Op.in]: productosIds,
          },
        },
      });
      await Promise.all(
        detalles.map(async (detalle) => {
          const producto = productos.find((p) => p.id === detalle.id_producto);
          if (producto) {
            await Promise.all(
              detalle.series.map(async (serie) => {
                const producto_serie = await ProductoSerie.findOne({
                  where: {
                    sn: serie,
                  },
                });
                await DetalleVenta.create({
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
      return res.json({ message: "Venta Registrada Exitosamente" });
    } catch (error) {
      console.log(error);
      return res
        .status(500)
        .json({ message: "Error al registrar la compra", error });
    }
  }
}

export default new VentaController();
