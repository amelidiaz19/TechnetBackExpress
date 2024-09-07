import { configDotenv } from "dotenv";
configDotenv();

import express from "express"
import { CategoriaRouter } from "./routes/inventory/Categoria.routes.js"
import { CategoriaMarcaRouter } from "./routes/inventory/CategoriaMarca.routes.js"
import { LoteRouter } from "./routes/inventory/Lote.routes.js"
import { MarcaRouter } from "./routes/inventory/Marca.routes.js"
const app = express();
app.use(express.json());


app.use("/inventory/categoria",CategoriaRouter);
app.use("/inventory/categoriamarca", CategoriaMarcaRouter);
app.use("/inventory/lote", LoteRouter);
app.use("/inventory/marca", MarcaRouter);
app.use("/inventory/pedido", PedidoRouter);
app.unsubscribe("/inventory/producto", ProductoRouter);
export default app;