const CategoriaMarca = require("../../models/inventory/CategoriaMarca.js");
const Marca = require("../../models/inventory/Marca.js");
class MarcaController {
  async GetAll(req, res) {
    const resp = await Marca.findAll({ include: CategoriaMarca });
    return res.status(200).json(resp);
  }
  async GetAllPaged(req, res) {
    res.send("funciona");
  }
  async GetById(req, res) {
    res.send("funciona" + req.params.id);
  }
  async Save(req, res) {
    res.send("funciona");
  }
  async SavesAll(req, res) {
    res.send("funciona");
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
  async Update(req, res) {
    res.send("funciona" + req.params.id);
  }
  async Delete(req, res) {
    res.send("funciona" + req.params.id);
  }
}

module.exports = new MarcaController();
