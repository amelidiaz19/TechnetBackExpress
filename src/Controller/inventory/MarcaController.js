const CategoriaMarca = require("../../models/inventory/CategoriaMarca.js");
const Marca = require("../../models/inventory/Marca.js");
class MarcaController {
  async GetAll(req, res) {
    const resp = await Marca.findAll({ include: CategoriaMarca });
    return res.status(200).json(resp);
  }
  async Save(req, res) {
    const { nombre } = req.body;
    if (nombre == null || nombre == undefined || nombre == "") {
      res.status(400).json({ message: "nombre invalido" });
    }
    try {
      await Marca.create({ nombre });
      res.status(200).json({ message: "Marca guardada correctamente" });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  }
  async Belongs(req, res) {
    const MarcaId = req.params.id;
    if (MarcaId == null || MarcaId == undefined)
      return res.status(400).json({ message: "id invalido" });
    try {
      const subcategoriaMarca = await CategoriaMarca.findAll({
        where: { MarcaId },
      });
      res.status(200).json(subcategoriaMarca);
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  }
}

module.exports = new MarcaController();
