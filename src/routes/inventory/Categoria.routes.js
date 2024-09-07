import { Router } from "express";
import CategoriaService from "../../services/inventory/CategoriaService.js";

export const CategoriaRouter = Router();

CategoriaRouter.get("", CategoriaService.GetAll);
CategoriaRouter.get("/paged", CategoriaService.GetAllPaged);
CategoriaRouter.get("/:id", CategoriaService.GetById);
CategoriaRouter.post("", CategoriaService.Save);
CategoriaRouter.post("/saves", CategoriaService.SavesAll);
CategoriaRouter.get("/subs/:id", CategoriaService.SubCategoriaBelongs);
CategoriaRouter.put("/:id", CategoriaService.Update);
CategoriaRouter.delete(":id", CategoriaService.Delete);

export default CategoriaRouter;