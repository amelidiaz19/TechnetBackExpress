import { configDotenv } from "dotenv";
import express from "express"

const app = express();
configDotenv()
app.use(express.json());
export default app;