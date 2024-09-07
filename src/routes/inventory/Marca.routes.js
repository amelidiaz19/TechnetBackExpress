import { Router } from "express";
import MarcaService from "../../services/inventory/MarcaService.js";

export const MarcaRouter = Router();

MarcaRouter.get("", MarcaService.GetAll);
MarcaRouter.get("/paged", MarcaService.GetAllPaged);
MarcaRouter.get("/:id", MarcaService.GetById);
MarcaRouter.post("", MarcaService.Save);
MarcaRouter.post("/saves", MarcaService.SavesAll);
MarcaRouter.put("/:id", MarcaService.Update);
MarcaRouter.get("/subs/:id", MarcaService.Belongs);
MarcaRouter.delete("/:id", MarcaService.Delete);


export default MarcaRouter;