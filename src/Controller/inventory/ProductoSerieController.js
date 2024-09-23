import { Op } from "sequelize";
import ProductoSerie from "../../models/inventory/ProductoSerie.js";

class ProductoSerieController {
  async getSeriesByProductoId(req, res) {
    const { id } = req.params;
    console.log(id);
    const series = await ProductoSerie.findAll({
      where: {
        ProductoId: id,
        EstadoProductoId: 1,
      },
      attributes: ["sn"],
    });
    console.log(series);
    return res.json(series);
  }
}

export default new ProductoSerieController();
