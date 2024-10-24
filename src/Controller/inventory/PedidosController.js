const Pedidos = require("../../models/inventory/Pedidos.js");
const Entidad = require("../../models/users/Entidad.js");
class PedidosController {
  async register(req, res) {
    const { userId, productos, datospago, estado } = req.body;
    const resp = await Pedidos.create({
      fecha: new Date(),
      productos,
      datospago,
      estado,
      EntidadId: userId,
    });
    return res;
  }
  async getPedidos(req, res) {
    const { userId } = req.userId;
    const pedidos = await Pedidos.findAll({ where: userId });
    const resp = pedidos.map((item) => ({
      id: item.id,
      fecha: item.fecha,
      productos: JSON.parse(item.productos),
      datospago: JSON.parse(item.datospago),
      estado: item.estado,
      createAt: item.createAt,
      updateAt: item.updateAt,
      Entidad: item.EntidadId,
    }));
    return res.json(resp);
  }
}

module.exports = new PedidosController();
