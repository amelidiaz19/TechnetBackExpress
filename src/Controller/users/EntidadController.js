import jwt from "jsonwebtoken";
import Entidad from "../../models/users/Entidad.js";
import Rol from "../../models/users/Rol.js";
import { Op } from "sequelize";
class EntidadController {
  async getAll(req, res) {
    const entidades = await Entidad.findAll({
      include: { model: Rol, attributes: ["id", "nombre"] },
    });
    return res.status(200).json(entidades);
  }
  async getAllDashboard(req, res) {
    const entidades = await Entidad.findAll({
      where: {
        RolId: {
          [Op.ne]: 4, //ne => Not Equal
        },
      },
      include: { model: Rol, attributes: ["id", "nombre"] },
    });
    return res.status(200).json(entidades);
  }
  async UpdateRol(req, res) {
    const { id, rolId } = req.body;
    const rol = await Rol.findOne({ where: { id: rolId } });
    if (!rol) return res.status(400).json({ message: "Rol no valido" });
    const entidad = await Entidad.update({ RolId: rolId }, { where: { id } });
    return res.status(200).json({ message: "nuevo rol -> " + rol.nombre });
  }
  async getById(req, res) {
    const { id } = req.params;
    if (!id) return res.status(400).json({ message: "id no proporcionado" });
    const entidad = await Entidad.findOne({
      where: { id },
      include: { model: Rol, attributes: ["id", "nombre"] },
    });
    if (entidad) {
      return res.status(200).json(entidad);
    }
    return res.status(404).json({ message: "Entidad no encontrada" });
  }
  async create(req, res) {
    const userId = req.userId;
    const {
      nombre,
      apellido,
      documento,
      direccion,
      telefono,
      email,
      password,
      RolId,
      id_tipoEntidad,
    } = req.body;
    //verifica si el cliente ya existe, esto lo busca a partir del documento
    const entidadExiste = await Entidad.findOne({ where: { documento } });
    if (entidadExiste) {
      //veficia si esta consulta viene website o dashboard administrativo.
      //si viene de website no tendra un userId que basicamente seria id del usuario auth que genere la consulta desde el dashboard
      if (!userId && !entidadExiste.verifiedWebsite) {
        const entidad = await Entidad.update(
          {
            nombre,
            apellido,
            direccion,
            telefono,
            email,
            password,
            verifiedWebsite: true,
            RolId: 1,
          },
          { where: { id: entidadExiste.id } }
        );
        return res.status(200).json(entidad);
      } else {
        return res.status(400).json({ message: "Entidad ya existe" });
      }
    } else {
      if (!userId) {
        const entidad = await Entidad.create({
          nombre,
          apellido,
          documento,
          direccion,
          telefono,
          email,
          password,
          verifiedWebsite: true,
          RolId: 4,
        });
        return res.status(200).json(entidad);
      } else {
        const ROL = await Rol.findOne({ where: { id: RolId } });
        if (!ROL) return res.status(400).json({ message: "Rol no valido" });
        const entidad = await Entidad.create({
          nombre,
          apellido,
          documento,
          direccion,
          telefono,
          email: "",
          password: "",
          verifiedWebsite: false,
          RolId: ROL.id,
          TipoEntidadId: id_tipoEntidad,
        });
        return res.status(200).json(entidad);
      }
    }
  }
  async update(req, res) {
    const { id } = req.params;
    if (!id) return res.status(400).json({ message: "id no proporcionado" });
    const { nombre, documento, direccion, telefono, email, password, RolId } =
      req.body;
    const entidad = await models.Entidad.findOne({ where: { id } });
    if (entidad) {
      entidad.nombre = nombre;
      entidad.documento = documento;
      entidad.direccion = direccion;
      entidad.telefono = telefono;
      entidad.email = email;
      entidad.password = password;
      entidad.RolId = RolId;
      await entidad.save();
      return res.status(200).json(entidad);
    }
    return res.status(404).json({ message: "Entidad no encontrada" });
  }
  async delete(req, res) {
    const { id } = req.params;
    if (!id) return res.status(400).json({ message: "id no proporcionado" });
    const entidad = await models.Entidad.findOne({ where: { id } });
    if (entidad) {
      await entidad.destroy();
      return res.status(200).json({ message: "Entidad eliminada" });
    }
    return res.status(404).json({ message: "Entidad no encontrada" });
  }
  async validate(req, res) {
    const { token } = req.body;
    try {
      const decoded = jwt.verify(token, process.env.SECRET_KEY);

      const entidad = await Entidad.findOne({
        where: { id: decoded.id },
        include: {
          model: Rol,
          attributes: ["id", "nombre"],
        },
      });
      if (!entidad) {
        return res.status(200).json({ error: "USUARIO NO ENCONTRADO" });
      }
      return res
        .status(200)
        .json({ estado: true, rol: entidad.Rol.nombre, user: entidad });
    } catch (error) {
      return res.status(200).json({ error });
    }
  }
  async login(req, res) {
    const { email, password } = req.body;
    try {
      const EntidadEncontrada = await Entidad.findOne({
        where: { email },
        include: { model: Rol, attributes: ["id", "nombre"] },
      });
      if (!EntidadEncontrada) {
        return res.status(404).json({ message: "Entidad not found" });
      }
      console.log(EntidadEncontrada);
      const resultado = await Entidad.comparePassword(
        password,
        EntidadEncontrada.password
      );
      console.log(resultado);
      if (resultado) {
        console.log(process.env.SECRET_KEY);
        const token = jwt.sign(
          { id: EntidadEncontrada.id },
          process.env.SECRET_KEY,
          {
            expiresIn: 86400,
          }
        );
        return res
          .status(200)
          .json({ token: token, usuario: EntidadEncontrada });
      } else {
        return res.status(400).json({ message: resultado });
      }
    } catch (error) {
      return res.status(400).json({ errorMessage: error });
    }
  }
}

export default new EntidadController();
