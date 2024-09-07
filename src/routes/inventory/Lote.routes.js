import { Router } from "express";
import LoteService from "../../services/inventory/LoteService.js";

export const LoteRouter  = Router();

LoteRouter.get("", LoteService.GetAll);
LoteRouter.get("/:id", LoteService.GetById);
LoteRouter.post("", LoteService.Save);
LoteRouter.put("/:id", LoteService.Update);
LoteRouter.delete("/:id", LoteService.Delete);

export default LoteRouter;
