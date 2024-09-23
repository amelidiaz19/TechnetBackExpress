import { Op, where } from "sequelize";
import Database from "../../database/Database.js";
import Producto from "../../models/inventory/Producto.js";
import Categoria from "../../models/inventory/Categoria.js";
import SubCategoria from "../../models/inventory/SubCategoria.js";
import Marca from "../../models/inventory/Marca.js";
import CategoriaMarca from "../../models/inventory/CategoriaMarca.js";
import Archivo from "../../models/global/Archivo.js";
import multer from "multer";
class ProductoController {
  constructor() {
    const storage = multer.diskStorage({
      destination: (req, file, cb) => {
        cb(null, "public/uploads");
      },
      filename: (req, file, cb) => {
        cb(null, Date.now() + "-" + file.originalname);
      },
    });

    this.upload = multer({ storage }).any();
  }
  async getAll(req, res) {
    const productos = await Producto.findAll({
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
    console.log(productos[0].SubCategorium);
    const resp = productos.map((producto) => ({
      id: producto.id,
      nombre: producto.nombre,
      pn: producto.pn,
      descripcion: producto.descripcion,
      stock: producto.stock,
      precio: producto.precio,
      CategoriaMarcaId: producto.CategoriaMarcaId,
      SubCategoriaId: producto.SubCategoriaId,
      MarcaId: producto.CategoriaMarca.Marca.id,
      CategoriaId: producto.SubCategorium.CategoriaId,

      marca: producto.CategoriaMarca.Marca.nombre,
      garantia_cliente: producto.garantia_cliente,
      garantia_total: producto.garantia_total,
      imagen_principal: producto.ArchivoPrincipal
        ? producto.ArchivoPrincipal.url
        : "",
      imageurl: producto.ArchivosRelacionados
        ? producto.ArchivosRelacionados.map((img) => img.url)
        : [], // array de URLs
    }));

    return res.status(200).json(resp);
  }
  async GetProductsFact(req, res) {
    const productos = await Producto.findAll({
      attributes: ["id", "nombre", "precio"],
    });
    return res.status(200).json(productos);
  }
  async getById(req, res) {
    const id = req.params.id;
    console.log(id);
    const producto = await Producto.findOne({
      where: { id },
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
  async GetCategoriaProducto(req, res) {
    const { limit } = req.query;
    const query = `CALL GetProductos(:limit)`;
    const results = await Database.connection.query(query, {
      replacements: { limit: limit }, // Pasar el parámetro al procedimiento
    });
    //const productosPorCategoria = {};
    const productosPorCategoria = {};
    results.forEach((row) => {
      const categoriaNombre = row.categoria_nombre;
      if (!productosPorCategoria[categoriaNombre]) {
        productosPorCategoria[categoriaNombre] = [];
      }

      const productoResponse = {
        id: row.id,
        nombre: row.nombre,
        pn: row.pn,
        descripcion: row.descripcion,
        stock: row.stock,
        precio: row.precio,
        subcategoria_nombre: row.subcategoria_nombre,
        garantia_cliente: row.garantia_cliente,
        garantia_total: row.garantia_total,
        categoria_nombre: row.categoria_nombre,
        imagen_principal: row.archivo_principal_url,
        imageurl: row.archivos_urls ? row.archivos_urls.split(",") : [],
      };

      productosPorCategoria[categoriaNombre].push(productoResponse);
    });
    return res.status(200).json(productosPorCategoria);
  }
  async GetPaged(req, res) {
    const { search, marca, categoria, subcategoria, page, size, sort } =
      req.query;
    try {
      const limit = size ? parseInt(size) : 10; // Si no hay size, se usa 10 como valor por defecto
      const offset = page ? parseInt(page) * limit : 0; // Si no hay page, empieza desde la primera página
      console.log("search: " + search);
      console.log("marca: " + marca + " TIPO DE DATO: " + typeof marca);
      console.log("categoria: " + categoria);
      console.log("subcategoria: " + subcategoria);
      console.log("page: " + typeof page);
      console.log("size: " + size);
      console.log("sort: ");

      const { count: totalItems, rows: productos } =
        await Producto.findAndCountAll({
          where: {
            nombre: {
              [Op.like]: `%${search}%`,
            },
          },
          include: [
            {
              model: SubCategoria,
              required: true,
              foreignKey: "SubCategoriaId",
              ...(subcategoria?.length > 0 && {
                where: {
                  nombre: { [Op.in]: subcategoria.split(",") }, // Solo aplica si hay subcategorías
                },
              }),
              include: {
                model: Categoria,
                required: true,
                foreignKey: "CategoriaId",
                ...(categoria?.length > 0 && {
                  where: {
                    nombre: { [Op.in]: categoria.split(",") }, // Solo aplica si hay categorías
                  },
                }),
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
                ...(marca?.length > 0 && {
                  where: {
                    nombre: { [Op.in]: marca.split(",") }, // Solo aplica si hay marcas
                  },
                }),
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
          limit: limit,
          offset: offset,
          ...(sort && { order: [["precio", sort]] }),
        });
      //const totalPages = Math.ceil(totalItems / limit);

      const resp = productos.map((producto) => ({
        id: producto.id,
        nombre: producto.nombre,
        pn: producto.pn,
        descripcion: producto.descripcion,
        stock: producto.stock,
        precio: producto.precio,
        marca: producto.CategoriaMarca.Marca.nombre,
        categoriamarca: producto.CategoriaMarca.nombre,
        categoria: producto.SubCategorium.Categorium.nombre,
        subcategoria: producto.SubCategorium.nombre,
        garantia_cliente: producto.garantia_cliente,
        garantia_total: producto.garantia_total,
        imagen_principal: producto.ArchivoPrincipal
          ? producto.ArchivoPrincipal.url
          : "",
        imageurl: producto.ArchivosRelacionados
          ? producto.ArchivosRelacionados.map((img) => img.url)
          : [], // array de URLs
      }));

      // Resultado paginado
      return res.status(200).json(resp);
    } catch (error) {
      console.error("Error al obtener productos con paginación:", error);
      throw error;
    }

    //return res.status(200).json(resp);
  }
  async Create(req, res) {
    // Llamar a multer para procesar la subida de archivos
    this.upload(req, res, (err) => {
      console.log(req.files);
      if (err) {
        return res.status(500).json({ error: err.message });
      }

      // Acceder a los archivos subidos
      const imagenPrincipal = req.files?.fileprincipal?.[0];
      const imagenesSecundarias = req.files?.files;
      console.log(imagenPrincipal);
      console.log(imagenesSecundarias);
      // Aquí podrías manejar la lógica para guardar el producto en la base de datos
      // e incluir las rutas de las imágenes subidas

      // Ejemplo de respuesta JSON con las rutas de las imágenes
      res.json({
        message: "Producto creado exitosamente",
        imagenPrincipal: imagenPrincipal
          ? `/uploads/${imagenPrincipal.filename}`
          : null,
        imagenesSecundarias: imagenesSecundarias
          ? imagenesSecundarias.map((img) => `/uploads/${img.filename}`)
          : [],
      });
    });
  }
}

export default new ProductoController();
