import Archivo from '../../models/global/Archivo.js'
class ArchivoController {
  async store(req, res) {
    return res.json();
  }

  async index(req, res) {
    return res.json();
  }

  async create(req, res) {
    return res.json();
  }

  async show(req, res) {
    return res.json();
  }

  async edit(req, res) {
    return res.json();
  }

  async update(req, res) {
    return res.json();
  }

  async destroy(req, res) {
    return res.json();
  }

  async view(req, res) {
    return res.json();
  }

  async grid(req, res) {
    return res.json();
  }

  async form(req, res) {
    return res.json();
  }
  async getImagenesPublicitarias(req, res){

    const archivos = await Archivo.findAll({
        where: { tipo_Archivo: 'imagenes_publicitarias' },
        order: [['descripcion', 'ASC']],
    });

    // Agrupar por descripción y mapear URLs
    const respuesta = archivos.reduce((acc, archivo) => {
        const descripcion = archivo.descripcion || 'Sin descripción';
        if (!acc[descripcion]) {
            acc[descripcion] = [];
        }
        acc[descripcion].push(archivo.url);
        return acc;
    }, {});
    console.log(respuesta);
    return res.status(200).json(respuesta)
  }
}

export default new ArchivoController();
