const ProductoSerie = require("../../models/inventory/ProductoSerie.js");
const Producto = require("../../models/inventory/Producto.js");
const SubCategoria = require("../../models/inventory/SubCategoria.js");
const CategoriaMarca = require("../../models/inventory/CategoriaMarca.js");
const Marca = require("../../models/inventory/Marca.js");
const Archivo = require("../../models/global/Archivo.js");
const Categoria = require("../../models/inventory/Categoria.js");
const EstadoProducto = require("../../models/inventory/EstadoProducto.js");
const DetalleCompra = require("../../models/documents/DetalleCompra.js");

class ProductoSerieController {
  async getSeriesByProductoId(req, res) {
    const { id } = req.params;
    const series = await ProductoSerie.findAll({
      where: {
        ProductoId: id,
      },
      include: [{ model: EstadoProducto, attributes: ["nombre"] }],
      attributes: ["sn"],
    });
    return res.json(series);
  }
  async getBelong(req, res) {
    const { sn } = req.params;
    const productoSerie = await ProductoSerie.findOne({
      where: {
        sn: sn,
      },
    });
    const producto = await Producto.findOne({
      where: { id: productoSerie.ProductoId },
      include: [
        {
          model: SubCategoria,
          required: true,
          foreignKey: "SubCategoriaId",
          include: {
            model: Categoria,
            required: true,
            foreignKey: "CategoriaId",
          },
        },

        {
          model: CategoriaMarca,
          required: true,
          foreignKey: "CategoriaMarcaId",
          include: {
            model: Marca,
            required: true,
            foreignKey: "MarcaId",
          },
        },
        {
          model: Archivo,
          as: "ArchivoPrincipal", // alias para el campo en el resultado JSON
          required: true,
          foreignKey: "ArchivoPrincipalId",
          attributes: ["url"],
        },
        {
          model: Archivo, // Incluir archivos relacionados (muchos a muchos)
          as: "ArchivosRelacionados",
          through: { attributes: [] }, // Omitir los atributos intermedios de la tabla "producto_archivo"
          attributes: ["url"], // Traer solo la url
        },
      ],
    });
    if (!producto) {
      return res.status(404).json({ message: "Producto no encontrado" });
    }
    const productoResponse = {
      id: producto.id,
      nombre: producto.nombre,
      pn: producto.pn,
      descripcion: producto.descripcion,
      stock: producto.stock,
      precio: producto.precio,
      subcategoria_nombre: producto.subcategoria_nombre,
      garantia_cliente: producto.garantia_cliente,
      garantia_total: producto.garantia_total,
      categoria_nombre: producto.categoria_nombre,
      imagen_principal: producto.ArchivoPrincipal.url,
      imageurl: producto.ArchivosRelacionados
        ? producto.ArchivosRelacionados.map((archivo) => archivo.url)
        : [],
    };
    return res.status(200).json(productoResponse);
  }
  async delete(req, res) {
    const { sn } = req.params;
    try {
      const productoSerie = await ProductoSerie.findOne({
        where: { sn },
      });
      if (!productoSerie) {
        return res
          .status(404)
          .json({ message: "Producto Serie no encontrado" });
      }
      const detalleCompra = await DetalleCompra.findOne({
        where: { ProductoSerieId: productoSerie.id },
      });
      await productoSerie.destroy();
      await detalleCompra.destroy();
      return res.status(200).json({ message: "Producto Serie eliminado" });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  }
}

module.exports = new ProductoSerieController();
