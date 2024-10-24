const Venta = require("../../models/documents/Venta.js");
const Producto = require("../../models/inventory/Producto.js");
const { Op } = require("sequelize");
const ProductoSerie = require("../../models/inventory/ProductoSerie.js");
const DetalleVenta = require("../../models/documents/DetalleVenta.js");
const Entidad = require("../../models/users/Entidad.js");

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
    if (documento_cliente == null || documento_cliente == "")
      return res.status(400).json({ message: "El cliente es requerido" });
    if (detalles.length == 0)
      return res.status(400).json({ message: "No hay productos en la venta" });
    try {
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
                const producto_serie = await ProductoSerie.update(
                  {
                    EstadoProductoId: 2, // Datos a actualizar
                  },
                  {
                    where: {
                      sn: serie, // Condición
                    },
                  }
                );
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
      for (const producto of productos) {
        // Encontrar el detalle correspondiente por ID
        const detalle = detalles.find((d) => d.id_producto === producto.id);

        // Aumentar el stock del producto
        producto.stock -= detalle.cantidad;

        // Guardar el producto actualizado
        await producto.save();
      }
      return res.json({ message: "Venta Registrada Exitosamente" });
    } catch (error) {
      return res
        .status(500)
        .json({ message: "Error al registrar la compra", error });
    }
  }
  async GetAll(req, res) {
    const ventas = await Venta.findAll({
      include: [
        {
          model: Entidad,
          as: "entidadClienteVenta",
          attributes: ["nombre", "documento"],
        },
        {
          model: Entidad,
          as: "entidadNegocioVenta",
          attributes: ["nombre", "documento"],
        },
      ],
      attributes: ["documento", "total", "fecha_emision"],
    });
    const respuesta = ventas.map((venta) => ({
      documento: venta.documento,
      total: venta.total,
      fecha_emision: venta.fecha_emision,
      cliente: venta.entidadClienteVenta.nombre,
      cliente_documento: venta.entidadClienteVenta.documento,
      negocio: venta.entidadNegocioVenta.nombre,
      negocio_documento: venta.entidadNegocioVenta.documento,
    }));
    return res.status(200).json(respuesta);
  }
}
/**
 * {
	"0": {
		"id": "7bce4c3b-605e-4295-8939-6f7b975c126c",
		"documento": null,
		"fecha_emision": "2024-10-22T05:00:00.000Z",
		"fecha_vencimiento": "2024-10-22T05:00:00.000Z",
		"nota": "",
		"gravada": 6500,
		"impuesto": 1170,
		"total": 7670,
		"fecha_pago": null,
		"formapago": "1",
		"url_pdf": null,
		"tipo_cambio": 3,
		"CorrelativoId": null,
		"EntidadId": "5790066e-553c-4d8a-8207-f008c841594d",
		"EntidadNegocioId": "5790066e-553c-4d8a-8207-f008c841594d",
		"TipoCondicionId": 1,
		"TipoMonedaId": 1,
		"TipoPagoId": 1
	}
}
 */
module.exports = new VentaController();
