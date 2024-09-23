import { Router } from "express";
import CategoriaMarcaService from "../../Controller/inventory/CategoriaMarcaService.js";

export const CategoriaMarcaRouter = Router();

CategoriaMarcaRouter.get("", CategoriaMarcaService.GetAll);
CategoriaMarcaRouter.get("/paged", CategoriaMarcaService.GetAllPaged);
CategoriaMarcaRouter.get("/:id", CategoriaMarcaService.GetById);
CategoriaMarcaRouter.post("", CategoriaMarcaService.Save);
CategoriaMarcaRouter.post("/saves", CategoriaMarcaService.SavesAll);
CategoriaMarcaRouter.put("/:id", CategoriaMarcaService.Update);
CategoriaMarcaRouter.delete("/:id", CategoriaMarcaService.Delete);

export default CategoriaMarcaRouter;