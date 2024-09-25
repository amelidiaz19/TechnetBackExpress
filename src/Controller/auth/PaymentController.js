import axios from "axios";
import crypto from "crypto";
class PaymentController {
  async externarData(req, res) {
    const body = req.body;
    const username = "80203493";
    const password =
      "prodpassword_I0lABqAE4l2jQ99mWMfUldMYB7TvugGErPaSC9vYr7rnM";
    const url =
      "https://api.micuentaweb.pe/api-payment/V4/Charge/CreatePayment";

    const encodeCredentials = (username, password) => {
      const auth = `${username}:${password}`;
      return Buffer.from(auth).toString("base64");
    };
    const encodedCredentials = encodeCredentials(username, password);
    try {
      const response = await axios.post(url, body, {
        headers: {
          "Content-Type": "application/json",
          Authorization: `Basic ${encodedCredentials}`,
        },
      });
      const formToken = response.data.answer.formToken;
      return res.status(200).json({ formToken });
    } catch (error) {
      console.error("Error posting external data", error);
      res.status(500).json({ error: "Failed to post external data" });
    }
  }
  async validate(req, res) {
    const { clientAnswer, hash } = req.body;
    const paymentHash = "uMYYm2KkOCwfCN2iBouF4BGWfHIDkmK6kAG1RLwiw4zgk";
    let response = {};
    try {
      const answerJson = JSON.stringify(clientAnswer);
      const computeHash = crypto
        .createHmac("sha256", paymentHash)
        .update(answerJson)
        .digest("hex");
      if (hash == computeHash) {
        response = { Status: true };
      } else {
        response = { Status: false };
      }
      return res.status(200).json(response);
    } catch (error) {
      response.Status = false;
      console.error("Error validating payload", error);
      return res.status(500).json(response); // Handle any errors and return 500
    }
  }
  async ipn(req, res) {
    const { "kr-answer": krAnswer, "kr-hash": krHash } = req.body; // Extraer kr-answer y kr-hash del cuerpo de la solicitud
    const paymentHash = "uMYYm2KkOCwfCN2iBouF4BGWfHIDkmK6kAG1RLwiw4zgk"; // Obtener el payment_hash de las variables de entorno

    let response = {};

    try {
      // Convertir krAnswer a una cadena JSON
      const answerJson = JSON.stringify(krAnswer);

      // Calcular el hash HMAC SHA-256
      const computedHash = crypto
        .createHmac("sha256", paymentHash) // Crear HMAC usando SHA-256 y el payment_hash
        .update(answerJson) // Actualizar con el JSON del krAnswer
        .digest("hex"); // Obtener el hash en formato hexadecimal

      // Comparar el hash calculado con el kr-hash del payload
      if (krHash === computedHash) {
        response.Status = true;
        return res.status(200).json(response); // Retornar 200 OK con status true
      } else {
        response.Status = false;
        return res.status(500).json(response); // Retornar 500 con status false
      }
    } catch (error) {
      response.Status = false;
      console.error("Error en el IPN", error);
      return res.status(500).json(response); // Manejar cualquier error y retornar 500
    }
  }
}

export default new PaymentController();
