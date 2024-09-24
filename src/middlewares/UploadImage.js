import multer from "multer";
import fs from "fs";
import path from "path";

const uploadDir = "./public/uploads";

// Verificar si el directorio existe, si no, crearlo
if (!fs.existsSync(uploadDir)) {
  fs.mkdirSync(uploadDir, { recursive: true });
}
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./public/uploads");
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + "-" + file.originalname.replace(/\s+/g, ""));
  },
});

const upload = multer({ storage });

export default upload;
